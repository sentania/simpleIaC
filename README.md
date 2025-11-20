# Simple IaC Terraform Example

This repository demonstrates:
- Deploying VCF Automation (VM Apps) blueprints via Terraform
- Supporting **single‑VM** and **multi‑VM** blueprints using separate modules
- Merging VM outputs from multiple deployments
- Resolving VM IPs via `vra_machine` data sources
- Producing a simulated load‑balancer node list as a text file

## Execution Model

Due to how Aria Automation surfaces machine details, Terraform must execute in **multiple passes**:

### 1. First pass — create deployments  
Use `--target` to apply blueprint modules only:
```
terraform apply --target=module.ubuntuServer01 --target=module.ubuntuServer02 --target=module.multipleServer01
```

### 2. Second pass — resolve VMs and render output
```
terraform apply
```

This pass resolves all VMs and renders the final file.

---

## Output

The generated file resembles:
```
# Simulated Load Balancer Nodes
Cloud_Machine_1-xyz: 172.28.0.35
Cloud_Machine_1-abc: 172.28.0.67
Cloud_Machine_1-def: 172.28.0.03
```

---

## Modules

- `simpleubuntu/`: Deploys a single‑VM blueprint.
- `multipleubuntu/`: Deploys a multi‑VM blueprint requiring `vmCount`.
- Modules return standardized outputs:
  - `deployment_info`
  - `machines_map` keyed by **machine ID**
  - `machines_list`

---

## Helper Logic

The root module:
- Merges machine maps from multiple deployments
- Resolves IP addresses via `data "vra_machine"`
- Writes output using `templatefile()` + `local_file`

---

## Requirements

- Terraform 1.4+
- VCF Automation VM Apps 9.x or Aria Automation 8.18.x
- Credentials set via provider block

