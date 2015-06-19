.class public final Lcom/google/android/gms/internal/ne;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/a/c;


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

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->m()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Z)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ne$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ne$1;-><init>(Lcom/google/android/gms/internal/ne;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ne$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/ne$2;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ne$6;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/ne$6;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ne$3;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/ne$3;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ne$7;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/ne$7;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ne$4;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/ne$4;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    return-void
.end method

.method public c(Lcom/google/android/gms/common/api/e;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ne$8;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/ne$8;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    return-void
.end method

.method public d(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ne$5;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/ne$5;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/e;Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ne$9;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/ne$9;-><init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
