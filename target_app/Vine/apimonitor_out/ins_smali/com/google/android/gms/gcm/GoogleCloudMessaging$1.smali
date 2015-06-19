.class  Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;
.super Landroid/os/Handler;
.field final synthetic Uu:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.method constructor <init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;->Uu:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;->Uu:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
iget-object v1, v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Ur:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
return-void
.end method