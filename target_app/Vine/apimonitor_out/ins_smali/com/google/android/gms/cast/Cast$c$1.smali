.class  Lcom/google/android/gms/cast/Cast$c$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
.field final synthetic Ad:Lcom/google/android/gms/cast/Cast$c;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/cast/Cast$c;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$c$1;->Ad:Lcom/google/android/gms/cast/Cast$c;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$c$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getApplicationStatus()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getSessionId()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/Cast$c$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public getWasLaunched()Z
.registers 2
const/4 v0, 0x0
return v0
.end method