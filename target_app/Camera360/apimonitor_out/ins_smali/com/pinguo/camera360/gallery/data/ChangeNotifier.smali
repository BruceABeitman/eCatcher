.class public Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/camera360/PgCameraApplication;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {p3}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
invoke-virtual {v0, p2, p0}, Lcom/pinguo/camera360/gallery/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/pinguo/camera360/gallery/data/ChangeNotifier;)V
return-void
.end method
.method public fakeChange()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->onChange(Z)V
return-void
.end method
.method public isDirty()Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
return v0
.end method
.method protected onChange(Z)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->notifyContentChanged()V
:cond_f
return-void
.end method