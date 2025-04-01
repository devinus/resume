# syntax=docker/dockerfile:1
# check=error=true

FROM ghcr.io/xu-cheng/texlive-full:latest AS build
LABEL maintainer="Devin Alexander Torres <d@devinus.io>"

RUN mkdir -p /usr/src/resume
WORKDIR /usr/src/resume

COPY . .
