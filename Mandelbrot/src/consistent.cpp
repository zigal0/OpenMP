//
// Created by zigal0 on 01.10.2021.
//

#include <iostream>
#include <fstream>
#include <vector>
#include <complex>
#include <chrono>

typedef std::vector<int> Array1D;
typedef std::vector<Array1D> Array2D;
typedef std::vector<Array2D> Image;

// set color for point
void mandelbrot(std::complex<double> c, std::vector<int> &pixel) {
    int max_iteration = 100, iteration = 0;
    std::complex<double> z(0, 0);

    while (abs(z) <= 2 && (iteration < max_iteration)) {
        z = z * z + c;
        iteration++;
    }

    if (iteration != max_iteration) {
        double t = (double) iteration / (double) max_iteration;
        int r = (int) (9 * (1 - t) * t * t * t * 255);
        int g = (int) (15 * (1 - t) * (1 - t) * t * t * 255);
        int b = (int) (8.5 * (1 - t) * (1 - t) * (1 - t) * t * 255);

        pixel = {r, g, b};
    } else {
        pixel = {0, 0, 0};
    }
}

int main() {
    int width = 10000, height = 10000;

    // Image data structure:
    // - for each pixel we need red, green, and blue values (0-255)
    // - using 3 matrices for every channel
    int channels = 3; // red, green, blue
    Image image(channels, Array2D(height, Array1D(width)));

    std::vector<int> pixel = {0, 0, 0}; // red,green,blue (each range 0-255)
    std::complex<double> c;


    auto t1 = std::chrono::steady_clock::now();

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            c = std::complex<double>(2.0 * ((double) j / width - 0.75), ((double) i / height - 0.5) * 2.0);

            mandelbrot(c, pixel);

            // apply to image
            for (int ch = 0; ch < channels; ch++)
                image[ch][i][j] = pixel[ch];
        }
    }


    auto t2 = std::chrono::steady_clock::now();

    // save image
    std::ofstream ofs("Consistent.ppm", std::ofstream::out);
    ofs << "P3" << std::endl;
    ofs << width << " " << height << std::endl;
    ofs << 255 << std::endl;

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            ofs << " " << image[0][i][j]
                << " " << image[1][i][j] << " "
                << image[2][i][j] << std::endl;
        }
    }
    ofs.close();

    std::cout << "Consistent execution time (without disk I/O)): " << std::chrono::duration<double>(t2 - t1).count() << std::endl;

    return 0;
}

