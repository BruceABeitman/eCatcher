.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"
.field private mAgent:Lcom/tencent/open/yyb/AppbarAgent;
.field private mContext:Landroid/content/Context;
.field private mLocationApi:Lcom/tencent/open/LocationApi;
.field private mQQAuth:Lcom/tencent/connect/auth/QQAuth;
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
invoke-static {p1, p2}, Lcom/tencent/connect/auth/QQAuth;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/QQAuth;
move-result-object v0
iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
return-void
.end method
.method private static checkManifestConfig(Landroid/content/Context;Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
:try_start_1
new-instance v1, Landroid/content/ComponentName;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "com.tencent.tauth.AuthActivity"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
:try_start_15
:try_end_15
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_2b
new-instance v1, Landroid/content/ComponentName;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
:try_end_29
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_29} :catch_7e
const/4 v0, 0x1
:goto_2a
return v0
:catch_2b
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.open.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.util.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\" />\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "</intent-filter>\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "</activity>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;
const-string/jumbo v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"
invoke-static {v2, v1}, Lcom/tencent/a/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2a
:catch_7e
move-exception v1
const-string/jumbo v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"portrait\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;
const-string/jumbo v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity"
invoke-static {v2, v1}, Lcom/tencent/a/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2a
.end method
.method public static createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
.registers 5
new-instance v0, Lcom/tencent/tauth/Tencent;
invoke-direct {v0, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V
invoke-static {p1, p0}, Lcom/tencent/tauth/Tencent;->checkManifestConfig(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_d
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "createInstance()  --end"
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
.end method
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public deleteLocation(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
if-nez v0, :cond_11
new-instance v0, Lcom/tencent/open/LocationApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/LocationApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
:cond_11
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/LocationApi;->deleteLocation(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public getAccessToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getAppId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getExpiresIn()J
.registers 3
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getExpireTimeInSecond()J
move-result-wide v0
return-wide v0
.end method
.method public getOpenId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getQQToken()Lcom/tencent/connect/auth/QQToken;
.registers 2
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
return-object v0
.end method
.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public isReady()Z
.registers 2
invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isSessionValid()Z
.registers 2
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->isSessionValid()Z
move-result v0
return v0
.end method
.method public isSupportSSOLogin(Landroid/app/Activity;)Z
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "com.tencent.mobileqq"
invoke-static {p1, v1}, Lcom/tencent/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_15
const-string/jumbo v1, "\u6ca1\u6709\u5b89\u88c5\u624bQ"
invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_14
return v0
:cond_15
invoke-static {p1}, Lcom/tencent/utils/SystemUtils;->checkMobileQQ(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_27
const-string/jumbo v1, "\u5df2\u5b89\u88c5\u7684\u624bQ\u7248\u672c\u652f\u6301SSO\u767b\u9646"
invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v0, 0x1
goto :goto_14
:cond_27
const-string/jumbo v1, "\u5df2\u5b89\u88c5\u7684\u624bQ\u7248\u672c\u4e0d\u652f\u6301SSO\u767b\u9646"
invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_14
.end method
.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
.registers 5
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/QQAuth;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
move-result v0
return v0
.end method
.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.registers 14
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/tencent/connect/auth/QQAuth;->loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public logout(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
const-string/jumbo v1, "0"
invoke-virtual {v0, v2, v1}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)Z
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
.registers 5
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/QQAuth;->reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
move-result v0
return v0
.end method
.method public reactive(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->reactive(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
.registers 6
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
return-object v0
.end method
.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
.registers 12
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public searchNearby(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
if-nez v0, :cond_11
new-instance v0, Lcom/tencent/open/LocationApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/LocationApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
:cond_11
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mLocationApi:Lcom/tencent/open/LocationApi;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/LocationApi;->searchNearby(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "setAccessToken(), expiresIn = "
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
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/QQAuth;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 9
const-string/jumbo v0, "picture"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "exitAnim"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
new-instance v2, Lcom/tencent/connect/avatar/QQAvatar;
iget-object v3, p0, Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
iget-object v4, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v4}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, p1, v0, p3, v1}, Lcom/tencent/connect/avatar/QQAvatar;->setAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;I)V
return-void
.end method
.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;II)V
.registers 7
const-string/jumbo v0, "exitAnim"
invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/4 v0, 0x0
invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public setOpenId(Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "setOpenId() --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1, p1}, Lcom/tencent/connect/auth/QQAuth;->setOpenId(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "setOpenId() --end"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
new-instance v0, Lcom/tencent/connect/share/QQShare;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
new-instance v0, Lcom/tencent/connect/share/QzoneShare;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QzoneShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public showTaskGuideWindow(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
new-instance v0, Lcom/tencent/open/TaskGuide;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/TaskGuide;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/TaskGuide;->showTaskGuideWindow(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public startAppbar(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mAgent:Lcom/tencent/open/yyb/AppbarAgent;
if-nez v0, :cond_11
new-instance v0, Lcom/tencent/open/yyb/AppbarAgent;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/yyb/AppbarAgent;-><init>(Landroid/app/Activity;Lcom/tencent/connect/auth/QQToken;)V
iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mAgent:Lcom/tencent/open/yyb/AppbarAgent;
:cond_11
iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mAgent:Lcom/tencent/open/yyb/AppbarAgent;
invoke-virtual {v0, p2}, Lcom/tencent/open/yyb/AppbarAgent;->startAppbar(Ljava/lang/String;)V
return-void
.end method
.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
const/4 v0, 0x0
return v0
.end method
.method public voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
new-instance v0, Lcom/tencent/open/SocialApi;
iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/tencent/open/SocialApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialApi;->voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method