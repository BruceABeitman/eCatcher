.class final Lcom/google/android/gms/internal/kg$a;
.super Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final yO:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ke$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kg$a;->yO:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x0

    if-eqz p2, :cond_1b

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_b
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kg$a;->yO:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/internal/kd;

    invoke-direct {v1, v2, p4, p3}, Lcom/google/android/gms/internal/kd;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_1b
    move-object v0, v1

    goto :goto_b
.end method
