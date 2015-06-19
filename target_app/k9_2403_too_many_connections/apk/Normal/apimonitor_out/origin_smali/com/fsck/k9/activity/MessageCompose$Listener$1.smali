.class Lcom/fsck/k9/activity/MessageCompose$Listener$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose$Listener;->loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageCompose$Listener;

.field final synthetic val$message:Lcom/fsck/k9/mail/Message;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose$Listener;Lcom/fsck/k9/mail/Message;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$Listener$1;->this$1:Lcom/fsck/k9/activity/MessageCompose$Listener;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$Listener$1;->val$message:Lcom/fsck/k9/mail/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener$1;->this$1:Lcom/fsck/k9/activity/MessageCompose$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$Listener$1;->val$message:Lcom/fsck/k9/mail/Message;

    #calls: Lcom/fsck/k9/activity/MessageCompose;->processSourceMessage(Lcom/fsck/k9/mail/Message;)V
    invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method
