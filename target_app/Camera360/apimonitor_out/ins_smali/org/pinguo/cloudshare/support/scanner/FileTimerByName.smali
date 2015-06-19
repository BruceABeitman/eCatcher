.class public Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;
.super Ljava/lang/Object;
.source "FileTimerByName.java"
.field public static TIME_FORMAT:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"
sput-object v0, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;->TIME_FORMAT:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private getSecondsTime(Ljava/lang/String;Ljava/lang/String;)J
.registers 8
const-wide/16 v2, 0x0
:try_start_2
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_1d
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_1d
new-instance v1, Ljava/text/SimpleDateFormat;
sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v1, p2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v4
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
:try_end_1c
.catchall {:try_start_2 .. :try_end_1c} :catchall_23
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1e
move-result-wide v2
:goto_1d
:cond_1d
return-wide v2
:catch_1e
move-exception v0
:try_start_1f
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_23
goto :goto_1d
:catchall_23
move-exception v4
goto :goto_1d
.end method
.method public getFileTime(Ljava/lang/String;)J
.registers 9
const-string/jumbo v5, "/"
invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v5, v2
add-int/lit8 v5, v5, -0x1
aget-object v1, v2, v5
const/4 v5, 0x5
const/16 v6, 0x18
invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
sget-object v5, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;->TIME_FORMAT:Ljava/lang/String;
invoke-direct {p0, v0, v5}, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;->getSecondsTime(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v3
return-wide v3
.end method