.class  Lcom/google/android/gms/wearable/internal/au$a;
.super Lcom/google/android/gms/wearable/internal/a;
.field private final amh:Ljava/util/List;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/common/api/a$d;Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$a;->yO:Lcom/google/android/gms/common/api/a$d;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$a;->amh:Ljava/util/List;
return-void
.end method
.method public a(Lcom/google/android/gms/wearable/internal/am;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$a;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/wearable/internal/f$a;
new-instance v2, Lcom/google/android/gms/common/api/Status;
iget v3, p1, Lcom/google/android/gms/wearable/internal/am;->statusCode:I
invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v3, p1, Lcom/google/android/gms/wearable/internal/am;->alL:Lcom/google/android/gms/wearable/internal/m;
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/f$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
iget v0, p1, Lcom/google/android/gms/wearable/internal/am;->statusCode:I
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$a;->amh:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/FutureTask;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
goto :goto_1d
:cond_2e
return-void
.end method