# simpleubuntu Module

Deploys a **single‑VM Aria Automation blueprint** and returns standardized outputs.

## Inputs

| Variable | Description |
|---------|-------------|
| `project_name` | Aria Automation project |
| `catalog_item_version` | Catalog version |
| `deployment_name` | Deployment name |
| `description` | Deployment description |

## Outputs

| Output | Description |
|--------|-------------|
| `deployment_info` | `{ id, name }` |
| `machines_map` | Map of VM ID → `{ name, type }` |
| `machines_list` | List of VMs: `{ id, name, type }` |

## Notes

- Machine IDs are used as keys to avoid name collisions across deployments.
- Full VM details (IP, CPU, RAM, etc.) must be resolved **outside** the module using `vra_machine`.

