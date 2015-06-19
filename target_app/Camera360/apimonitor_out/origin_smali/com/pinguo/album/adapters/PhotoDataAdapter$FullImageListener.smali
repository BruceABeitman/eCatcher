.class Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/pinguo/album/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/pinguo/album/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/pinguo/album/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/pinguo/album/data/MediaPath;

.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pinguo/album/data/MediaPath;

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/pinguo/album/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/album/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pinguo/album/Future;

    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$2(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    #getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$2(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pinguo/album/data/MediaPath;

    iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pinguo/album/Future;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateFullImage(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$3(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V

    return-void
.end method
