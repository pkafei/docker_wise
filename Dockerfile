FROM pkafei/docker_scipy

# Installing additional Python packages
RUN pip install requests

RUN pip install --user --upgrade healpy

RUN apt-get -y build-dep python-psycopg2

RUN apt-get -y install python-psycopg2

# Obtaining the FITS file
RUN curl http://lambda.gsfc.nasa.gov/data/map/dr4/ancillary/masks/wmap_temperature_analysis_mask_r9_7yr_v4.fits -o example.fits

# Clone files into docker containter
RUN git clone https://github.com/ywyw/dat-wise.git

entrypoint ["trillian"]