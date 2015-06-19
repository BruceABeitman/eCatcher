.class public Lcom/pinguo/album/common/PackagesMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackagesMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/common/PackagesMonitor$AsyncService;
    }
.end annotation


# static fields
.field public static final KEY_PACKAGES_VERSION:Ljava/lang/String; = "packages-version"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/pinguo/album/common/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getPackagesVersion(Landroid/content/Context;)I
    .registers 5

    const-class v2, Lcom/pinguo/album/common/PackagesMonitor;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "packages-version"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "packages-version"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "packages-version"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/pinguo/album/common/PackagesMonitor$AsyncService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
