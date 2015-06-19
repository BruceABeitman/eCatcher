.class Lcom/fsck/k9/activity/MessageView$Listener$4;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$Listener;->loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$Listener;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$Listener;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->val$t:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->invalidIdError()V

    :goto_19
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$4;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->networkError()V

    goto :goto_19
.end method
