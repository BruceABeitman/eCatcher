.class abstract Lcom/google/android/gms/internal/kg$b;
.super Lcom/google/android/gms/internal/kg$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kg$d",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/kg$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kg$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/kg$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected ak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ki;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kg$b;->ak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;

    move-result-object v0

    return-object v0
.end method
