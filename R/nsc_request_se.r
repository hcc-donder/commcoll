#' Create a National Student Clearinghouse Subsequent Enrollment (SE) request file
#'
#' Create a National Student Clearinghouse Subsequent Enrollment (SE) request file
#' in the required format. This requires a config file which contains required
#' elements. DOB must be either a date or a character string with format "%Y%m%d".
#'
#' @param df Dataframe to convert into format for submission to NSC
#' @param config A configuration dataframe for NSC files
#' @param path Path where NSC file will be saved (default=getwd())
#' @param fn Name of the NSC file (default=same name as the dataframe with "_SE.tsv" appended)
#' @param search If the dataframe does not include a 'Search Begin Date' field, this will be used (default=TODAY)
#' @export
#' @importFrom magrittr %<>%
#'
nsc_request_se <- function(df,
                           config,
                           path=getwd(),
                           fn=paste0(deparse(substitute(df)),"_SE.tsv"),
                           search=format(Sys.Date(),"%Y%m%d")) {

    return(nsc_request(df,config,path=path,fn=fn,search=search,inquiryType="SE",enrolledStudents=FALSE))
}
