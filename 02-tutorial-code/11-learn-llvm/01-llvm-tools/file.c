void prefix_sum(int *src, int *dst, int N) {
    if (0 < N) {
        int i = 0;
        do {
            int tmp = 0;
            int j = 0;
            if (j < i) {
                do {
                    tmp += src[j];
                    j++;
                } while (j < i);
                dst[i] = tmp;
            }
            i++;
        } while (i < N);
    }
}
