.class Lcom/google/android/gms/drive/internal/an$2;
.super Lcom/google/android/gms/drive/internal/ap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/an;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/Contents;

.field final synthetic b:Lcom/google/android/gms/drive/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/Contents;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/an$2;->b:Lcom/google/android/gms/drive/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/an$2;->a:Lcom/google/android/gms/drive/Contents;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/ap;-><init>(Lcom/google/android/gms/drive/internal/an;Lcom/google/android/gms/drive/internal/an$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/an$2;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/an$2;->a:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/an$2;->a:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
