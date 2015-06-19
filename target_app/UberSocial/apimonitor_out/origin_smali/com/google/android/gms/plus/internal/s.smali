.class final Lcom/google/android/gms/plus/internal/s;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/internal/l;

.field private final b:Lcom/google/android/gms/common/api/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/s;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/s;->b:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
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

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/s;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/internal/t;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/s;->a:Lcom/google/android/gms/plus/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/plus/internal/s;->b:Lcom/google/android/gms/common/api/t;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/plus/internal/t;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/internal/gn;)V

    return-void

    :cond_1f
    move-object v0, v1

    goto :goto_b
.end method
