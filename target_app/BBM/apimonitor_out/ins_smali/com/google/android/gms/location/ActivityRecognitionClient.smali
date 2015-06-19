.class public Lcom/google/android/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.field private final KO:Lcom/google/android/gms/internal/hi;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/hi;
const-string v1, "activity_recognition"
invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/hi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
return-void
.end method
.method public connect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hi;->connect()V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hi;->disconnect()V
return-void
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hi;->isConnected()Z
move-result v0
return v0
.end method
.method public isConnecting()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hi;->isConnecting()Z
move-result v0
return v0
.end method
.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
move-result v0
return v0
.end method
.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
move-result v0
return v0
.end method
.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->removeActivityUpdates(Landroid/app/PendingIntent;)V
return-void
.end method
.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hi;->requestActivityUpdates(JLandroid/app/PendingIntent;)V
return-void
.end method
.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->KO:Lcom/google/android/gms/internal/hi;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hi;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method