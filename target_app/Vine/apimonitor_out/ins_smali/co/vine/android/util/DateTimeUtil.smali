.class public Lco/vine/android/util/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearTime(Ljava/util/Calendar;)Ljava/util/Calendar;
.registers 3
const/4 v1, 0x0
const/16 v0, 0xb
invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xa
invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xc
invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xd
invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V
const/16 v0, 0xe
invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V
return-object p0
.end method
.method public static getStartOfDay()Ljava/util/Calendar;
.registers 1
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-static {v0}, Lco/vine/android/util/DateTimeUtil;->clearTime(Ljava/util/Calendar;)Ljava/util/Calendar;
move-result-object v0
return-object v0
.end method
.method public static getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
.registers 11
new-instance v3, Ljava/text/SimpleDateFormat;
sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v3, p1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
const-wide/16 v4, 0x0
:try_start_9
invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v4
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v6
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I
:try_end_21
.catch Ljava/text/ParseException; {:try_start_9 .. :try_end_21} :catch_25
move-result v2
int-to-long v7, v2
add-long/2addr v4, v7
:goto_24
return-wide v4
:catch_25
move-exception v7
goto :goto_24
.end method
.method public static getTimeInStringFromMs(JLjava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/text/SimpleDateFormat;
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method