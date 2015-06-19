.class final Lcom/bbm/util/ad;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/util/ad;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bbm/util/ad;->b:Z

    iput-object p3, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 7

    const/4 v0, 0x1

    const/high16 v5, 0x400

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;

    move-result-object v2

    iget-object v3, v1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_1d

    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    sget-object v3, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;

    if-eq v2, v3, :cond_1c

    iget-boolean v2, v1, Lcom/bbm/d/ec;->t:Z

    if-eqz v2, :cond_54

    iget-boolean v1, p0, Lcom/bbm/util/ad;->b:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    const-class v3, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bbm_channel_uri"

    iget-object v3, p0, Lcom/bbm/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    :cond_54
    iget-boolean v1, v1, Lcom/bbm/d/ec;->w:Z

    if-eqz v1, :cond_87

    iget-boolean v1, p0, Lcom/bbm/util/ad;->b:Z

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6e
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    const-class v3, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bbm_channel_uri"

    iget-object v3, p0, Lcom/bbm/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    :cond_87
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    const-class v3, Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bbm_channel_uri"

    iget-object v3, p0, Lcom/bbm/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/ad;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1c
.end method
