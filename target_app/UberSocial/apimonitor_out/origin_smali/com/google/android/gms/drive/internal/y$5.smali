.class Lcom/google/android/gms/drive/internal/y$5;
.super Lcom/google/android/gms/drive/internal/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/y;->d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/y$5;->a:Lcom/google/android/gms/drive/internal/y;

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/ak;-><init>(Lcom/google/android/gms/drive/internal/y;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y$5;->a(Lcom/google/android/gms/drive/internal/am;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/am;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/bm;)V

    return-void
.end method
