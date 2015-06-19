.class public Lcom/tencent/open/yyb/AppbarAgent;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.field public static final TO_APPBAR_DETAIL:Ljava/lang/String; = "siteIndex"
.field public static final TO_APPBAR_NEWS:Ljava/lang/String; = "myMessage"
.field public static final TO_APPBAR_SEND_BLOG:Ljava/lang/String; = "newThread"
.field public static wx_appid:Ljava/lang/String;
.field private a:Landroid/app/Activity;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "wx8e8dc60535c9cd93"
sput-object v0, Lcom/tencent/open/yyb/AppbarAgent;->wx_appid:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
return-void
.end method
.method private a()Ljava/lang/String;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_45
const-string/jumbo v1, "qOpenAppId"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "qOpenId"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "qAccessToken"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
const-string/jumbo v1, "qPackageName"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarAgent;->a(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/os/Bundle;)Ljava/lang/String;
.registers 7
if-eqz p1, :cond_8
invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-eqz v0, :cond_c
:cond_8
const-string/jumbo v0, ""
:goto_b
return-object v0
:cond_c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "&"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_19
:cond_3f
const/4 v0, 0x0
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method private a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "siteIndex"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
const-string/jumbo v0, "myMessage"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
const-string/jumbo v0, "newThread"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
:cond_1b
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method private b()Ljava/lang/String;
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const-string/jumbo v2, "com.tencent.android.qqdownloader"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_e
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_12
move-result-object v1
if-nez v1, :cond_17
:goto_11
return-object v0
:catch_12
move-exception v1
invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
goto :goto_11
:cond_17
iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
goto :goto_11
.end method
.method private b(Ljava/lang/String;)V
.registers 7
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
const-class v2, Lcom/tencent/open/yyb/AppbarActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "appid"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_61
new-instance v1, Lcom/tencent/open/yyb/b$a;
invoke-direct {v1}, Lcom/tencent/open/yyb/b$a;-><init>()V
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/tencent/open/yyb/b$a;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/open/yyb/b$a;->c:J
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/tencent/open/yyb/b$a;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarAgent;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v4
invoke-static {v1, p1, v2, v3, v4}, Lcom/tencent/open/yyb/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_61
const-string/jumbo v1, "url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->(AppbarAgent)startAppbar H5 : url = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_start_86
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:try_end_8b
.catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_8c
:goto_8b
return-void
:catch_8c
move-exception v0
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->(AppbarAgent)startAppbar : activity not found, start H5"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8b
.end method
.method private c(Ljava/lang/String;)Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "siteIndex"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_17
const-string/jumbo v1, "newThread"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2a
:cond_17
const-string/jumbo v1, "pkgName"
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarAgent;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_23
:goto_23
const-string/jumbo v1, "route"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_2a
const-string/jumbo v1, "myMessage"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_23
const-string/jumbo v1, "source"
const-string/jumbo v2, "myapp"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_23
.end method
.method private d(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "http://mq.wsq.qq.com/direct?"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarAgent;->c(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v1}, Lcom/tencent/open/yyb/AppbarAgent;->a(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public startAppbar(Ljava/lang/String;)V
.registers 7
invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarAgent;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
const-string/jumbo v1, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_13
return-void
:cond_14
invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarAgent;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarAgent;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_87
const-string/jumbo v2, "4.2"
invoke-static {v1, v2}, Lcom/tencent/utils/SystemUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_87
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarAgent;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "openSDK_LOG"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "-->(AppbarAgent)startAppbar : yybUrl = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_start_5a
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
const-string/jumbo v3, "com.tencent.android.qqdownloader"
const-string/jumbo v4, "com.tencent.assistant.activity.ExportBrowserActivity"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "com.tencent.assistant.BROWSER_URL"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarAgent;->a:Landroid/app/Activity;
invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:try_end_78
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_78} :catch_79
goto :goto_13
:catch_79
move-exception v1
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "-->(AppbarAgent)startAppbar : ExportBrowserActivity not found, start H5"
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarAgent;->b(Ljava/lang/String;)V
goto :goto_13
:cond_87
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarAgent;->b(Ljava/lang/String;)V
goto :goto_13
.end method