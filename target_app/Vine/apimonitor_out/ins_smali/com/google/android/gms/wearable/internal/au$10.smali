.class  Lcom/google/android/gms/wearable/internal/au$10;
.super Lcom/google/android/gms/wearable/internal/a;
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;
.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$10;->ame:Lcom/google/android/gms/wearable/internal/au;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$10;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$10;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method