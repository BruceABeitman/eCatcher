.class  Lcom/google/android/gms/maps/MapView$b;
.super Lcom/google/android/gms/dynamic/a;
.field protected ZC:Lcom/google/android/gms/dynamic/f;
.field private final ZH:Landroid/view/ViewGroup;
.field private final ZI:Lcom/google/android/gms/maps/GoogleMapOptions;
.field private final mContext:Landroid/content/Context;
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->ZH:Landroid/view/ViewGroup;
iput-object p2, p0, Lcom/google/android/gms/maps/MapView$b;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/google/android/gms/maps/MapView$b;->ZI:Lcom/google/android/gms/maps/GoogleMapOptions;
return-void
.end method
.method protected a(Lcom/google/android/gms/dynamic/f;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->ZC:Lcom/google/android/gms/dynamic/f;
invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView$b;->ju()V
return-void
.end method
.method public ju()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->ZC:Lcom/google/android/gms/dynamic/f;
if-eqz v0, :cond_28
invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView$b;->gC()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
if-nez v0, :cond_28
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->E(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/MapView$b;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/maps/MapView$b;->ZI:Lcom/google/android/gms/maps/GoogleMapOptions;
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/MapView$b;->ZC:Lcom/google/android/gms/dynamic/f;
new-instance v2, Lcom/google/android/gms/maps/MapView$a;
iget-object v3, p0, Lcom/google/android/gms/maps/MapView$b;->ZH:Landroid/view/ViewGroup;
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapView$a;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IMapViewDelegate;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/f;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
:cond_28
:goto_28
:try_end_28
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_a .. :try_end_28} :catch_30
return-void
:catch_29
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
:catch_30
move-exception v0
goto :goto_28
.end method