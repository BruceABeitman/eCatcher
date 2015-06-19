.class Lcom/google/android/gms/internal/nm$4;
.super Lcom/google/android/gms/internal/np;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/internal/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;IIIZ)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/nm$4;->f:Lcom/google/android/gms/internal/nm;

    iput-object p2, p0, Lcom/google/android/gms/internal/nm$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/nm$4;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/nm$4;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/nm$4;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/nm$4;->e:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/internal/nm$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nm$4;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 9

    iget-object v2, p0, Lcom/google/android/gms/internal/nm$4;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/nm$4;->b:I

    iget v4, p0, Lcom/google/android/gms/internal/nm$4;->c:I

    iget v5, p0, Lcom/google/android/gms/internal/nm$4;->d:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/nm$4;->e:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IIIZ)V

    return-void
.end method
