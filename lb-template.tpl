# Simulated Load Balancer Nodes
%{ for node, details in nodes ~}
${details.name}: ${details.address}
%{ endfor ~}
