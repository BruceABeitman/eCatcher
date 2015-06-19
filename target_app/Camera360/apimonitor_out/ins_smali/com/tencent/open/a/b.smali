.class public Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static a:Lcom/tencent/open/a/b;
.field private b:J
.field private c:I
.field private d:Z
.field private e:Ljava/util/Random;
.field private f:Lcom/tencent/open/a/d;
.field private g:Ljava/util/ArrayList;
.field private h:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/open/a/b;->a:Lcom/tencent/open/a/b;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/tencent/open/a/b;->b:J
const/4 v0, 0x3
iput v0, p0, Lcom/tencent/open/a/b;->c:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/open/a/b;->d:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
iput-object v0, p0, Lcom/tencent/open/a/b;->e:Ljava/util/Random;
return-void
.end method
.method static synthetic a(Lcom/tencent/open/a/b;)I
.registers 2
iget v0, p0, Lcom/tencent/open/a/b;->c:I
return v0
.end method
.method static synthetic a(Lcom/tencent/open/a/b;I)I
.registers 2
iput p1, p0, Lcom/tencent/open/a/b;->c:I
return p1
.end method
.method public static a()Lcom/tencent/open/a/b;
.registers 1
sget-object v0, Lcom/tencent/open/a/b;->a:Lcom/tencent/open/a/b;
if-nez v0, :cond_b
new-instance v0, Lcom/tencent/open/a/b;
invoke-direct {v0}, Lcom/tencent/open/a/b;-><init>()V
sput-object v0, Lcom/tencent/open/a/b;->a:Lcom/tencent/open/a/b;
:cond_b
sget-object v0, Lcom/tencent/open/a/b;->a:Lcom/tencent/open/a/b;
return-object v0
.end method
.method private a(Landroid/content/Context;)Ljava/lang/String;
.registers 6
:try_start_0
const-string/jumbo v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_18
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager getAPN failed:ConnectivityManager == null"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "no_net"
:goto_17
return-object v0
:cond_18
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v1
if-nez v1, :cond_31
:cond_24
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager getAPN failed:NetworkInfo == null"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "no_net"
goto :goto_17
:cond_31
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "WIFI"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager getAPN type = wifi"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "wifi"
goto :goto_17
:cond_4f
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_62
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager getAPN failed:extraInfo == null"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "mobile_unknow"
goto :goto_17
:cond_62
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "cgi_report_debug"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "ReportManager getAPN type = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_80
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81
goto :goto_17
:catch_81
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "unknow"
goto :goto_17
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager doUpload start"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/tencent/open/a/b;->d:Z
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
invoke-virtual {v0}, Lcom/tencent/open/a/d;->c()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
invoke-virtual {v0}, Lcom/tencent/open/a/d;->b()Z
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
invoke-virtual {v0}, Lcom/tencent/open/a/d;->d()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
invoke-virtual {v0}, Lcom/tencent/open/a/d;->a()Z
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v0, "appid"
invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "releaseversion"
const-string/jumbo v1, "QQConnect_SDK_Android_1_7"
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "device"
sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "qua"
const-string/jumbo v1, "V1_AND_OpenSDK_2.3_1077_RDM_B"
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "key"
const-string/jumbo v1, "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,deviceinfo"
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
move v1, v0
:goto_56
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1b3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_1"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_2"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_3"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_4"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_5"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_6"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_7"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "_8"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/tencent/open/a/c;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->i()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "_9"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_56
:cond_1b3
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
move v1, v0
:goto_1ba
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v3, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/2addr v0, v3
if-ge v1, v0, :cond_326
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
sub-int v3, v1, v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_1"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_2"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_3"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_4"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_5"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_6"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_7"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "_8"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/tencent/open/a/c;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v0, p0, Lcom/tencent/open/a/b;->h:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/open/a/a;
invoke-virtual {v0}, Lcom/tencent/open/a/a;->i()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "_9"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_1ba
:cond_326
const-string/jumbo v0, "http://wspeed.qq.com/w.cgi"
const-string/jumbo v1, "POST"
invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V
.registers 26
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
sub-long v7, v2, p3
const-string/jumbo v2, "cgi_report_debug"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "ReportManager updateDB url="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p2
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ",resultCode="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, p9
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ",timeCost="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ",reqSize="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-wide/from16 v0, p5
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ",rspSize="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-wide/from16 v0, p7
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move/from16 v0, p9
invoke-direct {p0, p1, v0}, Lcom/tencent/open/a/b;->b(Landroid/content/Context;I)I
move-result v2
const/16 v3, 0x64
div-int v2, v3, v2
if-gtz v2, :cond_8a
const/4 v2, 0x1
move v4, v2
:goto_62
invoke-direct {p0, p1}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
iget-object v2, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v5, p2
move/from16 v6, p9
move-wide/from16 v9, p5
move-wide/from16 v11, p7
move-object/from16 v13, p11
invoke-virtual/range {v2 .. v13}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)Z
return-void
:cond_8a
const/16 v3, 0x64
if-le v2, v3, :cond_92
const/16 v2, 0x64
move v4, v2
goto :goto_62
:cond_92
move v4, v2
goto :goto_62
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 6
new-instance v0, Lcom/tencent/open/a/b$1;
invoke-direct {v0, p0, p2, p1, p4}, Lcom/tencent/open/a/b$1;-><init>(Lcom/tencent/open/a/b;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
invoke-virtual {v0}, Lcom/tencent/open/a/b$1;->start()V
return-void
.end method
.method private a(Landroid/content/Context;I)Z
.registers 6
invoke-direct {p0, p1, p2}, Lcom/tencent/open/a/b;->b(Landroid/content/Context;I)I
move-result v0
iget-object v1, p0, Lcom/tencent/open/a/b;->e:Ljava/util/Random;
const/16 v2, 0x64
invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I
move-result v1
if-ge v1, v0, :cond_19
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForFrequency = ture"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
:goto_18
return v0
:cond_19
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForFrequency = false"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_18
.end method
.method static synthetic a(Lcom/tencent/open/a/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/tencent/open/a/b;->d:Z
return p1
.end method
.method private b(Landroid/content/Context;I)I
.registers 7
const/4 v0, 0x0
if-nez p2, :cond_47
invoke-static {p1, v0}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v0
const-string/jumbo v1, "Common_CGIReportFrequencySuccess"
invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v0
const-string/jumbo v1, "OpenConfig_agent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 4:Common_CGIReportFrequencySuccess     config_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez v0, :cond_2c
const/16 v0, 0xa
:cond_2c
const-string/jumbo v1, "OpenConfig_agent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 4:Common_CGIReportFrequencySuccess     result_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_46
return v0
:cond_47
invoke-static {p1, v0}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v0
const-string/jumbo v1, "Common_CGIReportFrequencyFailed"
invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v0
const-string/jumbo v1, "OpenConfig_agent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 4:Common_CGIReportFrequencyFailed     config_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez v0, :cond_70
const/16 v0, 0x64
:cond_70
const-string/jumbo v1, "OpenConfig_agent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 4:Common_CGIReportFrequencyFailed     result_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_46
.end method
.method static synthetic b(Lcom/tencent/open/a/b;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/util/ArrayList;
return-object v0
.end method
.method private b(Landroid/content/Context;)Z
.registers 10
const-wide/16 v6, 0x0
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v0
const-string/jumbo v1, "Common_CGIReportTimeinterval"
invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getLong(Ljava/lang/String;)J
move-result-wide v0
const-string/jumbo v2, "OpenConfig_test"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "config 5:Common_CGIReportTimeinterval     config_value:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
cmp-long v2, v0, v6
if-nez v2, :cond_2e
const-wide/16 v0, 0x4b0
:cond_2e
const-string/jumbo v2, "OpenConfig_test"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "config 5:Common_CGIReportTimeinterval     result_value:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
iget-wide v4, p0, Lcom/tencent/open/a/b;->b:J
cmp-long v4, v4, v6
if-eqz v4, :cond_5c
iget-wide v4, p0, Lcom/tencent/open/a/b;->b:J
add-long/2addr v0, v4
cmp-long v0, v0, v2
if-gtz v0, :cond_69
:cond_5c
iput-wide v2, p0, Lcom/tencent/open/a/b;->b:J
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForTime = ture"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
:goto_68
return v0
:cond_69
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForTime = false"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_68
.end method
.method static synthetic c(Lcom/tencent/open/a/b;)Lcom/tencent/open/a/d;
.registers 2
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
return-object v0
.end method
.method private c(Landroid/content/Context;)Z
.registers 6
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v0
const-string/jumbo v1, "Common_CGIReportMaxcount"
invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v0
const-string/jumbo v1, "OpenConfig_test"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 6:Common_CGIReportMaxcount     config_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez v0, :cond_2a
const/16 v0, 0x14
:cond_2a
const-string/jumbo v1, "OpenConfig_test"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "config 6:Common_CGIReportMaxcount     result_value:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
invoke-virtual {v1}, Lcom/tencent/open/a/d;->e()I
move-result v1
if-lt v1, v0, :cond_57
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForCount = ture"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
:goto_56
return v0
:cond_57
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportManager availableForCount = false"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_56
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
.registers 24
const-string/jumbo v11, ""
const/4 v12, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-wide/from16 v3, p3
move-wide/from16 v5, p5
move-wide/from16 v7, p7
move/from16 v9, p9
move-object/from16 v10, p10
invoke-virtual/range {v0 .. v12}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v1, 0x1
if-nez p12, :cond_6
const-string/jumbo p12, "1000067"
:cond_6
iget-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
if-nez v0, :cond_11
new-instance v0, Lcom/tencent/open/a/d;
invoke-direct {v0, p1}, Lcom/tencent/open/a/d;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/a/b;->f:Lcom/tencent/open/a/d;
:cond_11
invoke-direct {p0, p1, p9}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;I)Z
move-result v0
if-ne v0, v1, :cond_1e
invoke-direct/range {p0 .. p11}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/tencent/open/a/b;->d:Z
if-ne v0, v1, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-direct {p0, p1}, Lcom/tencent/open/a/b;->b(Landroid/content/Context;)Z
move-result v0
if-ne v0, v1, :cond_29
invoke-direct {p0, p1, p12}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_1e
:cond_29
invoke-direct {p0, p1}, Lcom/tencent/open/a/b;->c(Landroid/content/Context;)Z
move-result v0
if-ne v0, v1, :cond_1e
invoke-direct {p0, p1, p12}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_1e
.end method