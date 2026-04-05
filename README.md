# Parallel Image Compression

A high-performance image compression system using **Discrete Cosine Transform (DCT)** with **OpenMP** parallelization, implemented in C++.

## Overview

This project compresses grayscale images by distributing pixel-block processing across multiple CPU cores. It combines classical image processing techniques (DCT + quantization) with shared-memory parallelism via OpenMP, and benchmarks parallel vs. serial execution for comparison.

## Features

- Parallel DCT-based image compression using OpenMP
- Quantization and dequantization pipeline
- Zero-padding to handle arbitrary image dimensions (pads to multiples of 8×8)
- Serial vs. parallel output comparison with pixel-level accuracy reporting
- Built-in timing instrumentation per pipeline stage
- Supports images of varying sizes

## Pipeline

```
Input Image
    │
    ▼
Grayscale Conversion  ←─ parallel
    │
    ▼
Zero Padding (to 8×8 multiples)
    │
    ▼
DCT (8×8 blocks)      ←─ parallel
    │
    ▼
Quantization          ←─ parallel
    │
    ▼
Dequantization        ←─ parallel
    │
    ▼
Inverse DCT           ←─ parallel
    │
    ▼
Compressed Image Output
```

