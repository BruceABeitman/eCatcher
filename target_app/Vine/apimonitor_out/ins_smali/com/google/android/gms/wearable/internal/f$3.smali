.class  Lcom/google/android/gms/wearable/internal/f$3;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic alz:Lcom/google/android/gms/wearable/internal/f;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$3;->alz:Lcom/google/android/gms/wearable/internal/f;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$3;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/au;->o(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method protected ar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataItemBuffer;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I
move-result v1
invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$3;->ar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataItemBuffer;
move-result-object v0
return-object v0
.end method