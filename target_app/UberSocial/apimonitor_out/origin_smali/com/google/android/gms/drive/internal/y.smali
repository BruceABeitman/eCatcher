.class public Lcom/google/android/gms/drive/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/internal/y$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/y$2;-><init>(Lcom/google/android/gms/drive/internal/y;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/internal/y$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/y$3;-><init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/j;
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/internal/y$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/y$1;-><init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/drive/query/Query;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/internal/y$4;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/y$4;-><init>(Lcom/google/android/gms/drive/internal/y;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/i;
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/drive/internal/an;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/an;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public a()Lcom/google/android/gms/drive/v;
    .registers 2

    new-instance v0, Lcom/google/android/gms/drive/v;

    invoke-direct {v0}, Lcom/google/android/gms/drive/v;-><init>()V

    return-object v0
.end method

.method public b()Lcom/google/android/gms/drive/a;
    .registers 2

    new-instance v0, Lcom/google/android/gms/drive/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/a;-><init>()V

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/drive/k;
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/am;

    new-instance v1, Lcom/google/android/gms/drive/internal/at;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/am;->i()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/at;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v1
.end method

.method public b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/k;
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/drive/internal/at;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/at;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/drive/k;
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/am;->j()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/google/android/gms/drive/internal/at;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/at;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/internal/y$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/y$5;-><init>(Lcom/google/android/gms/drive/internal/y;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
