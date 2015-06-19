.class public Lcom/pinguo/camera360/cloud/service/ResultSharedPreferences;
.super Ljava/lang/Object;
.source "ResultSharedPreferences.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLOGIN_ERROR_CODE(Landroid/content/Context;)I
    .registers 3

    const-string/jumbo v0, "LOGIN_ERROR_CODE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getREGISTER_ERROR_CODE(Landroid/content/Context;)I
    .registers 3

    const-string/jumbo v0, "REGISTER_ERROR_CODE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setLOGIN_ERROR_CODE(Landroid/content/Context;I)V
    .registers 3

    const-string/jumbo v0, "LOGIN_ERROR_CODE"

    invoke-static {p0, v0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setREGISTER_ERROR_CODE(Landroid/content/Context;I)V
    .registers 3

    const-string/jumbo v0, "REGISTER_ERROR_CODE"

    invoke-static {p0, v0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->setPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
