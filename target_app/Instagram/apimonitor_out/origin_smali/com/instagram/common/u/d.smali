.class public final Lcom/instagram/common/u/d;
.super Ljava/lang/Object;
.source "LocalBroadcastUtil.java"


# direct methods
.method private static a()Landroid/support/v4/a/e;
    .registers 1

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .registers 2

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .registers 2

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)V
    .registers 2

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/instagram/common/u/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    return-void
.end method
