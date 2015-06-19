.class Lcom/twidroid/fragments/base/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/j;-><init>(Lcom/twidroid/fragments/base/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Connection state changed!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v0, v0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "not using streaming, nothing to do"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->A()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Stopping stream fron connection receiver"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v1, v1, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/service/StreamingService;->b(Lcom/twidroid/model/twitter/c;)V

    goto :goto_1a

    :cond_50
    invoke-static {}, Lcom/twidroid/fragments/base/e;->J()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-static {v1, v2}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had old STOP message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/fragments/base/e;->J()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-static {v1, v2}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_9b
    invoke-static {}, Lcom/twidroid/fragments/base/e;->J()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-static {v1, v2}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had no START message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/fragments/base/e;->J()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/fragments/base/e;->J()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v3, p0, Lcom/twidroid/fragments/base/j;->a:Lcom/twidroid/fragments/base/e;

    iget-object v3, v3, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;

    invoke-static {v2, v3}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1a
.end method
