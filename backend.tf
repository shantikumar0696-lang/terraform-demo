terraform {
  backend "gcs" {
    bucket = "my-tf1-state-bucket"   
    prefix = "http/assignement-2"               
  }
}

