.class Lcom/fsck/k9/MessagingController$16;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$16;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$16;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$16;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$16;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V

    return-void
.end method
