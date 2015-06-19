.class public Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;
.super Ljava/lang/Object;
.source "BitmapManager.java"
.implements Ljava/lang/Iterable;
.field private final mWeakCollection:Ljava/util/WeakHashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;
return-void
.end method
.method public add(Ljava/lang/Thread;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/Thread;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method