.class  Lcom/google/android/gms/internal/ny$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/request/g;
.field final synthetic a:Lcom/google/android/gms/common/api/Status;
.field final synthetic b:Lcom/google/android/gms/internal/ny;
.method constructor <init>(Lcom/google/android/gms/internal/ny;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/ny$1;->b:Lcom/google/android/gms/internal/ny;
iput-object p2, p0, Lcom/google/android/gms/internal/ny$1;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)I
.registers 5
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown request ID "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ny$1;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Ljava/util/Set;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public d()V
.registers 1
return-void
.end method