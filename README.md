# Project Overview

This document provides an overview of my academic and professional projects, focusing on my experience in wireless networks, AI/ML applications, and energy-efficient network management. It aims to showcase my skills and practical background in preparation for my master's thesis.

## Table of Contents

- [Project Overview](#project-overview)
  - [Table of Contents](#table-of-contents)
  - [1. Academic Projects](#1-academic-projects)
    - [1.1 Pilot Contamination Analysis in Massive MIMO Systems (2016, Bachelor Thesis)](#11-pilot-contamination-analysis-in-massive-mimo-systems-2016-bachelor-thesis)
    - [1.2 Gaussian Distribution Analysis and System Modeling for Signal Detection(2024)](#12-gaussian-distribution-analysis-and-system-modeling-for-signal-detection2024)
    - [1.3 Wiener Filtering-Based Key Recovery for Encrypted Images and Fault Tolerance Analysis in Communication Systems (2024)](#13-wiener-filtering-based-key-recovery-for-encrypted-images-and-fault-tolerance-analysis-in-communication-systems-2024)
    - [1.4 Cross-Regional Remote Access Network Solution (2025)](#14-cross-regional-remote-access-network-solution-2025)
    - [1.5 Machine Learning-Based Network KPI Prediction and Anomaly Detection System (Oct-Dec 2025)](#15-machine-learning-based-network-kpi-prediction-and-anomaly-detection-system-oct-dec-2025)
  - [2. Professional / Work Projects](#2-professional--work-projects)
    - [2.1 City-scale Educational Metropolitan Area Network (2017-2020)](#21-city-scale-educational-metropolitan-area-network-2017-2020)
    - [2.2 Cloud-based Interactive Teaching System Support (2021)](#22-cloud-based-interactive-teaching-system-support-2021)
    - [2.3 Educational Hybrid Cloud Services Architecture and Migration (2022)](#23-educational-hybrid-cloud-services-architecture-and-migration-2022)

## 1. Academic Projects

### 1.1 Pilot Contamination Analysis in Massive MIMO Systems (2016, Bachelor Thesis)

- **Tech Stack:** MATLAB, System Modeling, Monte Carlo Simulation, Wireless Communication Theory
- **Summary:**  
  This project explores pilot contamination in multi-cell Massive MIMO systems, one of the key technical challenges in the early development of 5G. The goal was to understand how system capacity is affected when the number of base station antennas increases significantly.
- **Project highlights:**
  - **System Modeling:** Built a multi-cell, multi-user Massive MIMO system model and derived the mathematical expressions for channel capacity and SINR in both uplink and downlink.
  - **Algorithm Simulation & Comparison:** Conducted Monte Carlo simulations in a standard 7-cell layout to compare the performance of MRC, ZF, and MMSE receivers in mitigating pilot contamination. Results showed that MMSE performs best.
  - **Scaling Law Analysis:** Studied how key parameters such as antenna count, transmission power, number of users, and number of cells affect system performance, providing guidance for practical network deployment.
  - **Solution Exploration:** Investigated advanced mitigation techniques such as power control and intelligent pilot allocation, demonstrating a system-level understanding of interference management.
- **Relevance to AI/ML for RAN Energy Optimization:**  
  This project gave me a deep understanding of wireless resource management and interference coordination—fundamental concepts behind techniques like intelligent power control and cell sleeping in energy-efficient RAN design.
  ![Picture 1](./pictures/Picture%201.png)

### 1.2 Gaussian Distribution Analysis and System Modeling for Signal Detection(2024)

- **Tech Stack:** MATLAB, Probability Theory, Statistical Estimation, Signal Processing, System Modeling
- **Summary:**  
  Conducted theoretical derivations and simulations to analyze the statistical characteristics of Gaussian distributions and their applications in communication system modeling.
- **Project Highlights:**
  - Completed parameter estimation, conditional distribution derivation, and spectrum analysis of Gaussian signals.
  - Strengthened my foundation in statistical modeling and data analysis.
- **Relevance:**  
This project strengthened my mathematical foundation in probability, noise modeling, and distribution estimation, which are all essential when building reliable machine learning models for network performance prediction and anomaly detection.
<div align="center">

| ![Picture 2-1](./pictures/Picture%202-1.png) | ![Picture 2-2](./pictures/Picture%202-2.png) | ![Picture 2-3](./pictures/Picture%202-3.png) |
| :------------------------------------------: | :------------------------------------------: | :------------------------------------------: |
| ![Picture 2-4](./pictures/Picture%202-4.png) | ![Picture 2-5](./pictures/Picture%202-5.png) | ![Picture 2-6](./pictures/Picture%202-6.png) |
| ![Picture 2-7](./pictures/Picture%202-7.png) | ![Picture 2-8](./pictures/Picture%202-8.png) | ![Picture 2-9](./pictures/Picture%202-9.png) |

</div>

### 1.3 Wiener Filtering-Based Key Recovery for Encrypted Images and Fault Tolerance Analysis in Communication Systems (2024)

- **Tech Stack:** MATLAB, Digital Communication, Wiener Filtering, Channel Equalization, Signal Detection
- **Summary:**
  Designed a digital communication receiver capable of recovering cryptographic keys from a distorted and noisy channel to decrypt images.
- **Project Highlights:**
  - Applied Wiener-Hopf equations to design an optimal FIR equalizer that minimizes mean squared error and compensates for channel distortion.
  - Conducted robustness analysis to evaluate the system’s tolerance limits, demonstrating engineering rigor.
- **Relevance:**  
This work trained me to solve signal recovery problems under uncertainty, which is similar to reconstructing clean KPIs or detecting faults from noisy network measurements — a key challenge in AI-driven RAN control.
<div align="center">

| ![Picture 3-1](./pictures/Picture%203-1.png) | ![Picture 3-2](./pictures/Picture%203-2.png) | ![Picture 3-3](./pictures/Picture%203-3.png) |

</div>

### 1.4 Cross-Regional Remote Access Network Solution (2025)

- **Tech Stack:** OpenWrt, OpenVPN, FreeRADIUS, FreeIPA/LDAP, PKI, Snort, Nextcloud, WPA3, DNSSEC
- **Summary:**  
  Designed and deployed a secure enterprise network connecting Stockholm and London for ACME Company, integrating authentication, encrypted communication, intrusion detection, and secure file-sharing for remote work.
- **Project Highlights:**
  - **System Architecture & Integration:** Led the design of a full enterprise-grade architecture combining VPN, PKI-based authentication, WPA3 wireless security, IDS, and private cloud storage.
  - **Security Protocol Implementation:** Configured MFA authentication using digital certificates and FreeRADIUS with LDAP integration, applying zero-trust network principles.
  - **Automation & Operational Reliability:** Implemented DDNS for dynamic IP handling and DNSSEC for security hardening, showing strong awareness of maintainability.
- **Relevance:**  
  A secure and resilient network infrastructure is essential for any distributed AI-driven control platform, including energy-aware RAN management systems.
  ![Picture 4](./pictures/Picture%204.png)

### 1.5 Machine Learning-Based Network KPI Prediction and Anomaly Detection System (Oct-Dec 2025)

- **Tech Stack:** Python, Pandas, Scikit-learn, TensorFlow, Jupyter Notebook
- **Summary:**  
  I will develop and evaluate machine learning models using real-world network data to predict Key Performance Indicators (KPIs) and detect anomalies for intelligent network management. The models will be designed with real-time execution in mind.
- **Project Highlights:**
  - I will execute the complete ML workflow, including data preprocessing, feature engineering, model development, and performance evaluation.
  - I will build predictive and anomaly detection models aligned with operational system traces and testbed measurements.
  - I will implement real-time functions based on the models to support intelligent network decision-making.
- **Relevance:**  
  This project will provide hands-on experience with the end-to-end ML pipeline for KPI forecasting and anomaly detection, directly matching the technical requirements of the master thesis position and demonstrating practical use of Python-based data science tools in a network context.

## 2. Professional / Work Projects

### 2.1 City-scale Educational Metropolitan Area Network (2017-2020)

- **Tech Stack:** OTN, Network Monitoring, ITSM, Situational Awareness
- **Summary:**  
  Participated in planning and deploying an educational metropolitan backbone network covering the entire city, connecting two core data centers and ten regional nodes, providing high speed, reliable connectivity for digital applications.
- **Project Highlights:**
  - **Large-scale Network Planning:** Deeply involved in using OTN technology to build a city-wide backbone network supporting access for 1800 schools.
  - **Intelligent Operations & Maintenance:** Deployed a real-time network situational awareness platform and ITSM system for proactive monitoring and efficient fault management, ensuring SLA compliance.
- **Relevance:**  
  This project laid the foundation for all subsequent cloud and application deployments, demonstrating the ability to design scalable, high-performance networks, which are essential for AI-driven energy optimization.

### 2.2 Cloud-based Interactive Teaching System Support (2021)

- **Tech Stack:** 5G Network Slicing, VLAN, Real-time Monitoring
- **Summary:**  
  Provided high-reliability network support for online interactive teaching across 19 schools and 33 classrooms, ensuring uninterrupted teaching during the pandemic.
- **Project Highlights:**
  - **Business-Level Network Assurance:** Implemented VLAN segmentation and 5G network slicing to achieve seamless, reliable switching between wired and wireless networks, directly improving end-user experience.
  - **Real-time Performance Monitoring:** Developed a monitoring platform to analyze teaching system performance in real time with visual dashboards for proactive issue detection and resolution.
- **Relevance:**  
  This project demonstrated the ability to deliver stable, scalable, and reliable network infrastructure, a prerequisite for deploying AI-based network optimization solutions.
  ![Picture 7](./pictures/Picture%207.png)

### 2.3 Educational Hybrid Cloud Services Architecture and Migration (2022)

- **Tech Stack:** Hybrid Cloud, SDN, Cloud Computing, Cloud Containers
- **Summary:**  
  Led the design and delivery of a hybrid cloud platform integrating SDN concepts, migrating 60 core applications from traditional data centers to the cloud based on the existing MAN.
- **Project Highlights:**
  - **Technical Selection & Architecture Design:** Designed a hybrid cloud solution leveraging SDN for flexible compute scheduling and intelligent traffic management.
  - **Successful Cloud Migration:** Managed large-scale application migration, achieving a 20% improvement in data center resource utilization, demonstrating energy and cost efficiency.
  - **Security Enhancement:** Implemented cloud containers to improve overall platform security.
- **Relevance:**  
  This project represents a key step in cloud-network integration, transforming robust network capabilities into flexible, AI-manageable cloud resources, which are directly related to energy-efficient network operations.
  ![Picture 8](./pictures/Picture%208.png)
