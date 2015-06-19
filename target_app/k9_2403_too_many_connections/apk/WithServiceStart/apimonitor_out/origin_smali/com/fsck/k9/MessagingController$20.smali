.class Lcom/fsck/k9/MessagingController$20;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$destFolder:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;

.field final synthetic val$message:Lcom/fsck/k9/mail/Message;

.field final synthetic val$srcFolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 7

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$20;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$20;->val$srcFolder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$20;->val$message:Lcom/fsck/k9/mail/Message;

    iput-object p5, p0, Lcom/fsck/k9/MessagingController$20;->val$destFolder:Ljava/lang/String;

    iput-object p6, p0, Lcom/fsck/k9/MessagingController$20;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$20;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$20;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$20;->val$srcFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$20;->val$message:Lcom/fsck/k9/mail/Message;

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$20;->val$destFolder:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/MessagingController$20;->val$listener:Lcom/fsck/k9/MessagingListener;

    #calls: Lcom/fsck/k9/MessagingController;->moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/MessagingController;->access$800(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V

    return-void
.end method
