terraform {
backend "gcs"{
    bucket = "my-tf1-state-bucket"
    prefix = "state"
}
}