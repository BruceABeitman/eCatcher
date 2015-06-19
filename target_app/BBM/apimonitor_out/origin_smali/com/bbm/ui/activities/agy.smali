.class final Lcom/bbm/ui/activities/agy;
.super Lcom/bbm/j/u;
.source "ShareActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/bbm/ui/activities/agw;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/agw;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iput-object p2, p0, Lcom/bbm/ui/activities/agy;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/activities/agy;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/agy;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iget-object v0, v0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShareActivity;->b(Lcom/bbm/ui/activities/ShareActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v0, v1

    :goto_21
    return v0

    :cond_22
    iget-object v4, v3, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_2a

    move v0, v1

    goto :goto_21

    :cond_2a
    if-eqz v3, :cond_32

    iget-object v1, v3, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_55

    :cond_32
    iget-object v0, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iget-object v0, v0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iget-object v1, v1, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iget-object v3, v3, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    const v4, 0x7f0e0564

    invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/agy;->c:Lcom/bbm/ui/activities/agw;

    iget-object v4, v4, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    const v5, 0x7f0e0562

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/bbm/ui/activities/ShareActivity;->a(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_21

    :cond_55
    iget-object v1, p0, Lcom/bbm/ui/activities/agy;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "partnerApp"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "token"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/activities/agy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    goto :goto_21
.end method
