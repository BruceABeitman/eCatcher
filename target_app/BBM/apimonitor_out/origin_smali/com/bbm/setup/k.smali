.class final Lcom/bbm/setup/k;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->i(Lcom/bbm/setup/LoadingActivity;)Z

    iget-object v0, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->j(Lcom/bbm/setup/LoadingActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/LoadingActivity;->b()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->k(Lcom/bbm/setup/LoadingActivity;)V

    iget-object v0, p0, Lcom/bbm/setup/k;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->l(Lcom/bbm/setup/LoadingActivity;)V

    goto :goto_12
.end method
