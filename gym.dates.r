fn <- "push_ups.dates"
if (file.exists(fn)) file.remove(fn)

yyyy <- "2016"
mm   <- "01"
dd   <- seq(1,31,by=1)
p    <- " 0"
zero <- "0"

# Write date and 0 push-ups to file
logFile = "push_ups.dates"

for (k in 1:31) {
    ddStr <- toString(dd[k])
    if (k < 10) {
        txt <- paste(yyyy,mm,zero,ddStr,p,sep="")
    }
    else {
        txt <- paste(yyyy,mm,ddStr,p,sep="")
    }
    cat(txt, file=logFile, append=TRUE, sep = "\n")
}
