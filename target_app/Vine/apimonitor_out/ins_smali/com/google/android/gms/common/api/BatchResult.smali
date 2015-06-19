.class public final Lcom/google/android/gms/common/api/BatchResult;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Result;
.field private final Dz:[Lcom/google/android/gms/common/api/PendingResult;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/common/api/BatchResult;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/common/api/BatchResult;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public take(Lcom/google/android/gms/common/api/BatchResultToken;)Lcom/google/android/gms/common/api/Result;
.registers 6
iget v0, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I
iget-object v1, p0, Lcom/google/android/gms/common/api/BatchResult;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
array-length v1, v1
if-ge v0, v1, :cond_1c
const/4 v0, 0x1
:goto_8
const-string v1, "The result token does not belong to this batch"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
iget v1, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I
aget-object v0, v0, v1
const-wide/16 v1, 0x0
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
return-object v0
:cond_1c
const/4 v0, 0x0
goto :goto_8
.end method