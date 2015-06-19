.class  Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;
.field private final FS:Landroid/support/v4/app/Fragment;
.field private final ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p2}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->FS:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public jx()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p1, :cond_8
:try_start_2
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
move-object p1, v0
:cond_8
iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->FS:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_23
const-string v2, "StreetViewPanoramaOptions"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_23
const-string v2, "StreetViewPanoramaOptions"
const-string v3, "StreetViewPanoramaOptions"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
invoke-static {p1, v2, v1}, Lcom/google/android/gms/maps/internal/t;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_23
iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
:try_end_28
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_29
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_29
move-exception v1
new-instance v2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v2
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v1
invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v2
invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_15
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
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
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroy()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onDestroy"
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
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroyView()V
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
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onLowMemory()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onLowMemory()V
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
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onPause()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onPause"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onResume()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onResume"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->ZR:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onSaveInstanceState"
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
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method