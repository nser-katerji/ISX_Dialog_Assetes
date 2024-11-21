/* Credentials */

variable "oauthClientId" {
  type        = string
  default     = "98a7f963-1f8a-4783-b280-3816cfacd223"
  description = "Obtained from the OAuth menu in Genesys Cloud. It is recommended to restrict roles for the client to the division being rolled out only"
}

variable "oauthClientSecret" {
  type        = string
  default     = "WImNQhXvaHUfqaaPVmxqufu5NbGWE2J4VtW_-nXuDtQ"
  description = "Obtained from the OAuth menu in Genesys Cloud. It is recommended to restrict roles for the client to the division being rolled out only"
}

/* Country specific values */

variable "countryName" {
  type        = string
  default     = "GLOBAL"
  description = "Global Country"
}

variable "countryPrefix" {
  type        = string
  default     = "GL"
  description = "Prefix for the objects being created. E.g. GL_Site_Manager group"
}

variable "countryDivisionId" {
  type        = string
  default     = "2750662e-acef-4854-bc96-ec421e1c0114"
  description = "Used to assign roles to groups and queues to divisions"
}

variable "partnerDivisionId" {
  type        = string
  default     = ""
  description = "Used to assign roles to groups. This will need duplicating where there is more than one partner"
}

variable "callingNumber" {
  type        = string
  default     = "+46406060865"
  description = "The calling number of the queues. This may need adapting in future when there is more than one number, CZHUSK only had one"
}

variable "trainingNumber" {
  type        = string
  default     = "+46406060865"
  description = "The number used for voice training"
}

/* Global values */

variable "callScriptId" {
  type        = string
  default     = "932e78c2-af79-4e51-916e-b1270f66117c"
  description = "The script Id setup as the default against the queue. Default currently set to IKEA_Inbound"
}

variable "emailScriptId" {
  type        = string
  default     = "7ff98b08-f99d-4836-9c3c-6a9c80b9d177"
  description = "The script Id setup as the default against the queue. Default currently set to IKEA_Inbound"
}

variable "chatScriptId" {
  type        = string
  default     = "14fe1c86-f3b9-4f14-9f99-abefc51d03f3"
  description = "The script Id setup as the default against the queue. Default currently set to IKEA_Messaging"
}

variable "trainingDivisionId" {
  type        = string
  default     = "5cc3b734-8c01-49c2-b70f-3c9a6f614f66"
  description = "Used to assign training queues to the division"
}

variable "groupOwnerId" {
  type        = string
  default     = "b792bca4-5f9c-4e62-9ae8-669deea37790"
  description = "All groups must have an owner, this is defaulted to Harsha as he created Norway groups originally but can be changed if required."
}