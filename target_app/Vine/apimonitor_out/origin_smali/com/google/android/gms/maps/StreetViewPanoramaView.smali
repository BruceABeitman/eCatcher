.class public Lcom/google/android/gms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/StreetViewPanoramaView$a;,
        Lcom/google/android/gms/maps/StreetViewPanoramaView$b;
    }
.end annotation


# instance fields
.field private ZQ:Lcom/google/android/gms/maps/StreetViewPanorama;

.field private final ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    return-void
.end method


# virtual methods
.method public final getStreetViewPanorama()Lcom/google/android/gms/maps/StreetViewPanorama;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->ju()V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->gC()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_6

    :cond_16
    :try_start_16
    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanorama;

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->gC()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->jB()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->getStreetViewPanorama()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/StreetViewPanorama;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_30

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZQ:Lcom/google/android/gms/maps/StreetViewPanorama;

    goto :goto_6

    :catch_30
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->gC()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-static {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b(Landroid/widget/FrameLayout;)V

    :cond_12
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onLowMemory()V

    return-void
.end method

.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->ZZ:Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
