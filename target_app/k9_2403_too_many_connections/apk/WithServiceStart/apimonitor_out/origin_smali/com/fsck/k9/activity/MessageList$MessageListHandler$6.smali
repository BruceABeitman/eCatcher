.class Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

.field final synthetic val$progress:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;->val$progress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;->val$progress:Z

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->showProgressIndicator(Z)V

    return-void
.end method
