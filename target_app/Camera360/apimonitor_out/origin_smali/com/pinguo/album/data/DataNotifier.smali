.class public Lcom/pinguo/album/data/DataNotifier;
.super Ljava/lang/Object;
.source "DataNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/pinguo/album/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/album/PGAlbumApp;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/album/data/DataNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/pinguo/album/data/DataNotifier;->mMediaSet:Lcom/pinguo/album/data/MediaSet;

    invoke-interface {p3}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/pinguo/album/data/AlbumDataManager;->registerDataNotifier(Landroid/net/Uri;Lcom/pinguo/album/data/DataNotifier;)V

    return-void
.end method


# virtual methods
.method public fakeChange()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/data/DataNotifier;->onChange(Z)V

    return-void
.end method

.method public isDirty()Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/data/DataNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/data/DataNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/album/data/DataNotifier;->mMediaSet:Lcom/pinguo/album/data/MediaSet;

    invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSet;->notifyContentChanged()V

    :cond_f
    return-void
.end method
