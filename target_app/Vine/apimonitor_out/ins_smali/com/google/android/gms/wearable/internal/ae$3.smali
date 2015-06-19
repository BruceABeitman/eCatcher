.class  Lcom/google/android/gms/wearable/internal/ae$3;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic alQ:Lcom/google/android/gms/wearable/internal/ae;
.field final synthetic alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ae;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ae$3;->alQ:Lcom/google/android/gms/wearable/internal/ae;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ae$3;->alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$3;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ae$3;->alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$3;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v1, 0xd
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
return-object v0
.end method