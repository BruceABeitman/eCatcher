.class public abstract Lcom/google/android/gms/common/data/DataBuffer;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Ljava/lang/Iterable;
.field protected final DD:Lcom/google/android/gms/common/data/DataHolder;
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/Object;)V
:cond_e
return-void
.end method
.method public final close()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->release()V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public eP()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->eP()Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public abstract get(I)Ljava/lang/Object;
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I
move-result v0
goto :goto_5
.end method
.method public isClosed()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z
move-result v0
goto :goto_5
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/google/android/gms/common/data/c;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V
return-object v0
.end method
.method public release()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_9
return-void
.end method
.method public singleRefIterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/google/android/gms/common/data/h;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/h;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V
return-object v0
.end method