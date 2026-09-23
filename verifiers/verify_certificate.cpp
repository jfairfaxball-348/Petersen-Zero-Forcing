// Standalone containment verifier. No closure simulation, producer imports,
// solver, or experimentally inferred transitions are used.
#include <algorithm>
#include <array>
#include <fstream>
#include <iostream>
#include <map>
#include <set>
#include <stdexcept>
#include <string>
#include <tuple>
#include <utility>
#include <vector>
using Vertex = std::pair<int,int>;
using Shape = std::set<Vertex>;
void require(bool ok, const char* message) {
    if (!ok) throw std::runtime_error(message);
}
bool adjacent(Vertex a, Vertex b) {
    if (a.second != b.second) return a.first == b.first;
    return std::abs(a.first-b.first) == (a.second == 0 ? 1 : 3);
}
Shape translate(const Shape& s, int shift) {
    Shape out;
    for (auto [x,t]:s) out.emplace(x+shift,t);
    return out;
}
bool touches(const Shape& a, const Shape& b) {
    for (auto x:a) for (auto y:b) if (x==y || adjacent(x,y)) return true;
    return false;
}
int main(int argc, char** argv) {
  try {
    require(argc==2, "usage: verify_certificate certificate.txt");
    std::ifstream in(argv[1]);
    std::string magic; int budget, count, merge_count;
    in >> magic >> budget >> count >> merge_count;
    require(magic=="PETERSEN_MERGE_CERTIFICATE_V1", "bad header");
    require(budget==7 && count==38 && merge_count>0, "bad dimensions");
    std::vector<Shape> shapes(count);
    std::vector<int> costs(count), spans(count);
    std::array<int,8> maxima{}, counts{}, max_spans{};
    for (int j=0;j<count;++j) {
        int id,k,m; in >> id >> k >> m;
        require(bool(in) && id==j && k>=1 && k<=7 && m>=1 && m<=16, "bad shape row");
        costs[j]=k;
        for (int z=0;z<m;++z) {
            int x,t; in >> x >> t;
            require(bool(in) && x>=0 && x<=18 && (t==0 || t==1), "bad vertex");
            require(shapes[j].emplace(x,t).second, "duplicate vertex");
        }
        const Shape& s=shapes[j];
        require(s.begin()->first==0, "shape not normalized");
        spans[j]=s.rbegin()->first;
        require(spans[j]<=3*(k-1), "span bound failed");
        for (auto [x,t]:s) {
            int step=t==0 ? 1:3;
            int blue_neighbors=int(s.count({x-step,t}))+int(s.count({x+step,t}))+int(s.count({x,1-t}));
            require(blue_neighbors!=2, "shape is not closed");
        }
        Shape reached{*s.begin()}; bool changed=true;
        while (changed) {
            changed=false;
            for (auto x:s) if (!reached.count(x)) {
                for (auto y:reached) if (adjacent(x,y)) {
                    reached.insert(x); changed=true; break;
                }
            }
        }
        require(reached==s, "shape is not connected");
        for (int z=0;z<j;++z) require(s!=shapes[z], "duplicate shape");
        maxima[k]=std::max(maxima[k],m); ++counts[k];
        max_spans[k]=std::max(max_spans[k],spans[j]);
    }
    for (int t=0;t<2;++t) {
        bool exists=false;
        for (int j=0;j<count;++j) if (costs[j]==1 && shapes[j]==Shape{{0,t}}) exists=true;
        require(exists,"missing singleton");
    }
    using Key=std::tuple<int,int,int>;
    std::map<Key,std::pair<int,int>> entries;
    for (int z=0;z<merge_count;++z) {
        int a,b,t,c,q; in >> a >> b >> t >> c >> q;
        require(bool(in) && a>=0 && a<count && b>=0 && b<count && c>=0 && c<count, "bad merge row");
        require(t>=-21 && t<=21 && q>=-40 && q<=40, "bad translation");
        require(entries.emplace(Key{a,b,t},std::make_pair(c,q)).second, "duplicate merge row");
    }
    std::string extra; require(!(in >> extra), "unexpected trailing data");
    int checked=0;
    for (int a=0;a<count;++a) for (int b=0;b<count;++b) {
        if (costs[a]+costs[b]>budget) continue;
        // This interval contains every integer shift permitting overlap or an edge.
        for (int t=-spans[b]-3;t<=spans[a]+3;++t) {
            Shape shifted=translate(shapes[b],t);
            if (!touches(shapes[a],shifted)) continue;
            auto it=entries.find(Key{a,b,t});
            require(it!=entries.end(),"missing touching merge");
            auto [c,q]=it->second;
            require(costs[c]<=costs[a]+costs[b],"merge exceeds budget");
            Shape target=translate(shapes[c],q);
            for (auto v:shapes[a]) require(target.count(v),"left shape not contained");
            for (auto v:shifted) require(target.count(v),"right shape not contained");
            ++checked;
        }
    }
    require(checked==merge_count,"unused or extraneous merge row");
    std::array<int,8> partition_bound{};
    for (int k=1;k<=7;++k) for (int j=1;j<=k;++j)
        partition_bound[k]=std::max(partition_bound[k],partition_bound[k-j]+maxima[j]);
    require(partition_bound[7]==16,"global bound failed");
    int cutoff=*std::max_element(spans.begin(),spans.end())+4;
    require(cutoff==22,"unexpected cutoff");
    std::cout << "{\"status\":\"passed\",\"shapes\":" << count
              << ",\"ordered_touching_merges\":" << checked
              << ",\"uniform_n_at_least\":" << cutoff
              << ",\"seven_seed_bound\":" << partition_bound[7]
              << ",\"rows\":[";
    for (int k=1;k<=7;++k) {
        if (k>1) std::cout << ',';
        std::cout << "{\"cost\":" << k << ",\"shapes\":" << counts[k]
                  << ",\"max_size\":" << maxima[k] << ",\"max_span\":" << max_spans[k]
                  << ",\"partition_bound\":" << partition_bound[k] << '}';
    }
    std::cout << "]}\n";
    return 0;
  } catch (const std::exception& e) {
    std::cerr << e.what() << '\n'; return 1;
  }
}
