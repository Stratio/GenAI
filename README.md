# Property And Casualty Benchmark With Stratio Generative AI Data Fabric

This repository consists of the necessary artifacts to execute a natural language business re-questioning benchmark using the Property and Casualty dataset.

It is composed of 3 folders:

    technical_layer: This folder contains Postgres scripts for creating a database with the Property and Casualty dataset, including both schema and data.
    business_semantic_layer: Here, the semantic layer is provided as an ontology in OWL format, business knowledge through business terms from Stratio's business glossary, and the mapping configuration between the technical_layer and the business_semantic_layer in Stratio.
    tests: This includes two tests that can be automatically executed from Stratio:
       pc_benchmark_basic.json: Corresponds to the execution of the benchmark for 11 of the most representative questions.
       pc_benchmark_complete.json: Pertains to the full benchmark execution with 44 questions.


