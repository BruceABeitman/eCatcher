.class Lcom/google/android/gms/internal/nt$2;
.super Lcom/google/android/gms/internal/nu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/common/api/e;IZ)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/internal/nt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nt;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/nt$2;->c:Lcom/google/android/gms/internal/nt;

    iput p2, p0, Lcom/google/android/gms/internal/nt$2;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/nt$2;->b:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nu;-><init>(Lcom/google/android/gms/internal/nt$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nt$2;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/nt$2;->a:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nt$2;->b:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;IZZ)V

    return-void
.end method
