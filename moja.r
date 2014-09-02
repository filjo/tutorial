require(stringr)

theURL <- "http://www.log.gov/rr/print/list/057_chron.html"
con <- url("http://www.jaredlander.com/data/warTimes.rdata")
load(con)
close(con)

head(warTimes, 10)

#split
split1 <- str_split(string = warTimes,pattern = "(ACAEA)|-",n = 2)
head(split1, 10)

#trim, prvo mora da e vektor

split1 <- sapply(X = split1 , FUN = function(x) x[1])
split1 <- str_trim(split1)
head(split1, 30)

#detect

# detect1 <- str_detect(string = split1,pattern = ignore.case("September"))
# head(detect1, 10)
# remove(detect1)

#extract

# extract <- str_extract(string = split1 , pattern = ignore.case("september") )
# extract
 #replace

split1 <- str_replace_all(string = split1, pattern = "\\d{1,4}",replacement = "x")
head(split1, 30)

split2 <- str_replace_all(string = split1,pattern = "", replacement = "Y" )
head(split2, 30)


