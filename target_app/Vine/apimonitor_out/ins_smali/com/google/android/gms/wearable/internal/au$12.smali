.class  Lcom/google/android/gms/wearable/internal/au$12;
.super Lcom/google/android/gms/wearable/internal/a;
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;
.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$12;->ame:Lcom/google/android/gms/wearable/internal/au;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$12;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/wearable/internal/v;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$12;->amf:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/wearable/internal/f$a;
new-instance v2, Lcom/google/android/gms/common/api/Status;
iget v3, p1, Lcom/google/android/gms/wearable/internal/v;->statusCode:I
invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v3, p1, Lcom/google/android/gms/wearable/internal/v;->alL:Lcom/google/android/gms/wearable/internal/m;
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/f$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method