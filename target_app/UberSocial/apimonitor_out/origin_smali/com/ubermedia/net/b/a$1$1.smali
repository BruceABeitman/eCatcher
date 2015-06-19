.class Lcom/ubermedia/net/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/net/b/a$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/ubermedia/net/b/a$1;


# direct methods
.method constructor <init>(Lcom/ubermedia/net/b/a$1;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iput-object p2, p0, Lcom/ubermedia/net/b/a$1$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0}, Lcom/ubermedia/net/b/a;->b(Lcom/ubermedia/net/b/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0}, Lcom/ubermedia/net/b/a;->c(Lcom/ubermedia/net/b/a;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v1, v1, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v1}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;)Landroid/os/Handler;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;Z)Z

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0}, Lcom/ubermedia/net/b/a;->d(Lcom/ubermedia/net/b/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0}, Lcom/ubermedia/net/b/a;->d(Lcom/ubermedia/net/b/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3f
    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->a:Lcom/ubermedia/net/b/b;

    iget-object v1, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v1, v1, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v1}, Lcom/ubermedia/net/b/a;->b(Lcom/ubermedia/net/b/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubermedia/net/b/b;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0, v2}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0, v2}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/ubermedia/net/b/a$1$1;->b:Lcom/ubermedia/net/b/a$1;

    iget-object v0, v0, Lcom/ubermedia/net/b/a$1;->b:Lcom/ubermedia/net/b/a;

    invoke-static {v0, v2}, Lcom/ubermedia/net/b/a;->a(Lcom/ubermedia/net/b/a;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_15
.end method
