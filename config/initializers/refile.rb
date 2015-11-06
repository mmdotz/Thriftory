require "refile/s3"

aws = {
  access_key_id: ENV["AWS_KEY"],
  secret_access_key: ENV["AWS_KEY_SECRET"],
  region: "us-west-2",
  bucket: "dotzenrod-rails-prod",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
