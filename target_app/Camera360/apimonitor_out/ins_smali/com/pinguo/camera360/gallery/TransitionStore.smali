.class public Lcom/pinguo/camera360/gallery/TransitionStore;
.super Ljava/lang/Object;
.source "TransitionStore.java"
.field private mStorage:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/TransitionStore;->mStorage:Ljava/util/HashMap;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/TransitionStore;->mStorage:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/TransitionStore;->mStorage:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/TransitionStore;->mStorage:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method