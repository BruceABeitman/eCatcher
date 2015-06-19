.class Lcom/pinguo/camera360/video/util/SnapshotHelper$1;
.super Ljava/lang/Object;
.source "SnapshotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/util/SnapshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/util/SnapshotHelper;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/util/SnapshotHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper$1;->this$0:Lcom/pinguo/camera360/video/util/SnapshotHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper$1;->this$0:Lcom/pinguo/camera360/video/util/SnapshotHelper;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/video/util/SnapshotHelper;->access$0(Lcom/pinguo/camera360/video/util/SnapshotHelper;Z)V

    return-void
.end method
