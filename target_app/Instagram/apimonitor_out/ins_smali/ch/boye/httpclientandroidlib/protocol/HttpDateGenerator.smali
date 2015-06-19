.class public Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;
.super Ljava/lang/Object;
.source "HttpDateGenerator.java"
.field public static final GMT:Ljava/util/TimeZone; = null
.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"
.field private dateAsLong:J
.field private dateAsText:Ljava/lang/String;
.field private final dateformat:Ljava/text/DateFormat;
.method static constructor <clinit>()V
.registers 1
const-string v0, "GMT"
invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsLong:J
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;
sget-object v1, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
return-void
.end method
.method public declared-synchronized getCurrentDate()Ljava/lang/String;
.registers 7
monitor-enter p0
:try_start_1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsLong:J
sub-long v2, v0, v2
const-wide/16 v4, 0x3e8
cmp-long v2, v2, v4
if-lez v2, :cond_1e
iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;
new-instance v3, Ljava/util/Date;
invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;
iput-wide v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsLong:J
:cond_1e
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_22
monitor-exit p0
return-object v0
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method