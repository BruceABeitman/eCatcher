.class final Lcom/google/android/gms/plus/internal/n;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/internal/m;

.field private final b:Lcom/google/android/gms/common/api/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/m;Lcom/google/android/gms/common/api/w;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/n;->a:Lcom/google/android/gms/plus/internal/m;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/n;->b:Lcom/google/android/gms/common/api/w;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x0

    if-eqz p2, :cond_1f

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_b
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/n;->a:Lcom/google/android/gms/plus/internal/m;

    new-instance v1, Lcom/google/android/gms/plus/internal/o;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/n;->a:Lcom/google/android/gms/plus/internal/m;

    iget-object v4, p0, Lcom/google/android/gms/plus/internal/n;->b:Lcom/google/android/gms/common/api/w;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/plus/internal/o;-><init>(Lcom/google/android/gms/plus/internal/m;Lcom/google/android/gms/common/api/w;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/m;->a(Lcom/google/android/gms/internal/gb;)V

    return-void

    :cond_1f
    move-object v0, v1

    goto :goto_b
.end method
