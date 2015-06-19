.class final Lcom/bbm/ui/activities/adl;
.super Lcom/bbm/util/b;
.source "ReportProblemActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;
.field private b:Lcom/bbm/ui/activities/adk;
.method private constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/adl;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/adl;)Lcom/bbm/ui/activities/adk;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
return-object v0
.end method
.method private varargs a([Lcom/bbm/ui/activities/adk;)Ljava/lang/Boolean;
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
array-length v0, p1
if-eq v0, v1, :cond_11
const-string v0, "Failed sending log report"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_10
return-object v0
:cond_11
aget-object v0, p1, v2
iput-object v0, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
:try_start_15
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->s()Landroid/content/pm/PackageInfo;
:try_end_1c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1c} :catch_59
move-result-object v3
:try_start_1d
new-instance v0, Ljava/net/URL;
const-string v4, "https://consumersupport.webapps.blackberry.com/gateway-ws/GatewayServlet"
invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_24
.catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_24} :catch_62
:try_start_24
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
:try_end_2a
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_6b
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
:try_start_30
const-string v4, "POST"
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
:try_end_35
.catch Ljava/net/ProtocolException; {:try_start_30 .. :try_end_35} :catch_74
const-string v4, "Content-Type"
const-string v5, "application/x-www-form-urlencoded;charset=utf-8"
invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v4, v4, Lcom/bbm/ui/activities/adk;->d:Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v4
const-wide/32 v6, 0x300000
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v4
long-to-int v4, v4
iget-object v5, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v5
if-eqz v5, :cond_7d
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_10
:catch_59
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_10
:catch_62
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_10
:catch_6b
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_10
:catch_74
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_10
:try_start_7d
:cond_7d
new-instance v5, Ljava/io/OutputStreamWriter;
new-instance v6, Ljava/io/BufferedOutputStream;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v7
invoke-direct {v6, v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
const-string v7, "UTF-8"
invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Ticket="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v7, v7, Lcom/bbm/ui/activities/adk;->b:Ljava/lang/String;
invoke-static {v7}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&ClientAppID="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v7, "BBM on Android"
invoke-static {v7}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
if-nez v6, :cond_252
const-string v3, "Unknown"
:goto_c5
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&ClientAppVer="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
const-string v3, "Android-%s-%s-%s"
const/4 v6, 0x3
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
aput-object v8, v6, v7
const/4 v7, 0x1
sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v8, v6, v7
const/4 v7, 0x2
sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
aput-object v8, v6, v7
invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&DeviceID="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&DevicePIN="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v6, v6, Lcom/bbm/ui/activities/adk;->a:Ljava/lang/String;
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&Email="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v6, v6, Lcom/bbm/ui/activities/adk;->c:Ljava/lang/String;
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&FileName="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v6, v6, Lcom/bbm/ui/activities/adk;->d:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v3
sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&LanguageISOCode="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&MessageID="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "{"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v7
invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "}"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&MessageTypeID="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v6, "PlayBookHelpLog"
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&MessageTypeVer="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v6, "1.0"
invoke-static {v6}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/text/SimpleDateFormat;
const-string v6, "EEE MMM d HH:mm:ss yyyy"
sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v6, Ljava/util/Date;
invoke-direct {v6}, Ljava/util/Date;-><init>()V
invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v3
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&TimeStamp="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "&FileSize="
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v6, v6, Lcom/bbm/ui/activities/adk;->d:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->length()J
move-result-wide v6
invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
:try_start_224
:try_end_224
.catch Ljava/io/IOException; {:try_start_7d .. :try_end_224} :catch_27b
new-instance v3, Ljava/io/BufferedInputStream;
new-instance v6, Ljava/io/FileInputStream;
iget-object v7, p0, Lcom/bbm/ui/activities/adl;->b:Lcom/bbm/ui/activities/adk;
iget-object v7, v7, Lcom/bbm/ui/activities/adk;->d:Ljava/io/File;
invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v3, v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:try_start_232
:try_end_232
.catch Ljava/io/FileNotFoundException; {:try_start_224 .. :try_end_232} :catch_256
.catch Ljava/io/IOException; {:try_start_224 .. :try_end_232} :catch_27b
const-string v6, "&FileContents="
invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
new-array v4, v4, [B
:goto_239
invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I
move-result v6
const/4 v7, -0x1
if-eq v6, v7, :cond_285
iget-object v7, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v7
if-eqz v7, :cond_261
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:cond_252
iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
goto/16 :goto_c5
:catch_256
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:cond_261
const/4 v7, 0x0
const/4 v8, 0x2
invoke-static {v4, v7, v6, v8}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
move-result-object v6
const-string v7, "+"
const-string v8, "%2B"
invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v6
const-string v7, "/"
const-string v8, "%2F"
invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
:try_end_27a
.catch Ljava/io/IOException; {:try_start_232 .. :try_end_27a} :catch_27b
goto :goto_239
:catch_27b
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:cond_285
:try_start_285
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
iget-object v3, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v3
if-eqz v3, :cond_297
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:cond_297
invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
:try_end_29a
.catch Ljava/io/IOException; {:try_start_285 .. :try_end_29a} :catch_27b
iget-object v3, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v3
if-eqz v3, :cond_2a8
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:try_start_2a8
:cond_2a8
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
packed-switch v3, :pswitch_data_2ea
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "ReportProblem: upload not accepted: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ". Headers: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_2d6
.catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2d6} :catch_2e0
move v1, v2
:pswitch_2d7
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:catch_2e0
move-exception v1
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_10
:pswitch_data_2ea
.packed-switch 0xca
:pswitch_2d7
.end packed-switch
.end method
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/bbm/ui/activities/adk;
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/adl;->a([Lcom/bbm/ui/activities/adk;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_47
iget-object v0, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->o(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v0, Lcom/bbm/ui/b/o;
iget-object v1, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e060f
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e061c
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e0635
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/ui/activities/adm;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/adm;-><init>(Lcom/bbm/ui/activities/adl;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/ui/activities/adn;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/adn;-><init>(Lcom/bbm/ui/activities/adl;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_46
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
:goto_46
:cond_46
return-void
:cond_47
iget-object v0, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->c(Lcom/bbm/ui/activities/ReportProblemActivity;)V
goto :goto_46
.end method