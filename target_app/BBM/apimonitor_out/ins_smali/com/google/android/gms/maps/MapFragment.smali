.class public Lcom/google/android/gms/maps/MapFragment;
.super Landroid/app/Fragment;
.field private final Pm:Lcom/google/android/gms/maps/MapFragment$b;
.field private Pn:Lcom/google/android/gms/maps/GoogleMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
new-instance v0, Lcom/google/android/gms/maps/MapFragment$b;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/MapFragment$b;-><init>(Landroid/app/Fragment;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
return-void
.end method
.method public static newInstance()Lcom/google/android/gms/maps/MapFragment;
.registers 1
new-instance v0, Lcom/google/android/gms/maps/MapFragment;
invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V
return-object v0
.end method
.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/MapFragment;
.registers 4
new-instance v0, Lcom/google/android/gms/maps/MapFragment;
invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "MapOptions"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapFragment;->setArguments(Landroid/os/Bundle;)V
return-object v0
.end method
.method protected gV()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->gW()V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->fj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
if-nez v0, :cond_f
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->fj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/MapFragment$a;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->gV()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
move-result-object v0
goto :goto_e
.end method
.method public final getMap()Lcom/google/android/gms/maps/GoogleMap;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment;->gV()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
move-result-object v1
if-nez v1, :cond_8
:goto_7
:cond_7
return-object v0
:try_start_8
:cond_8
invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_2c
move-result-object v1
if-eqz v1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pn:Lcom/google/android/gms/maps/GoogleMap;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pn:Lcom/google/android/gms/maps/GoogleMap;
invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->gM()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;
move-result-object v0
invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;
move-result-object v2
if-eq v0, v2, :cond_29
:cond_22
new-instance v0, Lcom/google/android/gms/maps/GoogleMap;
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pn:Lcom/google/android/gms/maps/GoogleMap;
:cond_29
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pn:Lcom/google/android/gms/maps/GoogleMap;
goto :goto_7
:catch_2c
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 3
if-eqz p1, :cond_b
const-class v0, Lcom/google/android/gms/maps/MapFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_b
invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-static {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->a(Lcom/google/android/gms/maps/MapFragment$b;Landroid/app/Activity;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/gms/maps/MapFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/MapFragment$b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->onDestroy()V
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/google/android/gms/maps/MapFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroyView()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->onDestroyView()V
invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V
return-void
.end method
.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-static {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->a(Lcom/google/android/gms/maps/MapFragment$b;Landroid/app/Activity;)V
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v0
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "MapOptions"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/MapFragment$b;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
return-void
.end method
.method public onLowMemory()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->onLowMemory()V
invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->onPause()V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v1, " - Lcom/google/android/gms/maps/MapFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->onResume()V
const-string v1, " - Lcom/google/android/gms/maps/MapFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p1, :cond_b
const-class v0, Lcom/google/android/gms/maps/MapFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_b
invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->Pm:Lcom/google/android/gms/maps/MapFragment$b;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/gms/maps/MapFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setArguments(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V
return-void
.end method