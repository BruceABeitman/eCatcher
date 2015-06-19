.class public final Lcom/instagram/k/a/a;
.super Ljava/lang/Object;
.source "DevPreferences.java"


# static fields
.field private static b:Lcom/instagram/k/a/a;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "devprefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/instagram/k/a/a;
    .registers 2

    sget-object v0, Lcom/instagram/k/a/a;->b:Lcom/instagram/k/a/a;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/k/a/a;

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/k/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/k/a/a;->b:Lcom/instagram/k/a/a;

    :cond_f
    sget-object v0, Lcom/instagram/k/a/a;->b:Lcom/instagram/k/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_server_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "using_dev_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "using_dev_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "dev_server_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "force_legacy_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "force_legacy_render"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_navigation_events"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "slow_network"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_realtime_connection_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "disable_realtime_connection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
