####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

# IO (input / output) operations

# r base
# read.delim2(): delimited files (CSV and TSV are important special cases)

####################################################################################################

# install dependency
install.packages('readr')

# load package
library(readr)

# read_csv(): comma-separated values (CSV)
# read_tsv(): tab-separated values (TSV)
# read_csv2(): semicolon-separated values with , as the decimal mark
# read_delim(): delimited files (CSV and TSV are important special cases)
# read_fwf(): fixed-width files
# read_table(): whitespace-separated files
# read_log(): web log files

# read file
# readr::read_delim()

# list possible examples
readr_example()

# display example path
readr_example('chickens.csv')

# load example
chickens <- read_delim(readr_example('chickens.csv'))

# view data
print(chickens)

# display column classes
spec(chickens)

# coerce types
chickens <- read_delim(
  readr_example('chickens.csv'),
  col_types = cols(
    chicken   = col_character(),
    sex       = col_factor(levels = c('rooster', 'hen')),
    eggs_laid = col_integer(),
    motto     = col_character()
  )
)

# view data
print(chickens)

# display column classes
spec(chickens)

# coerce types on specific column
chickens <- read_delim(
  readr_example('chickens.csv'),
  col_types = cols(
    eggs_laid = col_integer(),
  )
)

# read files with empty rows
read_delim_chunked() # NOT RUN

####################################################################################################

# install dependency
install.packages('readxl')

# load package
library(readxl)

# read_xls(): legacy .xls format
# read_xlsx(): modern xml-based .xlsx format

# read excel
# readxl::read_excel()

# list possible examples
readxl_example()

# display example path
readxl_example('clippy.xls')

# declare example
xlsx_example <- readxl_example('datasets.xls')

# load example
read_excel(xlsx_example)

# list sheet names
excel_sheets(xlsx_example)

# specify sheet: name | number
read_excel(xlsx_example, sheet = 'chickwts')
read_excel(xlsx_example, sheet = 4)

# specify values to load
read_excel(xlsx_example, n_max = 3)
read_excel(xlsx_example, range = 'C1:E4')
read_excel(xlsx_example, range = cell_rows(1:4))
read_excel(xlsx_example, range = cell_cols('B:D'))
read_excel(xlsx_example, range = 'mtcars!B1:D5')

# set values to not-available
iris_setosa_na <- read_excel(xlsx_example, na = 'setosa')
print(table(iris_setosa_na$Species))

iris_setosa_versi_na <- read_excel(xlsx_example, na = c('setosa', 'versicolor'))
print(table(iris_setosa_versi_na$Species))

####################################################################################################

# write file
# readr::write_delim()

# write_delim(): delimited files
# write_csv(): comma-separated values (CSV)
# write_tsv(): tab-separated values (TSV)
# write_excel_csv(): excel-compatible
# write_rds(): R objects

####################################################################################################

# read rds object
# read_rds(): R objects

####################################################################################################

# install dependency
install.packages('haven')

# load package
library(haven)

# SAS: read_sas() reads .sas7bdat + .sas7bcat files and read_xpt() reads SAS transport files (versions 5 and 8). write_xpt() writes SAS transport files (versions 5 and 8)
# SPSS: read_sav() reads .sav files and read_por() reads the older .por files. write_sav() writes .sav files
# Stata: read_dta() reads .dta files (up to version 15). write_dta() writes .dta files (versions 8-15)

# SAS
write_xpt(mtcars, 'mtcars.xpt')
read_sas('mtcars.sas7bdat')

# SPSS
write_sav(mtcars, 'mtcars.sav')
read_sav('mtcars.sav')

# Stata
write_dta(mtcars, 'mtcars.dta')
read_dta('mtcars.dta')

####################################################################################################
#######                                         END                                          #######
####################################################################################################
