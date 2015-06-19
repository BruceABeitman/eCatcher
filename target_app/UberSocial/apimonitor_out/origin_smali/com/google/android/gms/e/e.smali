.class public Lcom/google/android/gms/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# instance fields
.field private final a:Lcom/google/android/gms/internal/qm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/qm;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/qm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V

    iput-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qm;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/e/f;Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    new-instance v1, Lcom/google/android/gms/e/e$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/e/e$1;-><init>(Lcom/google/android/gms/e/e;Lcom/google/android/gms/e/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/common/api/t;Landroid/net/Uri;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/e/f;Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    new-instance v1, Lcom/google/android/gms/e/e$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/e/e$2;-><init>(Lcom/google/android/gms/e/e;Lcom/google/android/gms/e/f;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/common/api/t;Landroid/net/Uri;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->b(Lcom/google/android/gms/common/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->c(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qm;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qm;->c()Z

    move-result v0

    return v0
.end method

.method public c_()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qm;->c_()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qm;->d()Z

    move-result v0

    return v0
.end method
