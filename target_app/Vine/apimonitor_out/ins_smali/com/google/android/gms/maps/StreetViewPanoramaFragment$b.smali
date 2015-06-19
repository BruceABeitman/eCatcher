.class  Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;
.super Lcom/google/android/gms/dynamic/a;
.field private final Mg:Landroid/app/Fragment;
.field protected ZC:Lcom/google/android/gms/dynamic/f;
.field private oe:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Fragment;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->Mg:Landroid/app/Fragment;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->setActivity(Landroid/app/Activity;)V
return-void
.end method
.method private setActivity(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->oe:Landroid/app/Activity;
invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ju()V
return-void
.end method
.method protected a(Lcom/google/android/gms/dynamic/f;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZC:Lcom/google/android/gms/dynamic/f;
invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ju()V
return-void
.end method
.method public ju()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->oe:Landroid/app/Activity;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZC:Lcom/google/android/gms/dynamic/f;
if-eqz v0, :cond_2f
invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->gC()Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
if-nez v0, :cond_2f
:try_start_e
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->oe:Landroid/app/Activity;
invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->oe:Landroid/app/Activity;
invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->E(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->oe:Landroid/app/Activity;
invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/c;->j(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->ZC:Lcom/google/android/gms/dynamic/f;
new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;
iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->Mg:Landroid/app/Fragment;
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/f;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
:try_end_2f
.catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2f} :catch_30
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_2f} :catch_37
:goto_2f
:cond_2f
return-void
:catch_30
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V
throw v1
:catch_37
move-exception v0
goto :goto_2f
.end method