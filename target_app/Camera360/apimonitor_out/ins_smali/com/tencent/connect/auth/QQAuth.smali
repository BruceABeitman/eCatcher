.class public Lcom/tencent/connect/auth/QQAuth;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static c:Ljava/util/HashMap;
.field private a:Lcom/tencent/connect/auth/AuthAgent;
.field private b:Lcom/tencent/connect/auth/QQToken;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "new Tencent() --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/connect/auth/QQToken;
invoke-direct {v0, p1}, Lcom/tencent/connect/auth/QQToken;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
new-instance v0, Lcom/tencent/connect/auth/AuthAgent;
iget-object v1, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-direct {v0, p2, v1}, Lcom/tencent/connect/auth/AuthAgent;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
iput-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->a:Lcom/tencent/connect/auth/AuthAgent;
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-static {p2, v0}, Lcom/tencent/connect/a/a;->c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "new Tencent() --end"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/QQAuth;
.registers 6
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/tencent/a/b/a;->a(Landroid/content/Context;)V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "createInstance() --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
if-nez v0, :cond_53
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
:try_start_1b
:cond_1b
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v1, Landroid/content/ComponentName;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "com.tencent.tauth.AuthActivity"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
new-instance v1, Landroid/content/ComponentName;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
:try_end_3f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_3f} :catch_6d
new-instance v0, Lcom/tencent/connect/auth/QQAuth;
invoke-direct {v0, p0, p1}, Lcom/tencent/connect/auth/QQAuth;-><init>(Ljava/lang/String;Landroid/content/Context;)V
sget-object v1, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "createInstance()  --end"
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_52
return-object v0
:cond_53
sget-object v0, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "createInstance() ,sessionMap.containsKey --end"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/tencent/connect/auth/QQAuth;->c:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/connect/auth/QQAuth;
goto :goto_52
:catch_6d
move-exception v0
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "createInstance() error --end"
invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v0, 0x0
goto :goto_52
.end method
.method public getQQToken()Lcom/tencent/connect/auth/QQToken;
.registers 2
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
return-object v0
.end method
.method public isSessionValid()Z
.registers 4
const-string/jumbo v1, "openSDK_LOG"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "isSessionValid(), result = "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v0
if-eqz v0, :cond_33
const-string/jumbo v0, "true"
:goto_1a
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v0
return v0
:cond_33
const-string/jumbo v0, "false"
goto :goto_1a
.end method
.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
.registers 6
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "login()"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, ""
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/connect/auth/QQAuth;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
.registers 12
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->login activity: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/16 v1, 0x80
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_31
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b4
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ApplicationInfo;
iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_31
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
:goto_47
if-eqz v0, :cond_a1
:try_start_49
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/tencent/utils/ApkExternalInfoTool;->readChannelId(Ljava/io/File;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a1
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->login channelId: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v6, ""
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, v4
invoke-virtual/range {v0 .. v6}, Lcom/tencent/connect/auth/QQAuth;->loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
:try_end_7d
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_7d} :catch_7f
move-result v0
:goto_7e
return v0
:catch_7f
move-exception v0
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->login get channel id exception."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_a1
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->login channelId is null "
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->a:Lcom/tencent/connect/auth/AuthAgent;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
move-result v0
goto :goto_7e
:cond_b4
move-object v0, v1
goto :goto_47
.end method
.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.registers 9
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "loginWithOEM"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z
const-string/jumbo v0, ""
invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const-string/jumbo p4, "null"
:cond_18
const-string/jumbo v0, ""
invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
const-string/jumbo p5, "null"
:cond_24
const-string/jumbo v0, ""
invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
const-string/jumbo p6, "null"
:cond_30
sput-object p5, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;
sput-object p4, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;
sput-object p6, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->a:Lcom/tencent/connect/auth/AuthAgent;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
move-result v0
return v0
.end method
.method public logout(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "logout() --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-virtual {p0, v2, v2}, Lcom/tencent/connect/auth/QQAuth;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1, v2}, Lcom/tencent/connect/auth/QQAuth;->setOpenId(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "logout() --end"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)Z
.registers 7
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "onActivityResult() ,resultCode = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->a:Lcom/tencent/connect/auth/AuthAgent;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/AuthAgent;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, 0x1
return v0
.end method
.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
.registers 10
const/4 v4, 0x1
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "reAuth()"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->a:Lcom/tencent/connect/auth/AuthAgent;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v5, v4
invoke-virtual/range {v0 .. v5}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZZ)I
move-result v0
return v0
.end method
.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "setAccessToken(), validTimeInSecond = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setOpenId(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "setOpenId() --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0, p2}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/QQAuth;->b:Lcom/tencent/connect/auth/QQToken;
invoke-static {p1, v0}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "setOpenId() --end"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method