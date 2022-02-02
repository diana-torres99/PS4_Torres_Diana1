

# library -----------------------------------------------------------------
library(tidyverse)


# files -------------------------------------------------------------------
data_dir <- file.path('.', 'data')
download.file(url = 'http://www.equality-of-opportunity.org/data/college/mrc_table2.csv', destfile = file.path(data_dir, 'mrc.csv'))

mrc_subset <- read_csv(file = file.path(data_dir, 'mrc.csv'), col_names= c('name', 'par_q1', 'par_q2', 'par_q3', 'par_q4', 'par_q5'))


mrc_pivot <- mrc_subset %>% pivot_longer(!name, names_to = "quintile", names_prefix = "par_", values_to = "fraction")

#My guilty pleasure is eavesdropping on other people's conversations.