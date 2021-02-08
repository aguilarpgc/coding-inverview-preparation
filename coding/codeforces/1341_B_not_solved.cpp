#include <iostream>
#include <vector>

int main() {
    
    int t,k,n;
    scanf("%d", &t);

    std::vector<int> peaks;
    
    while (t--) {
        scanf("%d %d", &n, &k);
        
        int m[n];
        
        for (int i=0; i<n; i++) {
            scanf("%d", &m[i]);
        }
        
        for (int i=1; i<n-1; i++) {
            if((m[i] > m[i-1]) && (m[i] > m[i+1])) {
                peaks.push_back(i);
                i++;
            }
        }
        
        if (peaks.empty()) {
            printf("1 1\n");
        } else {
            int index_last_peak = peaks[0];
            int aux_num_peaks = 1;
            int max_peaks_consecutive = aux_num_peaks;
            int segment_max_lenght = k - 2;
            
//            for (int i=0; i < peaks.size() - 1; i++) {
//                if((peaks[i+1] - peaks[i]) < segment_max_lenght) {
//                    aux_num_peaks++;
//                    if (aux_num_peaks > max_peaks_consecutive) {
//                        max_peaks_consecutive = aux_num_peaks;
//                        index_last_peak = peaks[i + 1];
//                    }
//                } else {
//                    aux_num_peaks = 1;
//                }
//            }
            
            int index_first_peak = 0;
            
            for (int i = int(peaks.size()) - 1; i > 0; i--) {
                if((peaks[i] - peaks[i-1]) < segment_max_lenght) {
                    aux_num_peaks++;
                    if (aux_num_peaks >= max_peaks_consecutive) {
                        max_peaks_consecutive = aux_num_peaks;
//                        index_first_peak = peaks[i - 1];
                        index_first_peak = i - 1;
                    }
                } else {
                    aux_num_peaks = 1;
                }
            }
            
//            for (int i = 0; i < peaks.size(); i++) {
//                std::cout << peaks.at(i) << ' ';
//            }
//            std::cout<<std::endl;
            
//            for (int i=0; i < peaks.size(); i++) {
//                printf("%d ",peaks[i]);
//            }
//            printf("\n");
            
//            int l = std::max(0, index_last_peak-k+2);
            int l_aux = peaks[index_first_peak + max_peaks_consecutive - 1] - k + 2;
            int l = std::max(0, l_aux);
            
            printf("%d %d\n",max_peaks_consecutive + 1, l + 1);
        }
        
        peaks.clear();
    }
    
    return 0;
}



