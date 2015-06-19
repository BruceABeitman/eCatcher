.class public final Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String; = null
.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date; = null
.field public static final GMT:Ljava/util/TimeZone; = null
.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"
.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"
.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"
.method static constructor <clinit>()V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"
aput-object v1, v0, v2
const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v4, "EEE MMM d HH:mm:ss yyyy"
aput-object v4, v0, v1
sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;
const-string v0, "GMT"
invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;
invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
const/16 v1, 0x7d0
move v4, v2
move v5, v2
move v6, v2
invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V
const/16 v1, 0xe
invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V
invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
.registers 2
const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"
invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "date is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "pattern is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0, v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
.registers 6
const/4 v1, 0x1
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "dateValue is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p1, :cond_f
sget-object p1, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;
:cond_f
if-nez p2, :cond_13
sget-object p2, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;
:cond_13
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_33
const-string v0, "\'"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const-string v0, "\'"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
:cond_33
array-length v1, p1
const/4 v0, 0x0
:goto_35
if-ge v0, v1, :cond_49
aget-object v2, p1, v0
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V
:try_start_40
invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_43
.catch Ljava/text/ParseException; {:try_start_40 .. :try_end_43} :catch_45
move-result-object v0
return-object v0
:catch_45
move-exception v2
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_49
new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/DateParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unable to parse the date "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateParseException;-><init>(Ljava/lang/String;)V
throw v0
.end method