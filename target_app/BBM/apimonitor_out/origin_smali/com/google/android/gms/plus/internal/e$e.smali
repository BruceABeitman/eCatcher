.class final Lcom/google/android/gms/plus/internal/e$e;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field private final QI:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Rf:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$e;->Rf:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$e;->QI:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_13
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v2

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_2d
    move-object v4, v1

    :goto_2e
    iget-object v6, p0, Lcom/google/android/gms/plus/internal/e$e;->Rf:Lcom/google/android/gms/plus/internal/e;

    new-instance v0, Lcom/google/android/gms/plus/internal/e$f;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/e$e;->Rf:Lcom/google/android/gms/plus/internal/e;

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$e;->QI:Lcom/google/android/gms/common/api/a$c;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/e$f;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/eh$b;)V

    return-void

    :cond_3e
    move-object v4, p1

    goto :goto_2e

    :cond_40
    move-object v0, v1

    goto :goto_13
.end method
