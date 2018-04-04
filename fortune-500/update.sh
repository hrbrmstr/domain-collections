#!/usr/bin/env bash

curl --silent --output "data/2016-fortune-500.csv"  "https://docs.google.com/spreadsheets/d/12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo/export?format=csv&id=12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo&gid=860706176"

curl --silent --output "data/2015-fortune-500.csv" "https://docs.google.com/spreadsheets/d/12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo/export?format=csv&id=12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo&gid=1421900981"

curl --silent --output "data/2014-fortune-500.csv" "https://docs.google.com/spreadsheets/d/12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo/export?format=csv&id=12G3rR5WsOJFQzkb9UHVt_U7rpFqnT3C7thKPJxn17xo&gid=0"