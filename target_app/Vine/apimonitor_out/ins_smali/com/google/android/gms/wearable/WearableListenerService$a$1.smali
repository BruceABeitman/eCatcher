.class  Lcom/google/android/gms/wearable/WearableListenerService$a$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic als:Lcom/google/android/gms/common/data/DataHolder;
.field final synthetic alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->als:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
new-instance v1, Lcom/google/android/gms/wearable/DataEventBuffer;
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->als:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v1, v0}, Lcom/google/android/gms/wearable/DataEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
:try_end_e
.catchall {:try_start_7 .. :try_end_e} :catchall_12
invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataEventBuffer;->release()V
return-void
:catchall_12
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataEventBuffer;->release()V
throw v0
.end method