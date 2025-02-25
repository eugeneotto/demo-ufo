# For methods, refer to the properties of the CloudFormation CodeBuild::Project https://amzn.to/2UTeNlr
# For convenience methods, refer to the source https://github.com/tongueroo/codebuild/blob/master/lib/codebuild/dsl/project.rb

# name("example-project-name") # recommend leaving unset and codebuild will use a conventional name
github_url("https://github.com/eugeneotto/demo-ufo")
linux_image("aws/codebuild/ruby:2.5.3-1.7.0")
environment_variables(
  UFO_ENV: Codebuild.env,
  UFO_APP: project_name,
)

# Some useful helpers:
# puts "project_name #{project_name}" # IE: demo-web
# puts "full_project_name #{full_project_name}" # demo-web-development

# Uncomment to enable github webhook, the GitHub oauth token needs admin:repo_hook permissions
# Refer to https://github.com/tongueroo/codebuild/blob/master/readme/github_oauth.md
triggers(webhook: true)
# Another example:
# Docs: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html
# {type: "EVENT", pattern: "PUSH"} is required
# Also, note the extra brackets: [[]] is actually the proper format. I know weird.
# triggers(
#   webhook: true,
#   filter_groups: [[{type: "HEAD_REF", pattern: "my-branch"}, {type: "EVENT", pattern: "PUSH"}]]
# )

# Shorthand to enable all local cache modes
# local_cache(true)
