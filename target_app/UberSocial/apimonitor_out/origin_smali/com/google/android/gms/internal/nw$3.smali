.class Lcom/google/android/gms/internal/nw$3;
.super Lcom/google/android/gms/internal/nx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nw;->a(Lcom/google/android/gms/common/api/e;III)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/nw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nw;III)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/nw$3;->d:Lcom/google/android/gms/internal/nw;

    iput p2, p0, Lcom/google/android/gms/internal/nw$3;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/nw$3;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/nw$3;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nx;-><init>(Lcom/google/android/gms/internal/nw$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nw$3;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/nw$3;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/nw$3;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/nw$3;->c:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;III)V

    return-void
.end method
