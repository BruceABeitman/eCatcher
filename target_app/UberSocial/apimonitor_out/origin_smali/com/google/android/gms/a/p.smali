.class public final Lcom/google/android/gms/a/p;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "local_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .registers 2

    const-string v0, "local_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    const-string v0, "conflict_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "conflict_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/a/o;->a(Lcom/google/android/gms/a/a;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()[B
    .registers 2

    const-string v0, "conflict_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/p;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/gms/a/a;
    .registers 2

    new-instance v0, Lcom/google/android/gms/a/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/a/o;-><init>(Lcom/google/android/gms/a/a;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/a/o;->a(Lcom/google/android/gms/a/a;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/a/p;->g()Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/a/o;->b(Lcom/google/android/gms/a/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
