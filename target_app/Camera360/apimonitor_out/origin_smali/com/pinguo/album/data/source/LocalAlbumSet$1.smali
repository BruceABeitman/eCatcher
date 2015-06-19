.class Lcom/pinguo/album/data/source/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/data/source/LocalAlbumSet;->onFutureDone(Lcom/pinguo/album/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;


# direct methods
.method constructor <init>(Lcom/pinguo/album/data/source/LocalAlbumSet;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$1;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$1;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/pinguo/album/data/source/LocalAlbumSet;->notifyContentChanged()V

    return-void
.end method
