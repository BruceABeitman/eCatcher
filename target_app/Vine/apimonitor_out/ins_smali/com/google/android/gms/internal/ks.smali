.class public final Lcom/google/android/gms/internal/ks;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/plus/model/moments/Moment;
.field private adm:Lcom/google/android/gms/internal/kq;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method private kz()Lcom/google/android/gms/internal/kq;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/internal/ks;->adm:Lcom/google/android/gms/internal/kq;
if-nez v0, :cond_23
const-string v0, "momentImpl"
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
const/4 v2, 0x0
array-length v3, v0
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v0, Lcom/google/android/gms/internal/kq;->CREATOR:Lcom/google/android/gms/internal/kr;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kr;->bF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kq;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ks;->adm:Lcom/google/android/gms/internal/kq;
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
:cond_23
monitor-exit p0
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_27
iget-object v0, p0, Lcom/google/android/gms/internal/ks;->adm:Lcom/google/android/gms/internal/kq;
return-object v0
:catchall_27
move-exception v0
:try_start_28
monitor-exit p0
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_27
throw v0
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->ky()Lcom/google/android/gms/internal/kq;
move-result-object v0
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->getId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
move-result-object v0
return-object v0
.end method
.method public getStartDate()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->getStartDate()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
move-result-object v0
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->getType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hasId()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->hasId()Z
move-result v0
return v0
.end method
.method public hasResult()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->hasId()Z
move-result v0
return v0
.end method
.method public hasStartDate()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->hasStartDate()Z
move-result v0
return v0
.end method
.method public hasTarget()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->hasTarget()Z
move-result v0
return v0
.end method
.method public hasType()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->hasType()Z
move-result v0
return v0
.end method
.method public ky()Lcom/google/android/gms/internal/kq;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ks;->kz()Lcom/google/android/gms/internal/kq;
move-result-object v0
return-object v0
.end method