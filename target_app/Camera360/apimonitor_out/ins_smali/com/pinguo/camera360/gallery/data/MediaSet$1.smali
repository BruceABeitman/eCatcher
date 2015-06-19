.class  Lcom/pinguo/camera360/gallery/data/MediaSet$1;
.super Ljava/lang/Object;
.source "MediaSet.java"
.implements Lcom/pinguo/camera360/gallery/util/Future;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public cancel()V
.registers 1
return-void
.end method
.method public get()Ljava/lang/Integer;
.registers 2
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaSet$1;->get()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public isCancelled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isDone()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public waitDone()V
.registers 1
return-void
.end method