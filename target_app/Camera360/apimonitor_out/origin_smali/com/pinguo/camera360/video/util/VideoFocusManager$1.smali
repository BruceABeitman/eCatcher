.class Lcom/pinguo/camera360/video/util/VideoFocusManager$1;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/util/VideoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/util/VideoFocusManager;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/util/VideoFocusManager;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager$1;->this$0:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Focusing timeout."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager$1;->this$0:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    #calls: Lcom/pinguo/camera360/video/util/VideoFocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->access$0(Lcom/pinguo/camera360/video/util/VideoFocusManager;)V

    return-void
.end method
