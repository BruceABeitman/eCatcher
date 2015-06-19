.class  Lcom/google/android/gms/wearable/internal/au$8;
.super Lcom/google/android/gms/wearable/internal/a;
.field final synthetic alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;
.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$8;->ame:Lcom/google/android/gms/wearable/internal/au;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$8;->alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$8;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->ame:Lcom/google/android/gms/wearable/internal/au;
invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;
move-result-object v1
monitor-enter v1
:try_start_d
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->ame:Lcom/google/android/gms/wearable/internal/au;
invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$8;->alR:Lcom/google/android/gms/wearable/MessageApi$MessageListener;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:cond_19
:try_end_19
.catchall {:try_start_d .. :try_end_19} :catchall_1f
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->amf:Lcom/google/android/gms/common/api/a$d;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
:catchall_1f
move-exception v0
:try_start_20
monitor-exit v1
:try_end_21
.catchall {:try_start_20 .. :try_end_21} :catchall_1f
throw v0
.end method