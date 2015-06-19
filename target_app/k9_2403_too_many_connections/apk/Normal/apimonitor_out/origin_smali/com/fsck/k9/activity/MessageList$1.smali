.class Lcom/fsck/k9/activity/MessageList$1;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$1;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$1;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1300(Lcom/fsck/k9/activity/MessageList;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
