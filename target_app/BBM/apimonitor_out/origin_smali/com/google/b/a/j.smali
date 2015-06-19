.class public final Lcom/google/b/a/j;
.super Ljava/lang/Object;
.source "Objects.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/b/a/k;

.field private c:Lcom/google/b/a/k;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/b/a/k;

    invoke-direct {v0, v1}, Lcom/google/b/a/k;-><init>(B)V

    iput-object v0, p0, Lcom/google/b/a/j;->b:Lcom/google/b/a/k;

    iget-object v0, p0, Lcom/google/b/a/j;->b:Lcom/google/b/a/k;

    iput-object v0, p0, Lcom/google/b/a/j;->c:Lcom/google/b/a/k;

    iput-boolean v1, p0, Lcom/google/b/a/j;->d:Z

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/b/a/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/google/b/a/k;
    .registers 3

    new-instance v0, Lcom/google/b/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/b/a/k;-><init>(B)V

    iget-object v1, p0, Lcom/google/b/a/j;->c:Lcom/google/b/a/k;

    iput-object v0, v1, Lcom/google/b/a/k;->c:Lcom/google/b/a/k;

    iput-object v0, p0, Lcom/google/b/a/j;->c:Lcom/google/b/a/k;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/b/a/j;
    .registers 3

    invoke-direct {p0}, Lcom/google/b/a/j;->a()Lcom/google/b/a/k;

    move-result-object v0

    iput-object p1, v0, Lcom/google/b/a/k;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/b/a/j;
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/b/a/j;
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
    .registers 5

    invoke-direct {p0}, Lcom/google/b/a/j;->a()Lcom/google/b/a/k;

    move-result-object v1

    iput-object p2, v1, Lcom/google/b/a/k;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/b/a/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    iget-boolean v2, p0, Lcom/google/b/a/j;->d:Z

    const-string v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/b/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/b/a/j;->b:Lcom/google/b/a/k;

    iget-object v0, v0, Lcom/google/b/a/k;->c:Lcom/google/b/a/k;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1e
    if-eqz v1, :cond_42

    if-eqz v2, :cond_26

    iget-object v4, v1, Lcom/google/b/a/k;->b:Ljava/lang/Object;

    if-eqz v4, :cond_3f

    :cond_26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v4, v1, Lcom/google/b/a/k;->a:Ljava/lang/String;

    if-eqz v4, :cond_3a

    iget-object v4, v1, Lcom/google/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v4, v1, Lcom/google/b/a/k;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    iget-object v1, v1, Lcom/google/b/a/k;->c:Lcom/google/b/a/k;

    goto :goto_1e

    :cond_42
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
