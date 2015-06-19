.class public final Lcom/instagram/common/c/j;
.super Lcom/instagram/common/c/b;
.source "LocalIgBroadcastManager.java"


# instance fields
.field private final a:Landroid/support/v4/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/common/c/b;-><init>()V

    invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/c/j;->a:Landroid/support/v4/a/e;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/c/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/c/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/c/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    return-void
.end method
