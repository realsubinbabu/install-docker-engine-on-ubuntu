<h1>Install Docker and Docker Compose on Ubuntu</h1>
This script is designed to automate the installation of Docker and Docker Compose on Ubuntu servers. It allows users to select between installing both, only Docker or only Docker Compose. The script is compatible with Ubuntu 20.04 LTS and Ubuntu 22.04 LTS.

<h3>Highlights</h3>
<ul>
  <li>User can select the option to install both, only Docker or only Docker Compose</li>
  <li>Compatible with Ubuntu 20.04 LTS and Ubuntu 22.04 LTS</li>
  <li>Uses lsb_release command to detect the version of Ubuntu and add the appropriate repository</li>
  <li>Uses curl command to download the latest version of Docker Compose</li>
  <li>Uses systemctl command to start and enable the Docker service</li>
  <li>Runs hello-world image to verify that Docker is installed correctly</li>
</ul>
<h3>Usage</h3>

1. Download the script and make it executable: 

    ```https://github.com/realsubinbabu/install-docker-engine-on-ubuntu.git```

    ```chmod +x docker-install.sh```

2. Run the script:

    ```./docker-install.sh```

3. Select an option from the menu to continue with the installation.

- Install Docker and Docker Compose
- Install Only Docker
- Install Only Docker Compose

<h3>Note</h3>

<strong>Please make sure that the version of Ubuntu is compatible with the version of Docker and Docker Compose you are trying to install.</strong>

<h3>Support</h3>
  
If you have any issues or questions, please open an issue on the GitHub repository.

<h3>License</h3>

This project is licensed under the GNU General Public License v3.0. See the LICENSE <a href="https://github.com/realsubinbabu/install-docker-engine-on-ubuntu/blob/main/LICENSE">file</a> for details.

<h3>Acknowledgements</h3>

<ul>
<li>Docker for providing the official installation script</li>
<li>Ubuntu for providing the package repository</li>
<li>Docker Compose for providing the latest version of the binary</li>
<li>The open-source community for providing helpful resources and tutorials</li>
  
<h3>Contributing</h3>

I would appreciate any contributions, such as adding support for more distros or software packages. If you would like to make changes, please feel free to fork the project and create a pull request with your updates.
