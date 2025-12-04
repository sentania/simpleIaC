# multipleubuntu Module

Deploys a **multi‑VM Aria Automation blueprint** using an input `vmCount`.

## Inputs

| Variable | Description |
|---------|-------------|
| `project_name` | Aria Automation project |
| `catalog_item_version` | Catalog version |
| `deployment_name` | Deployment name |
| `description` | Deployment description |
| `vmCount` | Number of VMs to deploy |

## Outputs

Same as `simpleubuntu`:

- `deployment_info`
- `machines_map` keyed by **machine ID**
- `machines_list`

## Behavior

This module supports blueprints that create dynamic numbers of machines.  
Runtime details are resolved at the root level after the initial apply.