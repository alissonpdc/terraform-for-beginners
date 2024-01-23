# terraform-for-beginners
Educational Terraform projects implementing each important small feature for beginners in Infra as Code


## Intro
In the rapidly changing world of DevOps and cloud computing, Terraform has become a crucial tool, fundamentally changing the way infrastructure is handled.
Essentially, Terraform is an open-source Infrastructure as Code (IaC) tool created by HashiCorp.
What makes Terraform unique is its capability to enable developers and operations teams to describe and manage infrastructure configurations through code.
This approach to setting up infrastructure not only removes manual errors and the possibility of human mistakes but also encourages teamwork, version control, and consistency across various cloud providers.


In today's context, Terraform is exceptionally important as organizations increasingly move towards cloud environments and adopt hybrid and multi-cloud strategies.
The intricacy of modern infrastructure requires a scalable and automated solution, and that's precisely what Terraform offers.
Its flexibility allows it to seamlessly work with popular cloud providers like AWS, Azure, and Google Cloud, allowing users to effortlessly create, modify, and remove infrastructure resources.
This agility is crucial in a rapidly moving development and deployment cycle, where quick and reliable provisioning of resources is vital for success.

Furthermore, Terraform plays a crucial role in enabling infrastructure flexibility, scalability, and maintainability.
Its code-centric approach not only simplifies the provisioning process but also ensures that infrastructure is treated as a versioned artifact.
This makes it easy to replicate, modify, and share infrastructure configurations, promoting a collaborative and efficient DevOps culture.
As organizations aim for increased automation and efficiency in their operations, Terraform stands out as an essential tool for managing the complexities of modern infrastructure with simplicity and precision.


## Features List
* 1-terraform-provider-block
* 2-variables-tfvars
* 3-local-values
* 4-outputs
* 5-remote-state
* 6-remote-state-data-source
* 7-backend-config
* 8-provisioners
* 9-modules-local
* 10-modules-remote
* 11-depends-on
* 12-count
* 13-for-each
* 14-prviders
* 15-lifecycle
* 16-conditional-expression
* 17-splat-expression
* 18-dynamic-block
* 19-data-source
* 20-terraform-data

## Terraform Cheat Sheet
### terraform version
| Command                   | Description    |
| -------                   | -----------    |
| terraform version         | Show the current Terraform version |

### terraform init
| Command                                 | Description |
| -------                                 | ----------- |
| terraform init                          | Initialize a new or existing Terraform working directory |
| terraform init -backend-config=path     | Configuration to be merged with what is in the configuration file's 'backend' block |
| terraform init -reconfigure             | Reconfigure a backend, ignoring any saved configuration. |
| terraform init -migrate-state           | Reconfigure a backend, and attempt to migrate any existing state. |

### terraform fmt
| Command                             | Description |
| -------                             | ----------- |
| terraform fmt                       | Reformat your configuration in the standard style on current directory |
| terraform fmt -recursive            | Reformat your configuration files in current and all subdirectories. |

### terraform validate
| Command                   | Description |
| -------                   | ----------- |
| terraform validate        | Validate the configuration files in a directory |

### terraform plan
| Command                               | Description |
| -------                               | ----------- |
| terraform plan                        | Show changes required by the current configuration |
| terraform plan -destroy               | Creates a plan to destroy all objects currently managed by this Terraform configuration |
| terraform plan -replace=resource      | Force replacement of a particular resource |
| terraform plan -target=resource       | Limit the planning operation to only the given module, resource, or resource instance and all of its dependencies. |
| terraform plan -var 'foo=bar'         | Set a value for one of the input variables in the root module of the configuration |
| terraform plan -var-file=filename     | Load variable values from the given file, in addition to the default files terraform.tfvars and *.auto.tfvars. |

### terraform apply
| Command                             | Description |
| -------                             | ----------- |
| terraform apply                     | Create or update infrastructure |
| terraform apply -auto-approve       | Skip interactive approval of plan before applying |
| terraform apply -destroy            | Destroy Terraform-managed infrastructure. The command "terraform destroy" is a convenience alias for this option |

### terraform destroy
| Command                   | Description |
| -------                   | ----------- |
| terraform destroy         | Destroy previously-created infrastructure. This command is a convenience alias for: terraform apply -destroy |

### terraform import
| Command                   | Description |
| -------                   | ----------- |
| terraform import          | Associate existing infrastructure with a Terraform resource |

### terraform show
| Command                            | Description |
| -------                            | ----------- |
| terraform show                     | Reads and outputs a Terraform state in a human-readable form |
| terraform show plan-filename       | Reads and outputs a Terraform plan in a human-readable form |

### terraform state
| Command                       | Description |
| -------                       | ----------- |
| terraform state list          | List resources in the state |
| terraform state mv            | Move an item in the state |
| terraform state pull          | Pull current state and output to stdout |
| terraform state push          | Update remote state from a local state file |
| terraform state rm            | Remove instances from the state |
| terraform state show          | Show a resource in the state |

### terraform ouput
| Command                   | Description |
| -------                   | ----------- |
| terraform output          | Reads an output variable from a Terraform state file and prints the value |
| terraform output -raw     | Reads an output variable from a Terraform state file and prints the value even if sensitive |

### terraform workstation
| Command                          | Description |
| -------                          | ----------- |
| terraform workstation delete     | Delete a workspace |
| terraform workstation list       | List workspaces |
| terraform workstation new        | Create a new workspace |
| terraform workstation select     | Select a workspace |
| terraform workstation show       | Show the name of the current workspace |