Image recognition with Python, OpenCV, OpenAI CLIP model and PostgreSQL `pgvector` 
=================================================================================

This repository contains the working code for the example in the [blog post](https://aiven.io/developer/find-faces-with-pgvector)

Overview
========

The code, contained in the notebook [main.ipynb](main.ipynb) file will take you through the steps needed to:

* Retrieve the image included in any picture
* Calculate the embeddings from the faces
* Store the embedidngs in PostgreSQL in a `vector` column from `pgvector`
* Get a colleague picture from Slack
* Identify the face in the picture (needed since people can have all types of pictures in Slack)
* Calculate the embeddings in the Slack picture
* Use `pgvector` distance function to retrieve the closest faces and therefore photos


Setup
============

You need Python 3.8+ and to install the packages in the [requirements.txt](requirements.txt) file with

```bash
pip install -r requirements.txt
```

You also need a PostgreSQL instance with [pgvector](https://github.com/pgvector/pgvector). You can start one within few minutes from the [Aiven Console](https://console.aiven.io/).

Once the service is up and running, connect to PostgreSQL using psql and execute the `dbsettings.sql` file with:

```bash
psql <SERVICE_URI> -f dbsettings.sql
```

This will enable the pgvector extension and create the table to store embeddings


License
============
Face recognition with Python, OpenCV, OpenAI CLIP model and PostgreSQL `pgvector`  is licensed under the Apache license, version 2.0. Full license text is available in the [LICENSE](LICENSE) file.

Please note that the project explicitly does not require a CLA (Contributor License Agreement) from its contributors.

Contact
============
Bug reports and patches are very welcome, please post them as GitHub issues and pull requests at https://github.com/aiven/pgvector-face-recognition . 
To report any possible vulnerabilities or other serious issues please see our [security](SECURITY.md) policy.
