.class Lcom/google/android/gms/drive/internal/y$3;
.super Lcom/google/android/gms/drive/internal/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/Contents;

.field final synthetic b:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/drive/Contents;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/y$3;->b:Lcom/google/android/gms/drive/internal/y;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/y$3;->a:Lcom/google/android/gms/drive/Contents;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/ai;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y$3;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/y$3;->a:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
