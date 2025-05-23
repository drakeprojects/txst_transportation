

# Survey 2024 fact sheet
r_count<- 1182L
enroll_f24<- 40678

r_rate<- sum(r_count/enroll_f24)

# Add your Posit Connect server
rsconnect::addServer(
  url = "http://localhost:3939",  # Your server URL
  name = "local-connect"          # A name for this connection
)
