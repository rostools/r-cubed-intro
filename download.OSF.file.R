## Function to download files on the OSF ##

# DESCRIPTION:
# Download a file hosted on the Open Science Framework (OSF) to a users working directory
#
# USAGE:
# download.OSF.file(GUID=NULL, Access_Token=NULL)
#
# ARGUMENTS:
# GUID            Global unique identifier of file on OSF. A character string.
# Access_Token    Personal access token of user (for private files). A character string.
#                 Information to make one: https://osf.io/y9jdt/wiki/Examples/
#                  or
#                 View-only link to provide access (for private files). A character string.
#                 Information to make one: http://help.osf.io/m/links/l/524049-create-a-view-only-link
# File_name       Name of the file that will be downloaded and saved to local directory
#
# DETAILS
# The function will download the file (or return a message if the file does not exist or if
# authentication credentials were not provided). If authentication credentials are required, a
# personal access token or private link will need to be included.
#
# The file will be downloaded to the users working directory with the same file name and extension
# of the file that is hosted on the OSF.
#
# EXAMPLE
# download.OSF.file(GUID="zmhqy",Access_Token="https://osf.io/5yscz/?view_only=756a4e87b872460d8d4ed25eae4d5150",
# file_name="Study_48_Meta_Analysis.csv")
#
# [1] "The file has been downloaded to your working directory as: Study_48_Meta_Analysis.csv"

download.OSF.file <- function(GUID,Access_Token=NULL,file_name)
{
  require(httr)
  require(rjson)
  
  #search for file private/public status
  GETurl <- paste0("https://api.osf.io/v2/files/",GUID)
  req <- GET(GETurl, write_disk("test",overwrite=T))
  json_data <- fromJSON(file = "test")
  
  if (length(json_data$data) > 0){
          req1 <- GET(json_data$data$links$download,
                      write_disk(file_name, overwrite = TRUE))
          print(paste0("The file has been downloaded to your working directory as: ",
                       file_name))
  }
  else if (length(Access_Token) == 1){
      if (grepl("https://osf.io",Access_Token)==TRUE){
        req1 <- GET(paste0("https://api.osf.io/v2/files/",GUID,"/",gsub(".*/","",Access_Token)),
                    write_disk("test", overwrite = TRUE))
        json_data <- fromJSON(file = "test")
        if (length(json_data$data) > 0){
          req1 <- GET(json_data$data$links$download,
                      write_disk(file_name, overwrite = TRUE))
          print(paste0("The file has been downloaded to your working directory as: ",
                       file_name))
        }
        else{
          print(json_data$errors[[1]]$detail[1])
        }
      }
      else if (grepl("https://osf.io",Access_Token)==FALSE){
        req1 <- GET(paste0("https://api.osf.io/v2/files/",GUID),
                    write_disk("test", overwrite = TRUE),
                    add_headers("Authorization" = paste0("Bearer ",Access_Token)))
        json_data <- fromJSON(file = "test")
        if (length(json_data$data) > 0){
          req1 <- GET(json_data$data$links$download,
                      write_disk(file_name, overwrite = TRUE),
                      add_headers("Authorization" = paste0("Bearer ",Access_Token)))
          print(paste0("The file has been downloaded to your working directory as: ",
                       file_name))
        }
        else{
          print(json_data$errors[[1]]$detail[1])
        }
      }
      else{
        print(json_data$errors[[1]]$detail[1])
      }
    }
  else{
    print(json_data$errors[[1]]$detail[1])
  }
}

