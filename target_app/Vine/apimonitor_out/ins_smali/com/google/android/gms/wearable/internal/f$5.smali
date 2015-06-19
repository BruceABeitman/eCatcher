.class  Lcom/google/android/gms/wearable/internal/f$5;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic abh:Landroid/net/Uri;
.field final synthetic alz:Lcom/google/android/gms/wearable/internal/f;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;Landroid/net/Uri;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$5;->alz:Lcom/google/android/gms/wearable/internal/f;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$5;->abh:Landroid/net/Uri;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$5;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$5;->abh:Landroid/net/Uri;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V
return-void
.end method
.method protected as(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$b;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/f$b;-><init>(Lcom/google/android/gms/common/api/Status;I)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$5;->as(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
move-result-object v0
return-object v0
.end method