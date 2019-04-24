# bq-table-copy-automation
Bash script to read a mapping Yaml file & copy table from one dataset to another dataset for Google [BigQuery](https://cloud.google.com/bigquery/)

## Working on

- Linux
- OSX

## Getting Started

### Prerequisites
1. [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstart-linux)
2. Make sure that [Python](https://www.python.org/downloads/) 2.7 is installed on your system: 
    >`python -V`
3. Initialize the GCloud [SDK](https://cloud.google.com/sdk/gcloud/reference/init).

### Usage

1. Copy the `yaml_parser.sh`, `mapping.yaml` & `bq_cp_util.sh` files locally/on the server where gcloud is installed & [authenticated](https://cloud.google.com/sdk/gcloud/reference/init).

```console
wget https://github.com/khichar-anil/bq-table-copy-automation/blob/master/yaml_parser.sh
wget https://github.com/khichar-anil/bq-table-copy-automation/blob/master/mapping.yaml
wget https://github.com/khichar-anil/bq-table-copy-automation/blob/master/bq_cp_util.sh
```

2. Modify the `mapping.yaml ` as per your source & target datasets.
`mapping.yaml `

    | Yaml Attribute | Sample Value | Description  |
    | ------|------------| ------------ |
    | sourceProjectId | source-project | Source table gcp project id. |
    | targetProjectId | target-project | Source table gcp project id. Source & target project Ids can be same, if we want to copy table withing same project. |
    | sourceDataset | source_ds | Source table BQ dataset name.|
    | targetDataset | target_ds | Source BQ dataset name. Source & target dataset can be same, if we want to copy table withing same dataset. |
    | tables > source | source_tbl_1 |  Source table name. |
    | tables > target | target_tbl_1 | Source table name. |

3. >`./bq_cp_util.sh`

## Credits

- This project was started based on yaml parser [here](https://github.com/jasperes/bash-yaml/blob/master/script/yaml.sh)
- [bigquery_copy_table-cli](https://cloud.google.com/bigquery/docs/managing-tables#bigquery_copy_table-cli)
