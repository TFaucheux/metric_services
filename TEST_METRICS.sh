set -x
      echo
      echo "(using Id)..."
      echo
      # time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/
      echo
      echo "(using Code)..."
      echo
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm.val.vlss.local:8080/metric_services/api/MetricsDaily/max/
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/max/
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost/metric_services/api/MetricsDaily/max/
      # time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/since/0
      # time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost/metric_services/api/MetricsDaily/since/0
      # curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/since/244516
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm.val.vlss.local:8080/metric_services/api/MetricsDaily/between/17-JUL-19/18-JUL-19
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/between/17-JUL-19/18-JUL-19
      time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost/metric_services/api/MetricsDaily/between/17-JUL-19/18-JUL-19
      echo
      echo "(using search)..."
      echo
      # time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/242638
      # time curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://valvcshad001vm/metric_services/api/MetricsDaily/search/AgnihotriP
      echo
      echo
