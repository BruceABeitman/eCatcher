.class  Lcom/google/android/gms/wearable/internal/au$13;
.super Lcom/google/android/gms/wearable/internal/a;
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;
.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$13;->ame:Lcom/google/android/gms/wearable/internal/au;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$13;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V
return-void
.end method
.method public Z(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$13;->amf:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/wearable/DataItemBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method