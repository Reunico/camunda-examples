#!/bin/sh

curl -w "\n" \
-H "Accept: application/json" \
-F "deployment-name=receipt-info-0.1" \
-F "enable-duplicate-filtering=false" \
-F "deploy-changed-only=falses" \
-F "receipt_info.bpmn=@receipt_info.bpmn" \
-F "receipt_info.html=@receipt_info.html" \
http://localhost:8080/engine-rest/deployment/create