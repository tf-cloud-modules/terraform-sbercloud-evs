# Sbercloud EVS Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "evs" {
    source  = "tf-cloud-modules/evs/sbercloud"

    name = "evs-test"
    availability_zone = "ru-moscow-1a"
    size = 1
    volume_type = "SSD"
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
| [sbercloud_evs_volume.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/evs_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone for the volume. | `string` | n/a | yes |
| <a name="input_backup_id"></a> [backup\_id](#input\_backup\_id) | The backup ID from which to create the volume. | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Specifies the disk description. | `string` | `null` | no |
| <a name="input_device_type"></a> [device\_type](#input\_device\_type) | The device type of volume to create. | `string` | `null` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The image ID from which to create the volume. | `string` | `null` | no |
| <a name="input_kms_id"></a> [kms\_id](#input\_kms\_id) | The Encryption KMS ID to create the volume. | `string` | `null` | no |
| <a name="input_multiattach"></a> [multiattach](#input\_multiattach) | Specifies the shared EVS disk information. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the disk name. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the EVS volume resource. | `string` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | Specifies the disk size, in GB. | `number` | n/a | yes |
| <a name="input_snapshot_id"></a> [snapshot\_id](#input\_snapshot\_id) | The snapshot ID from which to create the volume. | `string` | `null` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Specifies the disk type. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->