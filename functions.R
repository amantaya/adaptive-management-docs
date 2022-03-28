#' ---
#' title: "Functions"
#' author: "Andrew Antaya"
#' date: "June 24, 2019"
#' output: html_notebook
#' ---

#' **Input:** A column named "Date.Entered" from a data frame load 
#' from the Excel file, which was exported from Access database.
#' 
#' **What It Does:** It checks if the data frame has a "Date.Entered" column
#' and if it does have that column, it converts the "Date.Entered" column
#' from an Excel date to a S3 class datetime. If the data frame does not have a
#' "Date.Entered" column, the functions returns nothing.
#' 
#' **Output:** It returns a date frame with the "Date.Entered" column converted \
#' from a Excel date to date in the S3 date class.

convert_from_excel_dates_to_datetime <- function(df){
  # first check if the data frame has a "Date.Entered" column
  if (any(names(df) == "Date.Entered")) {
  # select only the "Date.Entered" column and pipe that into openxlsx to convert to correct date format for R  
    df$Date.Entered <- df %>% dplyr::pull("Date.Entered") %>% openxlsx::convertToDate()
  # return the cleaned data frame  
    return(df)
  }
  else {
    return(df)
  }
}
