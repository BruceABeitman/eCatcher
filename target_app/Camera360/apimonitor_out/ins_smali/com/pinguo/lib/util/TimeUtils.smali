.class public final Lcom/pinguo/lib/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"
.field public static final DATE_FORMAT_DAY:Ljava/lang/String; = "yyyyMMdd"
.field public static final DATE_FORMAT_HYPHEN:Ljava/lang/String; = "yyyy-MM-dd"
.field public static final DATE_FORMAT_MIL:Ljava/lang/String; = "yyyyMMdd-HH:mm:ss.SSS"
.field public static final DATE_FORMAT_MIN:Ljava/lang/String; = "yyyyMMdd-HH:mm"
.field public static final DATE_FORMAT_SEC:Ljava/lang/String; = "yyyyMMdd-HH:mm:ss"
.field public static final DATE_FORMAT_SEC_HYPHEN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"
.field public static final MILLIS_OF_A_DAY:J = 0x5265c00L
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.registers 7
const/4 v2, 0x0
if-eqz p0, :cond_10
const-string/jumbo v3, ""
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_11
:cond_10
:goto_10
return-object v2
:cond_11
new-instance v1, Ljava/text/SimpleDateFormat;
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
:try_start_18
invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_1b
.catch Ljava/text/ParseException; {:try_start_18 .. :try_end_1b} :catch_1d
move-result-object v2
goto :goto_10
:catch_1d
move-exception v0
goto :goto_10
.end method
.method public static getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
.registers 3
new-instance v0, Ljava/text/SimpleDateFormat;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
return-object v0
.end method
.method public static getDaysFrom1970()J
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/32 v2, 0x5265c00
div-long/2addr v0, v2
return-wide v0
.end method
.method public static getStringDate(JLjava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p2}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
move-result-object v0
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getTimeStamp(Ljava/lang/String;Ljava/lang/String;)J
.registers 11
new-instance v4, Ljava/text/SimpleDateFormat;
sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v4, p1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
:try_start_7
invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v5
const-wide/16 v7, 0x3e8
div-long v2, v5, v7
:try_end_13
.catch Ljava/text/ParseException; {:try_start_7 .. :try_end_13} :catch_14
:goto_13
return-wide v2
:catch_14
move-exception v1
const-wide/16 v2, 0x0
goto :goto_13
.end method