#include <array>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <vector>

// A bounded selection-stage screen, not a proof of the infinite conjecture.
// Vertex labels: u_i = i, v_i = n+i; 7 <= n <= 31.
using U = uint64_t;

U closure(U blue, const std::vector<U>& adj) {
    while (true) {
        U old = blue;
        for (U active = blue; active; active &= active-1) {
            int v = __builtin_ctzll(active);
            U white = adj[v] & ~blue;
            if (white && !(white & (white-1))) blue |= white;
        }
        if (old == blue) return blue;
    }
}

void vertices(U mask) {
    bool comma = false;
    std::cout << '[';
    while (mask) {
        if (comma) std::cout << ',';
        std::cout << __builtin_ctzll(mask);
        comma = true;
        mask &= mask-1;
    }
    std::cout << ']';
}

int main() {
    const std::array<int,18> sizes{13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
    std::cout << "[\n";
    bool first = true;
    for (int n : sizes) {
        auto start = std::chrono::steady_clock::now();
        std::vector<U> adj(2*n,0);
        auto edge = [&](int u,int v) { adj[u] |= U(1)<<v; adj[v] |= U(1)<<u; };
        for (int i=0;i<n;i++) {
            edge(i,(i+1)%n);
            edge(i,n+i);
            edge(n+i,n+(i+3)%n);
        }
        for (U a : adj) if (__builtin_popcountll(a)!=3) return 2;
        U all = (U(1)<<(2*n))-1;
        uint64_t tested=0;
        int maximum=0;
        U maximizer=0;
        bool found=false;
        // Any forcing 7-set has a first force. Rotate its source to u_0 or v_0.
        // That source and two of its three neighbors are in the initial set.
        for (int source : {0,n}) {
            std::vector<int> nei;
            for (int v=0;v<2*n;v++) if ((adj[source]>>v)&1) nei.push_back(v);
            for (int i=0;i<3;i++) for (int j=i+1;j<3;j++) {
                if (found) continue;
                U base = (U(1)<<source)|(U(1)<<nei[i])|(U(1)<<nei[j]);
                std::vector<int> rest;
                for (int v=0;v<2*n;v++) if (!((base>>v)&1)) rest.push_back(v);
                int m=rest.size();
                for (int a=0;a<m-3 && !found;a++)
                for (int b=a+1;b<m-2 && !found;b++)
                for (int c=b+1;c<m-1 && !found;c++)
                for (int d=c+1;d<m && !found;d++) {
                    U seed=base|(U(1)<<rest[a])|(U(1)<<rest[b])|(U(1)<<rest[c])|(U(1)<<rest[d]);
                    U closed=closure(seed,adj);
                    ++tested;
                    int count=__builtin_popcountll(closed);
                    if (count>maximum) { maximum=count; maximizer=seed; }
                    if (closed==all) found=true;
                }
            }
        }
        if (!first) std::cout << ",\n";
        first=false;
        double seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
        std::cout << "{\"n\":" << n << ",\"tested_with_duplicates\":" << tested
                  << ",\"seven_set_found\":" << (found?"true":"false")
                  << ",\"complete_reduced_scan\":" << (found?"false":"true")
                  << ",\"maximum_closure_in_scan\":" << maximum
                  << ",\"maximizing_seed\":";
        vertices(maximizer);
        std::cout << ",\"closure\":";
        vertices(closure(maximizer,adj));
        std::cout << ",\"seconds\":" << seconds << '}' << std::flush;
    }
    std::cout << "\n]\n";
}
