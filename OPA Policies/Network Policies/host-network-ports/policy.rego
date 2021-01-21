package k8spsphostnetworkports

deny[{"msg": msg, "details": {}}] {
    input_share_hostnet(input.review.object)
    msg := sprintf("The specified hostNetwork and hostPort can't be passed, pod: %v. Allowed values: %v", [input.review.object.metadata.name, input.parameters])
}

input_share_hostnet(o) {
    not input.parameters.hostNetwork
    o.spec.hostNetwork
}

input_share_hostnet(o) {
    hostPort := input_containers[_].ports[_].hostPort
    hostPort < input.parameters.min
}

input_share_hostnet(o) {
    hostPort := input_containers[_].ports[_].hostPort
    hostPort > input.parameters.max
}

input_containers[c] {
    c := input.review.object.spec.containers[_]
}

input_containers[c] {
    c := input.review.object.spec.initContainers[_]
}
