.class public final Lcom/google/android/gms/internal/qt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/b;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qt;->a:Lcom/google/android/gms/common/api/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/qt$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/qt;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/qt$1;-><init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 15

    new-instance v0, Lcom/google/android/gms/internal/qt$2;

    iget-object v2, p0, Lcom/google/android/gms/internal/qt;->a:Lcom/google/android/gms/common/api/c;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/qt$2;-><init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/plus/a/a/c;)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/qt$3;

    iget-object v1, p0, Lcom/google/android/gms/internal/qt;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/qt$3;-><init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/plus/a/a/c;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/qt$4;

    iget-object v1, p0, Lcom/google/android/gms/internal/qt;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/qt$4;-><init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
