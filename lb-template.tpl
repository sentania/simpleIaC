# Simulated Load Balancer Nodes
%{ for node in nodes ~}
server ${node};
%{ endfor ~}
