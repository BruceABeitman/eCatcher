.class Lcom/google/android/gms/internal/nm$6;
.super Lcom/google/android/gms/internal/np;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/b/d;II)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/games/b/d;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nm;Lcom/google/android/gms/games/b/d;II)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/nm$6;->d:Lcom/google/android/gms/internal/nm;

    iput-object p2, p0, Lcom/google/android/gms/internal/nm$6;->a:Lcom/google/android/gms/games/b/d;

    iput p3, p0, Lcom/google/android/gms/internal/nm$6;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/nm$6;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/internal/nm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nm$6;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/nm$6;->a:Lcom/google/android/gms/games/b/d;

    iget v1, p0, Lcom/google/android/gms/internal/nm$6;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/nm$6;->c:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/games/b/d;II)V

    return-void
.end method
