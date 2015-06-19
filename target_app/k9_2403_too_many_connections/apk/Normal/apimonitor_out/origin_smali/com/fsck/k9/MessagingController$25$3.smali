.class Lcom/fsck/k9/MessagingController$25$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/MessagingController$25;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController$25;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "k9"

    const-string v3, "Finished mail sync"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    iget-object v2, v2, Lcom/fsck/k9/MessagingController$25;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    iget-object v2, v2, Lcom/fsck/k9/MessagingController$25;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_18
    iget-object v2, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    iget-object v2, v2, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/MessagingListener;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    iget-object v2, v2, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$3;->this$1:Lcom/fsck/k9/MessagingController$25;

    iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/MessagingListener;->checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_24

    :cond_3c
    return-void
.end method
