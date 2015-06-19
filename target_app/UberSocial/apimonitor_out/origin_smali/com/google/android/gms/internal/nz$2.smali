.class Lcom/google/android/gms/internal/nz$2;
.super Lcom/google/android/gms/internal/oe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;I[I)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[I

.field final synthetic c:Lcom/google/android/gms/internal/nz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nz;I[I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/nz$2;->c:Lcom/google/android/gms/internal/nz;

    iput p2, p0, Lcom/google/android/gms/internal/nz$2;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/nz$2;->b:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oe;-><init>(Lcom/google/android/gms/internal/nz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nz$2;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/nz$2;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/nz$2;->b:[I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;I[I)V

    return-void
.end method
