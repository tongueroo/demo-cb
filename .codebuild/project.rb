# For methods, refer to the properties of the CloudFormation CodeBuild::Project https://amzn.to/2UTeNlr
# For convenience methods, refer to the source https://github.com/tongueroo/codebuild/blob/master/lib/codebuild/dsl/project.rb

# name("example-project-name") # recommend leaving unset and codebuild will use a conventional name
github_url("https://github.com/tongueroo/demo-cb")
linux_image("aws/codebuild/ruby:2.5.3-1.7.0")
environment_variables(
  JETS_ENV: "test",
  # API_KEY: "ssm:/codebuild/demo/api_key" # Example of ssm parameter
)

# Some useful helpers:
# puts "project_name #{project_name}" # IE: demo-web
# puts "full_project_name #{full_project_name}" # demo-web-development

# Uncomment to enable github webhook, the GitHub oauth token needs admin:repo_hook permissions
# Refer to https://github.com/tongueroo/codebuild/blob/master/readme/github_oauth.md
# triggers(webhook: true)

# Shorthand to enable all local cache modes
# local_cache(true)