.class Lcom/fsck/k9/MessagingController$17;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->getAccountUnreadCount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$l:Lcom/fsck/k9/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$17;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$17;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$17;->val$l:Lcom/fsck/k9/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$17;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$17;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v4}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/Account;->getUnreadMessageCount(Landroid/content/Context;Landroid/app/Application;)I
    :try_end_e
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_e} :catch_17

    move-result v1

    :goto_f
    iget-object v2, p0, Lcom/fsck/k9/MessagingController$17;->val$l:Lcom/fsck/k9/MessagingListener;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3, v1}, Lcom/fsck/k9/MessagingListener;->accountStatusChanged(Lcom/fsck/k9/Account;I)V

    return-void

    :catch_17
    move-exception v2

    move-object v0, v2

    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count not get unread count for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
