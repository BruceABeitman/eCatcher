.class  Lcom/google/android/gms/maps/SupportMapFragment$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;
.field private final Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.field private final Pz:Landroid/support/v4/app/Fragment;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p2}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pz:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public gV()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p1, :cond_7
:try_start_2
new-instance p1, Landroid/os/Bundle;
invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
:cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pz:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_22
const-string v1, "MapOptions"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_22
const-string v1, "MapOptions"
const-string v2, "MapOptions"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-static {p1, v1, v0}, Lcom/google/android/gms/maps/internal/p;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_22
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
:try_end_27
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_28
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-static {p2}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v2
invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/b;
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_15
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
return-object v0
:catch_15
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroy()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onDestroy"
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
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 7
const-string v0, "MapOptions"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;
:try_start_8
iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v2
invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
:try_end_11
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onLowMemory()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
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
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onPause()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onPause"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onResume()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onResume"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->Pp:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onSaveInstanceState"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/SupportMapFragment$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/SupportMapFragment$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method