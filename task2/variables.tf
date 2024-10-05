###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

###Переменные виртуальных машин
variable "vm_family_ubuntu" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "https://yandex.cloud/ru/docs/compute/concepts/image"
}

variable "vm_platform_id_standard-v3" {
  type        = string
  default     = "standard-v3"
  description = "https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "vm_resources_standard-v3_minimal" {
  type        = object({
    core_fraction: number,
    cores: number,
    memory: number,
  })

  default     = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
  description = "https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "vm_name_web" {
  type = string
  default = "netology-develop-platform-web"
  description = "Название ВМ, кторая будет создана"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAqXhshMf6TVUZf0HnvXhwEnxFmA3Zvv6Fo57Ce/xbsq ubuntu@ubuntu2004"
  description = "ssh-keygen -t ed25519"
}
