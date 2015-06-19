.class public Lcom/glympse/android/hal/AuthReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.glympse.android.hal.auth.REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2c

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "glympse_prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    const-string v1, "body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "requester_package"

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requester_server"

    invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    :cond_52
    :goto_52
    return-void

    :cond_53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    if-lez v5, :cond_52

    invoke-static {v4}, Lcom/glympse/android/hal/j;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/glympse/android/hal/HalFactory;->createContextHolder(Landroid/content/Context;)Lcom/glympse/android/hal/GContextHolder;

    move-result-object v5

    invoke-static {}, Lcom/glympse/android/lib/LibFactory;->createConfig()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v6

    invoke-interface {v6, v5, v0, v3}, Lcom/glympse/android/lib/GConfigPrivate;->getAccount(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v3, "key"

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "un"

    invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "psw"

    invoke-interface {v0, v6}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    const-string v7, "id"

    invoke-interface {v6, v7, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "password"

    invoke-interface {v6, v5, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requester_server"

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    invoke-static {p1, v1, v4, v3, v6}, Lcom/glympse/android/hal/j;->a(Landroid/content/Context;Lcom/glympse/android/core/GPrimitive;[Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/glympse/android/hal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_a7} :catch_a8

    goto :goto_52

    :catch_a8
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_52
.end method
