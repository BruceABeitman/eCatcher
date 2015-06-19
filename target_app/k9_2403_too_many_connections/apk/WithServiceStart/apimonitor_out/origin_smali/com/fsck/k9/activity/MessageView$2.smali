.class Lcom/fsck/k9/activity/MessageView$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$2;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$2;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    return-void
.end method
