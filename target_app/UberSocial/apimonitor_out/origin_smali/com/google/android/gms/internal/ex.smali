.class final Lcom/google/android/gms/internal/ex;
.super Lcom/google/android/gms/internal/gp;

# interfaces
.implements Lcom/google/android/gms/a/d;
.implements Lcom/google/android/gms/a/g;
.implements Lcom/google/android/gms/a/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ep;

.field private final d:I

.field private final e:Lcom/google/android/gms/common/api/Status;

.field private final f:Lcom/google/android/gms/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;ILcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ex;->a:Lcom/google/android/gms/internal/ep;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    iput p3, p0, Lcom/google/android/gms/internal/ex;->d:I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p4}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->e:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/a/b;

    invoke-direct {v0, p4}, Lcom/google/android/gms/a/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    return-void
.end method

.method private l()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->e:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/a/g;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/b;->b()V

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ex;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/b;->a()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/a/b;->a(I)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public g()[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/b;->a()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/a/b;->a(I)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->c()[B

    move-result-object v0

    goto :goto_9
.end method

.method public g_()Lcom/google/android/gms/a/d;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public h()[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/b;->a()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->f:Lcom/google/android/gms/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/a/b;->a(I)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->f()[B

    move-result-object v0

    goto :goto_9
.end method
