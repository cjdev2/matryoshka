# matryoshka
A repository of common, opinionated CloudFormation templates, designed to be used as nested stacks.

## To Use
### First-Time Setup
If you're working from scratch, run `provision/deploy-template-store.sh` to spin up the template store.

Then, if you want to use the existing templates in `/templates`, run `sync-templates-to-s2.sh`, you can begin using them in your templates as nested stacks, vis a vis [the docs.](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html)

### Changing / Adding templates
Make changes to the templates, then run `sync-templates-to-s2.sh` when you're ready to make those changes available.

If you add a template, the filename should take the form `what-this-template-describes_v1.yaml`

Please be mindful of the versioning scheme--if you make a breaking change (i.e. changing required parameters / removing resources), or you're just not sure, increment the file version.

## External Resources

[Deploying Microservices with Amazon ECS, AWS CloudFormation, and an Application Load Balancer](https://github.com/aws-samples/ecs-refarch-cloudformation)
