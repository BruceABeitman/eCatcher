.class public Lcom/google/android/gms/maps/MapView;
.super Landroid/widget/FrameLayout;
.field private Pn:Lcom/google/android/gms/maps/GoogleMap;
.field private final Pr:Lcom/google/android/gms/maps/MapView$b;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/maps/MapView$b;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/google/android/gms/maps/MapView$b;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/google/android/gms/maps/MapView$b;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/maps/MapView$b;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
return-void
.end method
.method public final getMap()Lcom/google/android/gms/maps/GoogleMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pn:Lcom/google/android/gms/maps/GoogleMap;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pn:Lcom/google/android/gms/maps/GoogleMap;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->gW()V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->fj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
if-nez v0, :cond_16
const/4 v0, 0x0
goto :goto_6
:cond_16
:try_start_16
new-instance v1, Lcom/google/android/gms/maps/GoogleMap;
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->fj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/MapView$a;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$a;->gX()Lcom/google/android/gms/maps/internal/IMapViewDelegate;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
iput-object v1, p0, Lcom/google/android/gms/maps/MapView;->Pn:Lcom/google/android/gms/maps/GoogleMap;
:try_end_2d
.catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_30
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pn:Lcom/google/android/gms/maps/GoogleMap;
goto :goto_6
:catch_30
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapView; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView$b;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->fj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-static {p0}, Lcom/google/android/gms/maps/MapView$b;->b(Landroid/widget/FrameLayout;)V
:cond_12
const-string v1, " - Lcom/google/android/gms/maps/MapView; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onDestroy()V
const-string v1, " - Lcom/google/android/gms/maps/MapView; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onLowMemory()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onLowMemory()V
return-void
.end method
.method public final onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onPause()V
const-string v1, " - Lcom/google/android/gms/maps/MapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/maps/MapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->onResume()V
const-string v1, " - Lcom/google/android/gms/maps/MapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/maps/MapView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->Pr:Lcom/google/android/gms/maps/MapView$b;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView$b;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/gms/maps/MapView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method