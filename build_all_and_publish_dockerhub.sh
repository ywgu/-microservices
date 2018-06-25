#!/bin/bash

cd shopfront
mvn clean install
if docker build -t hdtrd/djshopfront . ; then
  docker push hdtrd/djshopfront
fi
cd ..

cd productcatalogue
mvn clean install
if docker build -t hdtrd/djproductcatalogue . ; then
  docker push hdtrd/djproductcatalogue
fi
cd ..

cd stockmanager
mvn clean install
if docker build -t hdtrd/djstockmanager . ; then
  docker push hdtrd/djstockmanager
fi
cd ..
