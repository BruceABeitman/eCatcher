.class final Lcom/google/android/gms/plus/internal/q;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/internal/l;

.field private final b:Lcom/google/android/gms/common/api/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/q;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/q;->b:Lcom/google/android/gms/common/api/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_13
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v2

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->f()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->h()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->i()V

    :cond_2d
    move-object v4, v1

    :goto_2e
    iget-object v6, p0, Lcom/google/android/gms/plus/internal/q;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v0, Lcom/google/android/gms/plus/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/q;->a:Lcom/google/android/gms/plus/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/q;->b:Lcom/google/android/gms/common/api/t;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/r;-><init>(Lcom/google/android/gms/plus/internal/l;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/internal/gn;)V

    return-void

    :cond_3e
    move-object v4, p1

    goto :goto_2e

    :cond_40
    move-object v0, v1

    goto :goto_13
.end method
