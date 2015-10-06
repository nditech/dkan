[![DKAN Sitewide Build Status](https://travis-ci.org/NuCivic/dkan.svg?branch=7.x-1.x)](https://travis-ci.org/NuCivic/dkan)


[![DKAN](http://f.cl.ly/items/3q3v120q0h1q2d2A3s3L/Screenshot%202014-04-29%2018.40.15.png)](http://nucivic.com/dkan)

## What is DKAN?


[DKAN](http://nucivic.com/dkan) is a Drupal-based open data tool with a full suite of cataloging, publishing and visualization features that allows governments, nonprofits and universities to easily publish data to the public. DKAN is maintained by [NuCivic](http://nucivic.com).

## Data publishers

*   Publish data through a guided process or import via API/harvesting from other catalogs
*   Customize your own metadata fields, themes and branding*   Store data within DKAN or on external (e.g. departmental) sites*   Manage access control, version history with rollback, RDF support, user analytics*   Supported enterprise-quality commercial support and FISMA-certified cloud hosting options available

## Data users

*   Explore, search, add, describe, tag, group datasets via web front-end or API
*   Collaborate with user profiles, groups, dashboard, social network integration, comments*   Use metadata and data APIs, data previews and visualizations*   Manage access control, version history with rollback, INSPIRE/RDF support, user analytics*   Extend and leverage the full universe of more than 18,000 freely available Drupal modules

## Hosting and support

NuCivic' [Data](http://nucivic.com/data/) platform offers 24/7, secure, cloud-based DKAN hosting and support services.

*   [ Live demo » ](http://demo.getdkan.com/)
*   [ Docs » ](http://docs.getdkan.com/)

## Build Status

| Component      | Status      |
|----------------|:------------|
| DKAN Sitewide  | [![DKAN Sitewide Build Status](https://travis-ci.org/NuCivic/dkan.svg?branch=7.x-1.x)](https://travis-ci.org/NuCivic/dkan) |
| DKAN Dataset   | [![DKAN Dataset Build Status](https://travis-ci.org/NuCivic/dkan_dataset.svg?branch=7.x-1.x)](https://travis-ci.org/NuCivic/dkan_dataset) |
| DKAN Datastore | [![DKAN Datastore Build Status](https://travis-ci.org/NuCivic/dkan_datastore.svg?branch=7.x-1.x)](https://travis-ci.org/NuCivic/dkan_datastore) |
| Open Data Schema Map | [![ODSM Build Status](https://travis-ci.org/NuCivic/open_data_schema_map.svg?branch=master)](https://travis-ci.org/NuCivic/open_data_schema_map) |

## Installation

DKAN is an open source platform for warehousing and sharing open data with a full suite of cataloging, publishing and visualization features. DKAN is developed by NuCivic, and the code and links to developer documentation can be found here, http://www.nucivic.com/dkan/ .

The National Democratic Institute (NDI) has deployed DKAN for use in data publishing, analysis and visualization, and for use in election cases, NDI has also developed a practical and visually appealing theme. Below are instructions for downloading DKAN and installing it with NDI’s theme.

You will need a Linux server, comfort working with Linux/Apache/MySQL/PHP (LAMP) web application stacks, some systems administration experience, and time to play around.

Individual instructions will vary based on your version of Linux. The following instructions were written for Ubuntu Linux.

1.Become the root user.

		sudo su

2.Configure the /etc/httpd/conf/httpd.conf file to point to your will-be data warehouse. The httpd.conf file is the main configuration file for the Apache web server.

		vim /etc/httpd/conf/httpd.conf
	
		Here, change document root to :  /var/www/html/website_name

		Eg: /var/www/html/dkan
	
		Add line at the bottom:
		<Directory "/var/www/html/dkan" >
		AllowOverride All
		</Directory>

3.We need to create a directory named after our website that matches document root previously set in the Apache configuration.

		mkdir /var/www/html/dkan

4.Restart the web server to apply the changes. The restart option is a shorthand way of stopping and then starting the Apache HTTP Server.

		service httpd restart

5.Now, go to current working directory to the file we just created. We will install drupal here.

		cd /var/www/html/dkan/

6.Download the latest version of DKAN from the NuCivic web site using “wget”. Adjust the wget command below to reflect the current version shared here: http://docs.getdkan.com/dkan-documentation/dkan-developers-guide/installing-dkan 

		wget https://github.com/nuams/dkan-drops-7/archive/7.x-1.0.zip

7.Unzip the downloaded file.

		unzip 7.x-1.0.zip

8.To grant permissions. Go to the following directory.

		cd /var/www/html

		chown -Rv apache:apache dkan 

9.Notice that we now have a 7.x-1.0.zip directory to work with. We want the DKAN files to be in our document root, not in a 'dkan-drops-7-7.x-1.0' subdirectory. So, we'll move the contents of the directory up one level.
		
		cd dkan

		mv dkan-drops-7-7.x-1.0/* ./

		mv dkan-drops-7-7.x-1.0/.htaccess ./

10.Remove the now-empty directory

		ls -lah dkan-drops-7-7.x-1.0

		rm -rf dkan-drops-7-7.x-1.0

11.Go to your website. DKAN has hopefully been successfully installed.

		https://(your-website)

12.In your website, Choose the language as English. Click on Save and continue. 

13.In the database configuration option, set up a database with the correct fields. Select the Database Type as MySQL, MariaDB or an equivalent type. Fill in the correct name, username and password. Click on Save and continue. Instructions for installing MySQL are beyond the scope of this document, but you can find some on the MySQL site, http://www.mysql.com .		
	
**To create a new user.

		CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

**To grant access to the new user.
	
		GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';

**Once you have granted access, make sure to reload all the privileges.

		FLUSH PRIVILEGES; 

**To access your MySQL Database.

		mysql -u {mysql-user} -p {mysql-password}

**To show the existing databases.

		SHOW DATABASES;

**To create a new database.
		
		CREATE DATABASE {name};

**To use the new database.
		
		USE {new database name}


14.Configure the site with the correct site information and the correct site maintenance account. Click on Save and continue

15.DKAN has been successfully installed. 

16.Download the NDI DKAN theme .zip file from https://github.com/nditech/ndi_dkan_theme to your local computer.

17.Go to the successfully installed DKAN website.

18.From the toolbar:

		Appearance ==>Install new theme.

19.Choose the .zip file saved on your computer. Click on the Install button.

20.Click on "enable newly added themes" and enable the NDI DKAN theme. Click on the set default button for the theme. 

21.NDI DKAN has been successfully installed.

22.For information on using your new system, NDI has developed a user and administrative guide, both of which are available on our DemTools website.

## Components

DKAN consists of three main components:

### DKAN Distro

This is the installation profile that packages everything together. It included the DKAN theme, faceted search, and other elements.

### DKAN Dataset

DKAN Dataset is a stand-alone module: https://github.com/NuCivic/dkan_dataset that provides dataset and resource content types. This is the foundation for the open data publishing. **DKAN Dataset can be included in any Drupal 7 site**.

The dataset nodes contain the metadata and the resource nodes contain the file or data itself. This is exactly how CKAN does it, but in Drupal.  The metadata from the datasets are available in rdf(a) that is DCAT compliant as well as in JSON.

### DKAN Datastore

DKAN Datastore is a stand-alone module: https://github.com/NuCivic/dkan_datastore that provides the ability to include uploaded files into a datastore and expose their components via an API. **DKAN Datastore can be included in any Drupal 7 site**.

## Current Status

Check tags for latest DKAN Version. 7.x-1.x is the development branch.

Contact us if you want to get involved!

DKAN development is a sponsored by NuCivic. For more information about hosting and professional support options for DKAN, see http://nucivic.com/data

### Releases and Release Candidates

Currently, we plan releases wrapping github issues on milestones. For instance, if the latest release for dkan is ```7.x-1.n``` then a ```DKAN 7.x-1.n+1``` milestone should exists. You are welcome to take a look and propose bugs fixes or new features for the next release.

However, there are times when we need to create a release candidate for the next release. This usually happens when security updates are needed for contrib modules but other criteria may arise.

We keep DKAN, DKAN Dataset and DKAN Datastore versioning in sync.

## Getting Help with DKAN

Have a question, found a bug, or need help with DKAN?

### I have a general question DKAN as a Developer or Site Builder

Please post a question on our Developer list: https://groups.google.com/forum/?hl=en#!forum/dkan-dev

### I have a bug or issue

Please post it to our Github issue queue: https://github.com/nucivic/dkan/issues

### I would like to purchase DKAN support or hosting

Please contact us at NuCivic http://nucivic.com/contact

## Community

You are welcome to join the discussion on the DKAN Developers mailing list. Join and read archives at:
https://groups.google.com/forum/?hl=en#!forum/dkan-dev

## Contributing

Please file all tickets for DKAN, including those that involve code in DKAN Dataset and DKAN Datastore modules in this issue queue. We have several labels in place for you to tag the issue with and identify it with the proper component.

Also, please remember to reference the issue across repositories in order for maintainers to pick up commits and pull requests looking at the issue. You can do that for commits like this:

```bash
git commit -m "Issue NuCivic/dkan#<issue_number>: ..."
```

Just replace **<issue_number>** with the actual issue number. You can reference pull requests exactly like that if you add the same text **"NuCivic/dkan#<issue_number>"** in a comment. 

This really help us detecting changes and pulling them in in faster.
