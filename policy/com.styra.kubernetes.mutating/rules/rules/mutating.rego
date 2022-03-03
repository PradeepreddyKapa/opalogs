package policy["com.styra.kubernetes.mutating"].rules.rules

enforce[decision] {
  parameters := {
    "cpu_limit": ""
  }

  data.library.v1.kubernetes.mutating.v1.add_default_cpu_limit[decision]
    with data.library.parameters as parameters
}
