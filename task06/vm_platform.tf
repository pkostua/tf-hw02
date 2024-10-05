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

variable "vms_resources" {
  type        = map( object({
    core_fraction: number,
    cores: number,
    memory: number,
  }))
  description = "https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "metadata" {
  type = object({
    serial-port-enable: number,
    ssh-keys: string
  })
}

/*variable "vm_web_resources" {
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

variable "vm_db_resources" {
  type        = object({
    core_fraction: number,
    cores: number,
    memory: number,
  })

  default     = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
  description = "https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}
*/

