.class  Lcom/google/android/gms/maps/MapView$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;
.field private final Ps:Landroid/view/ViewGroup;
.field private final Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
.field private Pu:Landroid/view/View;
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IMapViewDelegate;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p2}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;
iput-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Ps:Landroid/view/ViewGroup;
return-void
.end method
.method public gX()Lcom/google/android/gms/maps/internal/IMapViewDelegate;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->getView()Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
iput-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pu:Landroid/view/View;
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Ps:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Ps:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/google/android/gms/maps/MapView$a;->Pu:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_20
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onCreateView not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onDestroy()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onDestroyView()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onDestroyView not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onInflate not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public onLowMemory()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onLowMemory()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onPause()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onResume()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->Pt:Lcom/google/android/gms/maps/internal/IMapViewDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/MapView$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method