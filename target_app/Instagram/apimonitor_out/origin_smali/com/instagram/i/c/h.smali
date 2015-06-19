.class final Lcom/instagram/i/c/h;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/i/c/g;


# direct methods
.method constructor <init>(Lcom/instagram/i/c/g;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/c/h;->a:Lcom/instagram/i/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/i/c/h;->a:Lcom/instagram/i/c/g;

    invoke-static {v0}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/n;

    move-result-object v0

    sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/i/c/n;->a(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const-string v0, "ActionBarService.action_bar_refresh_click"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/i/c/h;->a:Lcom/instagram/i/c/g;

    invoke-static {v0}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/i/c/l;->d()V

    goto :goto_1b

    :cond_32
    const-string v0, "ActionBarService.action_bar_clicked"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/i/c/h;->a:Lcom/instagram/i/c/g;

    invoke-static {v0}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/i/c/l;->V()V

    goto :goto_1b
.end method
