.class final Lcom/instagram/common/l/b/c;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/l/b/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/l/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    invoke-static {v0}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/b;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    invoke-static {v0}, Lcom/instagram/common/l/b/b;->b(Lcom/instagram/common/l/b/b;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/b;Z)Z

    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    invoke-static {v0}, Lcom/instagram/common/l/b/b;->c(Lcom/instagram/common/l/b/b;)V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    invoke-static {v0}, Lcom/instagram/common/l/b/b;->d(Lcom/instagram/common/l/b/b;)Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/instagram/common/l/b/c;->a:Lcom/instagram/common/l/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/b;Z)Z

    goto :goto_1b
.end method
