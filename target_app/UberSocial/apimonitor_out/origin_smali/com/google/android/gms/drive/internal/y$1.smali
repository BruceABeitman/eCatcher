.class Lcom/google/android/gms/drive/internal/y$1;
.super Lcom/google/android/gms/drive/internal/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/query/Query;

.field final synthetic b:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/drive/query/Query;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/y$1;->b:Lcom/google/android/gms/drive/internal/y;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/y$1;->a:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/ah;-><init>(Lcom/google/android/gms/drive/internal/y;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y$1;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/y$1;->a:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/ag;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/ag;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
