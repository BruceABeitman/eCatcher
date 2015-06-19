.class abstract Lcom/google/android/gms/panorama/Panorama$b;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
        "Lcom/google/android/gms/internal/ih;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->va:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method public J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/Panorama$PanoramaResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/panorama/Panorama$b$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/panorama/Panorama$b$1;-><init>(Lcom/google/android/gms/panorama/Panorama$b;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/Panorama$b;->J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/Panorama$PanoramaResult;

    move-result-object v0

    return-object v0
.end method
