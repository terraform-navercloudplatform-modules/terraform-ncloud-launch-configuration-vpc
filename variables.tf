variable "name" {
  description = "(Optional) Launch Configuration name to create. default : Ncloud assigns default values."
  type        = string
  default     = null
}

variable "server_image_product_code" {
  description = "(Optional) Server image product code to determine which server image to create. It can be obtained through data ncloud_server_images. You are required to select one between two parameters: server image product code (server_image_product_code) and member server image number member_server_image_no)"
  type        = string
  default     = null
}

variable "server_product_code" {
  description = "(Optional) Server product code to determine the server specification to create. It can be obtained through the getServerProductList action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL)"
  type        = string
  default     = null
}

variable "member_server_image_no" {
  description = "(Optional) Required value when creating a server from a manually created server image. It can be obtained through the getMemberServerImageList action."
  type        = number
  default     = null
}

variable "login_key_name" {
  description = "(Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created."
  type        = string
  default     = null
}

variable "init_script_no" {
  description = "(Optional) Set init script ID, The server can run a user-set initialization script at first boot."
  type        = number
  default     = null
}

variable "is_encrypted_volume" {
  description = "(Optional) you can set whether to encrypt basic block storage if server image is RHV. Default false."
  type        = bool
  default     = false
}