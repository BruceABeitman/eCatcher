.class final Lcom/instagram/base/activity/b;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/base/activity/a;


# direct methods
.method constructor <init>(Lcom/instagram/base/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "ActionBarService.action_bar_back_click"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    invoke-virtual {v0}, Lcom/instagram/base/activity/a;->a_()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, "ActionBarService.action_bar_updated"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    sget v2, Lcom/facebook/av;->action_bar:I

    invoke-virtual {v0, v2}, Lcom/instagram/base/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/instagram/a/e;->a(Landroid/view/ViewGroup;)V

    goto :goto_11
.end method
