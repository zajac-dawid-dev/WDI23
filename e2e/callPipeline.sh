#!/bin/bash
curl -XPOST -u ":__USER_PAT__" -H "Content-type: application/json" "https://dev.azure.com/dejvis/wdi23/_apis/pipelines/__PIPELINE_ID__/runs?api-version=7.0" -d '{"runParameters": ""}'