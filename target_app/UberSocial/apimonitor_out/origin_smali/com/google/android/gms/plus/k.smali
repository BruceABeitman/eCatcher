.class public Lcom/google/android/gms/plus/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/plus/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/internal/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/a/a/c;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/plus/a/a/c;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/m;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$7;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/l;->c(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/n;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$1;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/n;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/n;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$2;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/n;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/o;ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$3;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/o;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/o;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$4;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/o;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/o;Ljava/util/Collection;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$5;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/o;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs a(Lcom/google/android/gms/plus/o;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    new-instance v1, Lcom/google/android/gms/plus/k$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/k$6;-><init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/o;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->b(Lcom/google/android/gms/common/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->c(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/l;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->c()Z

    move-result v0

    return v0
.end method

.method public c_()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->c_()V

    return-void
.end method

.method public d()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/android/gms/plus/a/b/a;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->i()Lcom/google/android/gms/plus/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->j()V

    return-void
.end method

.method h()Lcom/google/android/gms/plus/internal/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/k;->a:Lcom/google/android/gms/plus/internal/l;

    return-object v0
.end method
