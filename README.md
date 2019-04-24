# bq-table-copy-automation
Bash script to read a mapping Yaml file & copy table from one dataset to another in google big query

## Working on

- Linux
- OSX

## Getting Started

### Usage

Step1: Copy the `yaml_parser.sh`, `mapping.yaml` & `bq_cp_util.sh` files locally or the server where you have gcloud installed & [authenticated](https://cloud.google.com/sdk/gcloud/reference/init).

Step2: Modify the `mapping.yaml `as per your source & target datasets.

Step3: 
`./bq_cp_util.sh`

## Credits

- This project was started based on yaml parser [here](https://github.com/jasperes/bash-yaml/blob/master/script/yaml.sh)
- [bigquery_copy_table-cli](https://cloud.google.com/bigquery/docs/managing-tables#bigquery_copy_table-cli)
