.class Lcom/pinguo/camera360/gallery/data/AlbumSet$1;
.super Ljava/lang/Object;
.source "AlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/data/AlbumSet;->onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->notifyContentChanged()V

    return-void
.end method
