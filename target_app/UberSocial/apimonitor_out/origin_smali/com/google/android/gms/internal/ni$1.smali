.class Lcom/google/android/gms/internal/ni$1;
.super Lcom/google/android/gms/internal/nj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ni;->b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ni;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ni;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ni$1;->a:Lcom/google/android/gms/internal/ni;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nj;-><init>(Lcom/google/android/gms/internal/ni$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ni$1;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
