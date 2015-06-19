.class Lcom/fsck/k9/MessagingController$9;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$9;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$9;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$9;->val$folder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageRemoved(Lcom/fsck/k9/mail/Message;)V
    .registers 6

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$9;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/MessagingListener;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$9;->val$account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$9;->val$folder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_a

    :cond_1e
    return-void
.end method
