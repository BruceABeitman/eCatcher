.class Lcom/google/android/gms/panorama/PanoramaClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic QC:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

.field final synthetic QD:Lcom/google/android/gms/panorama/PanoramaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->QD:Lcom/google/android/gms/panorama/PanoramaClient;

    iput-object p2, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->QC:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/panorama/Panorama$PanoramaResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->QC:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/panorama/Panorama$PanoramaResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->dG()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/panorama/Panorama$PanoramaResult;->getViewerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;->onPanoramaInfoLoaded(Lcom/google/android/gms/common/ConnectionResult;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/panorama/Panorama$PanoramaResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$2;->a(Lcom/google/android/gms/panorama/Panorama$PanoramaResult;)V

    return-void
.end method
