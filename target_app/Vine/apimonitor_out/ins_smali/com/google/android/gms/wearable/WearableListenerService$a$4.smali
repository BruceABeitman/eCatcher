.class  Lcom/google/android/gms/wearable/WearableListenerService$a$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
.field final synthetic alv:Lcom/google/android/gms/wearable/internal/ai;
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alv:Lcom/google/android/gms/wearable/internal/ai;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;
iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alv:Lcom/google/android/gms/wearable/internal/ai;
invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
return-void
.end method