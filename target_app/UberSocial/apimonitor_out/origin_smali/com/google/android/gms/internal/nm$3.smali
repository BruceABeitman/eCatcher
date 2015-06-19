.class Lcom/google/android/gms/internal/nm$3;
.super Lcom/google/android/gms/internal/no;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;II)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;II)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/nm$3;->d:Lcom/google/android/gms/internal/nm;

    iput-object p2, p0, Lcom/google/android/gms/internal/nm$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/nm$3;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/nm$3;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no;-><init>(Lcom/google/android/gms/internal/nm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nm$3;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/nm$3;->a:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/nm$3;->b:I

    iget v5, p0, Lcom/google/android/gms/internal/nm$3;->c:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
