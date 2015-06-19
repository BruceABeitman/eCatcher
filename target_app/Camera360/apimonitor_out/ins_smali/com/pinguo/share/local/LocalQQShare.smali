.class public Lcom/pinguo/share/local/LocalQQShare;
.super Ljava/lang/Object;
.source "LocalQQShare.java"
.field private mQQAuth:Lcom/tencent/connect/auth/QQAuth;
.field private mQQShare:Lcom/tencent/connect/share/QQShare;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/local/LocalQQShare;)Lcom/tencent/connect/share/QQShare;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQShare:Lcom/tencent/connect/share/QQShare;
return-object v0
.end method
.method private checkQQAuthInstance(Landroid/app/Activity;)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
if-nez v0, :cond_c
sget-object v0, Lcom/pinguo/share/ShareConstants;->QQ_APPKEY:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/tencent/connect/auth/QQAuth;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/QQAuth;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
:cond_c
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private checkQQShareInstance(Landroid/app/Activity;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
if-nez v0, :cond_c
invoke-direct {p0, p1}, Lcom/pinguo/share/local/LocalQQShare;->checkQQAuthInstance(Landroid/app/Activity;)Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQShare:Lcom/tencent/connect/share/QQShare;
if-nez v0, :cond_1d
new-instance v0, Lcom/tencent/connect/share/QQShare;
iget-object v1, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
iput-object v0, p0, Lcom/pinguo/share/local/LocalQQShare;->mQQShare:Lcom/tencent/connect/share/QQShare;
:cond_1d
const/4 v0, 0x1
goto :goto_b
.end method
.method public static validateInstall(Landroid/content/Context;)Z
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v1, 0x0
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string/jumbo v4, "com.tencent.mobileqq"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
if-eqz v1, :cond_19
iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:try_end_13
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_1b
const/16 v4, 0x32
if-lt v3, v4, :cond_18
const/4 v2, 0x1
:cond_18
:goto_18
return v2
:cond_19
const/4 v2, 0x0
goto :goto_18
:catch_1b
move-exception v0
const/4 v2, 0x0
goto :goto_18
.end method
.method public sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f08026b
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p6
move-object v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v7}, Lcom/pinguo/share/local/LocalQQShare;->sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v0, 0x0
and-int/lit8 v0, v0, -0x2
and-int/lit8 v0, v0, -0x3
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "title"
invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "targetUrl"
invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "summary"
invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "imageUrl"
invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "appName"
invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "req_type"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v2, "cflag"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-direct {p0, p1}, Lcom/pinguo/share/local/LocalQQShare;->checkQQShareInstance(Landroid/app/Activity;)Z
move-result v2
if-nez v2, :cond_44
if-eqz p2, :cond_43
const-string/jumbo v2, "Failed to create QQShare instance!"
invoke-interface {p2, v2}, Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;->onFailed(Ljava/lang/String;)V
:goto_43
:cond_43
return-void
:cond_44
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/pinguo/share/local/LocalQQShare$1;
invoke-direct {v3, p0, p1, v1, p2}, Lcom/pinguo/share/local/LocalQQShare$1;-><init>(Lcom/pinguo/share/local/LocalQQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;)V
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
goto :goto_43
.end method