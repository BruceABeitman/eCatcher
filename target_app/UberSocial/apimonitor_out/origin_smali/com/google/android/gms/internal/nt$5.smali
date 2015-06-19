.class Lcom/google/android/gms/internal/nt$5;
.super Lcom/google/android/gms/internal/nu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nt;->b(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/internal/nt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nt;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/nt$5;->b:Lcom/google/android/gms/internal/nt;

    iput p2, p0, Lcom/google/android/gms/internal/nt$5;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nu;-><init>(Lcom/google/android/gms/internal/nt$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nt$5;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 8

    const-string v2, "playedWith"

    iget v3, p0, Lcom/google/android/gms/internal/nt$5;->a:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IZZ)V

    return-void
.end method
