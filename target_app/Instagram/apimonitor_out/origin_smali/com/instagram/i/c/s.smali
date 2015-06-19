.class final Lcom/instagram/i/c/s;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedYouFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/i/c/q;


# direct methods
.method constructor <init>(Lcom/instagram/i/c/q;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-static {v0}, Lcom/instagram/i/c/q;->b(Lcom/instagram/i/c/q;)V

    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-static {v0}, Lcom/instagram/i/c/q;->c(Lcom/instagram/i/c/q;)V

    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v1}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0}, Lcom/instagram/i/c/q;->V()V

    :cond_2d
    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0}, Lcom/instagram/i/c/q;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/c/g;

    iget-object v1, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0, v1}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/l;)V

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0}, Lcom/instagram/i/c/q;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/c/g;

    iget-object v1, p0, Lcom/instagram/i/c/s;->a:Lcom/instagram/i/c/q;

    invoke-virtual {v0, v1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/l;)V

    :cond_51
    return-void
.end method
