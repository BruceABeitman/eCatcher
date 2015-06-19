.class public abstract Lcom/instagram/common/c/b;
.super Ljava/lang/Object;
.source "BaseIgBroadcastManager.java"

# interfaces
.implements Lcom/instagram/common/c/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/c/g;
    .registers 2

    new-instance v0, Lcom/instagram/common/c/c;

    invoke-direct {v0, p0}, Lcom/instagram/common/c/c;-><init>(Lcom/instagram/common/c/b;)V

    return-object v0
.end method

.method protected abstract a(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/instagram/common/c/b;->a(Landroid/content/Intent;)V

    return-void
.end method
