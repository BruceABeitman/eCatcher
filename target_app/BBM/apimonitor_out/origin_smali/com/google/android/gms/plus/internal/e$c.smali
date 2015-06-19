.class final Lcom/google/android/gms/plus/internal/e$c;
.super Lcom/google/android/gms/internal/eh$d;

# interfaces
.implements Lcom/google/android/gms/plus/Moments$LoadMomentsResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">.d<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
        ">;>;",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;"
    }
.end annotation


# instance fields
.field private final Dh:Ljava/lang/String;

.field final synthetic Rf:Lcom/google/android/gms/plus/internal/e;

.field private final Rg:Ljava/lang/String;

.field private Rh:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$c;->Rf:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$c;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/e$c;->Dh:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/e$c;->Rg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_d

    new-instance v0, Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Rh:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/e$c;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Rh:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Dh:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Rg:Ljava/lang/String;

    return-object v0
.end method

.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Rh:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->Rh:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;->close()V

    :cond_9
    return-void
.end method
