.class public final Lcom/google/android/gms/internal/rp;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/plus/a/b/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/google/android/gms/plus/a/b/h;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ir$c;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/rp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ir$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public F()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public G()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public K()Lcom/google/android/gms/plus/a/b/i;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public O()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public P()I
    .registers 2

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rc;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic R()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public T()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic U()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public W()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public X()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Z()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/util/ArrayList;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public aa()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ab()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public ac()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ad()Ljava/lang/String;
    .registers 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ae()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic af()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public ah()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ai()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aj()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/plus/a/b/a;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ir;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->D()Lcom/google/android/gms/plus/a/b/h;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ir$c;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->P()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->ad()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ir;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ir$c;ILjava/lang/String;)V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->d()Lcom/google/android/gms/plus/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/plus/a/b/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public s()Lcom/google/android/gms/plus/a/b/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public z()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
