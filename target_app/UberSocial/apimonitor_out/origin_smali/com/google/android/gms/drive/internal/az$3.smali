.class Lcom/google/android/gms/drive/internal/az$3;
.super Lcom/google/android/gms/drive/internal/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/az;->b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/t;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/t;

.field final synthetic b:Lcom/google/android/gms/drive/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/az;Lcom/google/android/gms/drive/t;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/az$3;->b:Lcom/google/android/gms/drive/internal/az;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/az$3;->a:Lcom/google/android/gms/drive/t;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/bf;-><init>(Lcom/google/android/gms/drive/internal/az;Lcom/google/android/gms/drive/internal/az$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/az$3;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/az$3;->b:Lcom/google/android/gms/drive/internal/az;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/az;->a:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/az$3;->a:Lcom/google/android/gms/drive/t;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/t;->h()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/bd;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
