.class public final Lcom/instagram/common/q/b/b/a;
.super Ljava/lang/Object;
.source "DefaultRegistrar.java"

# interfaces
.implements Lcom/instagram/common/q/b/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/instagram/common/q/b/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/common/q/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    const-string v1, "Push"

    const-string v2, "Push not initialized for device type"

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
