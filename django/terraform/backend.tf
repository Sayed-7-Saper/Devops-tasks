terraform {
  backend "s3" {
    bucket = "mybucket-in-aws-acount" // name of bucket created
    key    = "terraform.tfstate "  //"path/to/my/key" // path wount to save file
    region = "us-east-1" //region you create bucket their
    //Name of DynamoDB Table to use for state locking and consistency. The table must have a partition key named LockID with type of String. If not configured, state locking will be disabled
    dynamodb_table = "sprintstest" //name of Dynamodb and  add LockID inside in partition key
    // i used to solve proplem to when more one work in state file in at time  (lock)
  }
}
