provider "google"{
credentials=file("access-keys.json")
project=var.project_id
}

variable "bucket_name"{
type=string
}

variable "location_id"{
type=string
default="us-east1"
}

variable "project_id"{
type=string
}

variable "storage_class"{
type=string
}


resource "google_storage_bucket" "default"{
name=var.bucket_name
storage_class=var.storage_class
description="Bucket created using terraform"
location=var.location_id
}


resource "google_bigquery_dataset" "dataset" {
dataset_id = var.db_name
friendly_name = var.db_name
description = "This is a DB for HR Data"
location = var.location_id

labels = {
    env = "default"
  }

}