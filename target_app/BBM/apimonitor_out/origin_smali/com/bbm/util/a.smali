.class public final Lcom/bbm/util/a;
.super Ljava/lang/Object;
.source "AppStoreUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method
