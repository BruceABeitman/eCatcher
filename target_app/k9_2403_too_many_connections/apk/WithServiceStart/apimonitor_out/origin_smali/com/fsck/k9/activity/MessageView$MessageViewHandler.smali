.class Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttachment(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachmentNotSaved()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachmentSaved(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchingAttachment()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$9;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$9;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invalidIdError()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$6;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$6;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public networkError()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$5;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$5;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public progress(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 22

    iget-object v11, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v11, v0}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showShowPictures(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    new-instance v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;-><init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
