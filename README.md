# Transmutr

**Transmutr** is a custom ETL (Extract, Transform, Load) project designed to streamline the processing of data files and generate comprehensive Excel reports. This repository contains scripts that efficiently handle large datasets by extracting data from multiple sources, transforming and cleaning the data, computing essential metrics, and loading the final output into structured Excel workbooks with detailed comparisons and calculated differences.

## Key Features

- **Efficient Data Handling:**  
  Processes extensive CSV files in manageable chunks, optimizing memory usage and ensuring smooth performance even with large datasets.

- **Smart Data Transformation:**  
  Automatically renames columns based on predefined mappings, enriches data with calculated fields like *Dimmed* and *Billed_Weight*, and breaks down complex dimension strings into individual length, width, and height components.

- **Comprehensive Data Consolidation:**  
  Integrates data from various sources, identifies baseline datasets, and meticulously computes differences to highlight key variances between baseline and other datasets.

- **Automated Excel Reporting:**  
  Generates detailed Excel reports with multiple sheets, incorporating comparison data and dynamic formulas for essential metrics. The reports feature clear formatting, dynamic column widths, and consistent styling for easy analysis.

- **Performance Monitoring:**  
  Utilizes decorators to measure and display the execution time of critical functions, ensuring the ETL pipeline remains efficient and responsive.

- **User-Friendly Configuration:**  
  Offers straightforward setup with easily configurable input and output directories, and gracefully handles potential data inconsistencies to provide a seamless user experience.

# Setup Steps
![](https://github.com/DataWzard/Transmutr/blob/main/Steps%20list.jpg)

# Issue: 
### Exception raised when attempting to seek a closed file in ZipFile
```
Exception:
 Traceback (most recent call last):
   File "C:\path\to\python\Lib\zipfile\__init__.py", line 1940, in __del__
     self.close()`
   `File "C:\path\to\python\Lib\zipfile\__init__.py", line 1957, in close
     self.fp.seek(self.start_dir)
 ValueError: seek of closed file
```

 Explanation:
 This exception occurs when the `ZipFile` object tries to seek within a file that has already been closed.
 It typically happens when the file is deleted or closed prematurely, before completing the file operations.
 This can be caused by:
 - Interruptions during file handling
 - Resource management issues, such as processing large data without proper cleanup

 Solution:
 Ensure the `ZipFile` object is explicitly closed before it is deleted to prevent the `seek of closed file` error.
 * If the issue persists, try shutting down the kernel and restarting it.
   * *This can help resolve any lingering memory or resource issues that might be affecting the file handling.*
