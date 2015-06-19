.class Lcom/google/android/gms/drive/internal/az$2;
.super Lcom/google/android/gms/drive/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/az;->c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/az;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/az$2;->a:Lcom/google/android/gms/drive/internal/az;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/bc;-><init>(Lcom/google/android/gms/drive/internal/az;Lcom/google/android/gms/drive/internal/az$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/az$2;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/az$2;->a:Lcom/google/android/gms/drive/internal/az;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/ListParentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/bb;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
