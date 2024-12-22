#include <math.h>
#include <float.h>


void softmax(const double* input, int size, double* output) {
    // Find the maximum value in the input for numerical stability
    double max_val = -DBL_MAX;  // Using DBL_MAX for double precision
    for (int i = 0; i < size; ++i) {
        if (input[i] > max_val) {
            max_val = input[i];
        }
    }

    // Compute the exponentials and their sum
    double sum_exp = 0.0;
    for (int i = 0; i < size; ++i) {
        sum_exp += exp(input[i] - max_val);
    }

    // Compute the softmax output
    for (int i = 0; i < size; ++i) {
        output[i] = exp(input[i] - max_val) / sum_exp;
    }
}
