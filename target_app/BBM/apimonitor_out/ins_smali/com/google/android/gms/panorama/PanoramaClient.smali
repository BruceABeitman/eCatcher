.class public Lcom/google/android/gms/panorama/PanoramaClient;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.field private final QB:Lcom/google/android/gms/internal/ih;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/ih;
invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ih;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
return-void
.end method
.method public connect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->connect()V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->disconnect()V
return-void
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->isConnected()Z
move-result v0
return v0
.end method
.method public isConnecting()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->isConnecting()Z
move-result v0
return v0
.end method
.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
move-result v0
return v0
.end method
.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
move-result v0
return v0
.end method
.method public loadPanoramaInfo(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
new-instance v1, Lcom/google/android/gms/panorama/PanoramaClient$1;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$1;-><init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V
const/4 v2, 0x0
invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V
return-void
.end method
.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
new-instance v1, Lcom/google/android/gms/panorama/PanoramaClient$2;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$2;-><init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V
const/4 v2, 0x1
invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V
return-void
.end method
.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->QB:Lcom/google/android/gms/internal/ih;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ih;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method