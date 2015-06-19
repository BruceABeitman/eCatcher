.class public Lcom/mologiq/analytics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/mologiq/analytics/f;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    const-string v2, "com.google.android.gms.ads.a.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "com.google.android.gms.common.g"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "com.google.android.gms.common.h"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_14} :catch_28

    :goto_14
    if-eqz v1, :cond_2b

    new-instance v0, Lcom/mologiq/analytics/i;

    invoke-direct {v0, p0, p1}, Lcom/mologiq/analytics/i;-><init>(Lcom/mologiq/analytics/f;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/mologiq/analytics/i;->a(Lcom/mologiq/analytics/i;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mologiq/analytics/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    :goto_27
    return-void

    :catch_28
    move-exception v1

    move v1, v0

    goto :goto_14

    :cond_2b
    const/4 v1, 0x0

    :try_start_2c
    invoke-static {p1}, Lcom/mologiq/analytics/f;->b(Landroid/content/Context;)Lcom/mologiq/analytics/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mologiq/analytics/h;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/mologiq/analytics/h;->a(ZLandroid/content/Context;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_3e

    move-result v0

    :goto_39
    iput-object v1, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    goto :goto_27

    :catch_3e
    move-exception v2

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;)Lcom/mologiq/analytics/f;
    .registers 2

    sget-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mologiq/analytics/f;

    invoke-direct {v0, p0}, Lcom/mologiq/analytics/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    :cond_b
    sget-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/mologiq/analytics/h;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_42

    new-instance v1, Lcom/mologiq/analytics/g;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mologiq/analytics/g;-><init>(Lcom/mologiq/analytics/g;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :try_start_35
    new-instance v0, Lcom/mologiq/analytics/h;

    invoke-virtual {v1}, Lcom/mologiq/analytics/g;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mologiq/analytics/h;-><init>(Landroid/os/IBinder;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_44

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    :catch_42
    move-exception v0

    throw v0

    :catch_44
    move-exception v0

    :try_start_45
    throw v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    return v0
.end method
