# resource "harness_platform_service" "nginx" {
#   identifier = "nginx"
#   name       = "nginx"
#   org_id     = data.harness_platform_organization.default.id
#   project_id = harness_platform_project.development.id
#   yaml       = <<EOF
# service:
#   name: nginx
#   identifier: nginx
#   tags: {}
#   serviceDefinition:
#     type: Kubernetes
#     spec:
#       manifests:
#         - manifest:
#             identifier: template
#             type: K8sManifest
#             spec:
#               store:
#                 type: Github
#                 spec:
#                   connectorRef: account.Github
#                   gitFetchType: Branch
#                   paths:
#                     - deployment.yaml
#                   repoName: rssnyder/template
#                   branch: main
#               valuesPaths:
#                 - values.yaml
#               skipResourceVersioning: false
#       artifacts:
#         primary:
#           primaryArtifactRef: nginx
#           sources:
#             - spec:
#                 connectorRef: account.dockerhub
#                 imagePath: library/nginx
#                 tag: <+input>
#               identifier: nginx
#               type: DockerRegistry
#       variables:
#         - name: port
#           type: String
#           description: ""
#           value: <+input>
#           default: "80"
#         - name: replicas
#           type: String
#           description: ""
#           value: <+input>
#           default: "1"
# EOF
# }
