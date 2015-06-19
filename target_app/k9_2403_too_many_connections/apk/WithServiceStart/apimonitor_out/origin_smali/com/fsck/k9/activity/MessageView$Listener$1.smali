.class Lcom/fsck/k9/activity/MessageView$Listener$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$Listener;->loadMessageForViewHeadersAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$Listener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener$1;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$1;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/downloading.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
