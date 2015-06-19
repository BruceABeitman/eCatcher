.class Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->setWindowTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$700(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->setWindowProgress()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$800(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method
