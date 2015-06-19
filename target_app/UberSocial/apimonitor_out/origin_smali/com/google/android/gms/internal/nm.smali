.class public final Lcom/google/android/gms/internal/nm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/b/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->l()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/b/d;II)Lcom/google/android/gms/common/api/j;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/nm$6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/nm$6;-><init>(Lcom/google/android/gms/internal/nm;Lcom/google/android/gms/games/b/d;II)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;II)Lcom/google/android/gms/common/api/j;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/nm$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/nm$3;-><init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;II)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;III)Lcom/google/android/gms/common/api/j;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/j;
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/nm$4;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/nm$4;-><init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;IIIZ)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/nm$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/nm$2;-><init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Z)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/nm$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nm$1;-><init>(Lcom/google/android/gms/internal/nm;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;III)Lcom/google/android/gms/common/api/j;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/nm;->b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/j;
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/nm$5;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/nm$5;-><init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;IIIZ)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;J)Lcom/google/android/gms/common/api/j;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nm;->b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/nm$7;

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nm$7;-><init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
