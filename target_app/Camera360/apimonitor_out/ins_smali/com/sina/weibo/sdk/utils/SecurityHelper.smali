.class public Lcom/sina/weibo/sdk/utils/SecurityHelper;
.super Ljava/lang/Object;
.source "SecurityHelper.java"
.field private static final WEIBO_MD5_SIGNATURE:Ljava/lang/String; = "18da2bf10352443a00a5e046d9fca6bd"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static checkResponseAppLegal(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 7
const/4 v2, 0x1
invoke-static {p0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
move-result-object v1
if-eqz v1, :cond_e
iget v3, v1, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
const/16 v4, 0x2870
if-gt v3, v4, :cond_e
:cond_d
:goto_d
return v2
:cond_e
if-eqz v1, :cond_d
if-eqz p1, :cond_2c
const-string/jumbo v3, "_weibo_appPackage"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_19
if-eqz v0, :cond_2a
const-string/jumbo v3, "_weibo_transaction"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_2a
invoke-static {p0, v0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_d
:cond_2a
const/4 v2, 0x0
goto :goto_d
:cond_2c
const/4 v0, 0x0
goto :goto_19
.end method
.method public static containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:cond_5
:goto_5
return v2
:cond_6
array-length v4, p0
move v3, v2
:goto_8
if-ge v3, v4, :cond_5
aget-object v1, p0, v3
invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v5
invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1c
const/4 v2, 0x1
goto :goto_5
:cond_1c
add-int/lit8 v3, v3, 0x1
goto :goto_8
.end method
.method public static validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 10
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
if-nez v3, :cond_8
:goto_7
:cond_7
return v5
:cond_8
invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v4
if-eqz v4, :cond_7
iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
const/16 v6, 0x40
:try_start_14
invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
const-string/jumbo v7, "18da2bf10352443a00a5e046d9fca6bd"
invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z
:try_end_20
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_20} :catch_22
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_27
move-result v5
goto :goto_7
:catch_22
move-exception v0
invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
goto :goto_7
:catch_27
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_7
.end method