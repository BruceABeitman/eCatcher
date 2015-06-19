.class Lcom/google/android/gms/drive/internal/an$3;
.super Lcom/google/android/gms/drive/internal/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/an;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/Contents;

.field final synthetic b:Lcom/google/android/gms/drive/t;

.field final synthetic c:Lcom/google/android/gms/drive/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/an$3;->c:Lcom/google/android/gms/drive/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/an$3;->a:Lcom/google/android/gms/drive/Contents;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/an$3;->b:Lcom/google/android/gms/drive/t;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/ao;-><init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/internal/an$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/an$3;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/an$3;->a:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/an$3;->c:Lcom/google/android/gms/drive/internal/an;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/an;->a:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/an$3;->b:Lcom/google/android/gms/drive/t;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/t;->h()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/an$3;->a:Lcom/google/android/gms/drive/Contents;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
