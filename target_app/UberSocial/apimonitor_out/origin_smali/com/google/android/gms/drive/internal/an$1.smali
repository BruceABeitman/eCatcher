.class Lcom/google/android/gms/drive/internal/an$1;
.super Lcom/google/android/gms/drive/internal/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/an;->a(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/drive/j;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/drive/j;

.field final synthetic c:Lcom/google/android/gms/drive/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/an;ILcom/google/android/gms/drive/j;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/an$1;->c:Lcom/google/android/gms/drive/internal/an;

    iput p2, p0, Lcom/google/android/gms/drive/internal/an$1;->a:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/an$1;->b:Lcom/google/android/gms/drive/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/ar;-><init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/internal/an$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/an$1;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/an$1;->c:Lcom/google/android/gms/drive/internal/an;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/an;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/an$1;->a:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/aq;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/an$1;->b:Lcom/google/android/gms/drive/j;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/aq;-><init>(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/drive/j;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
