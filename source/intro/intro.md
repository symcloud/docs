---
title: Symcloud doc
author:
	name: Johannes Wachter
	email: johannes.wachter@students.fhv.at
	homepage: https://github.com/wachterjohannes
---

# Idea

The idea for this project was founded in the context of my thesis 2014/15. My intention was to create a cloud-application like ˋowncloudˋ with a modern framework ˋsymfonyˋ. This environment should help the project that be used and further developed by a community.

I have traced the owncloud project since the first release and like the software a lot. With my work on the open source CMF ˋSuluˋ I have noticed the power of a big community. Because of these two reasons, I have decided to combine them in my master thesis.

## Struture of Work

Master Thesis will be written in german, because it costs me a lot of time to write a lot of text in a proper english. But for the community i will write the documentation in this repository in english.
The important Sections of the thesis i will translate in english for the documentation.

The work is seperated in two big sections. One is a Concept section which describs important System parts like: UI, Rest API, Data Storage and Syncronization of data.

The second section contains the implementation of a prototype which is should contain:

* UI concept implementation
* Rest API for Files and User (and all the other necessary APIs to implement ui)
* Data Storage abstraction
* Implementation of one or more (perhaps for comparison) implementations of the abstraction
* Prototype software to synchronize data (or use mirall from owncloud with a webdav interface of the api)

## Data Storage

Topics that should be considered in the data storage: versioning, sharing, security, compression and encoding.

* Content Repository
  + Pro: Versioning, tree like structure, ...
  + Contra: slower than other, versioning of big files and garbage collection?
* Git-Repository
  + Pro: Versioning, tree like structure, compression of data 
  + Contra: Sharing of partial repositories
* Folder Structure
  + Pro: Easy to handle, one to one mapping, ...
  + Contra: Security, ...

## Sync

There are several ways to Synchronize data. These three sounds interesting.

* webdav and ˋmirallˋ from owncloud
  + automatic upload changed files
* diff sync
  + sync only diff patch files
  + git like interface with commit
* git sync
  + use git to upload and versioning
  + automatic commit (or manuall)
