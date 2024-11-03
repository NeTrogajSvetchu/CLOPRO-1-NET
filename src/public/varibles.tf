###cloud vars


variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

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

variable "yandex_compute_instance_public" {
  type        = list(object({
    vm_name = string
    cores = number
    memory = number
    core_fraction = number
    hostname = string
    platform_id = string
  }))

  default = [{
      vm_name = "public"
      cores         = 2
      memory        = 2
      core_fraction = 5
      hostname = "public"
      platform_id = "standard-v1"
    }]
}

variable "boot_disk_public" {
  type        = list(object({
    size = number
    type = string
    image_id = string
    }))
    default = [ {
    size = 10
    type = "network-hdd"
    image_id = "fd80mrhj8fl2oe87o4e1"
  }]
}

variable "ssh-keys" {
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICaBgpiM7ejrZL1NH5lk7Y/t1J5usoVpeRJO3cfuMjlC"
}

variable "subnet_id" {
  
}