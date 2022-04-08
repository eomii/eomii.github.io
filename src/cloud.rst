.. _cloud:

Cloud infrastructure
====================

``Umii`` comes with a complete cloud infrastructure that deploys container
images as individual services in a highly available backend infrastructure.

.. image:: _static/cluster_architecture.png

- All individual components of the cluster can be scaled up and down as you see
  fit, depending on your availability/cost requirements.
- Applications may be deployed redundantly within and across nodes in the
  cluster, so that end users do not notice service failures because they will
  automatically be redirected to an identical copy of the crashed service.
- Container startup times in the ``Umii`` infrastructure are roughly twice as
  fast as in similar solutions.
- Multiple monitoring tools make it easy to understand the state of the cluster
  at all times.
- The system never has to go offline for any updates to the application code.
  This is achieved by progressively shifting traffic between the old and new
  versions of a service.

.. admonition:: Technical Details

   We prebuilt a complete ``Kubernetes`` distribution that uses ``CRI-O`` and
   ``crun`` as CRI and runtime, respectively.

   Traffic inside the cluster is routed and monitored through ``Envoy`` proxies
   which communicate via TLS-encrypted ``gRPC`` channels. These proxies are
   automatically deployed as sidecar-proxies by a an ``Istio`` service mesh
   deployment.

   The monitoring tools that are enabled per default are ``Kiali`` and
   ``Graphana``.
