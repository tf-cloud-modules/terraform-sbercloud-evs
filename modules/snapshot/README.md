# Sbercloud EVS Snapshot Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "snapshot" {
    source  = "tf-cloud-modules/evs/sbercloud//modules/snapshot"

    volume_id = "xxxx-xxxx-xxxx"
    name      = "evs-snapshot-test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_evs_snapshot.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/evs_snapshot) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the snapshot. | `string` | `null` | no |
| <a name="input_force"></a> [force](#input\_force) | Specifies the flag for forcibly creating a snapshot. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the snapshot. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the evs snapshot resource. | `string` | `null` | no |
| <a name="input_volume_id"></a> [volume\_id](#input\_volume\_id) | The id of the snapshot's source disk. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->