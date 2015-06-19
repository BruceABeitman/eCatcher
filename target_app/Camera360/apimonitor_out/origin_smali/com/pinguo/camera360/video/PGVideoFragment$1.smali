.class Lcom/pinguo/camera360/video/PGVideoFragment$1;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/PGVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$1;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$1;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onShutterBtnClick()V

    return-void
.end method
