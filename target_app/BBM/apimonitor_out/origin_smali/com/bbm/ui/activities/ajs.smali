.class final Lcom/bbm/ui/activities/ajs;
.super Lcom/bbm/j/u;
.source "ViewSubscribedChannelActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v2, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-static {v0, v2}, Lcom/bbm/util/ac;->b(Lcom/bbm/d/ec;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/ajs;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    const v3, 0x7f0e06c6

    invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_33
    const/4 v0, 0x1

    goto :goto_12
.end method
