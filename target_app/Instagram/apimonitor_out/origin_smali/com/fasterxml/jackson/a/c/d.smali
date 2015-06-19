.class public final Lcom/fasterxml/jackson/a/c/d;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/fasterxml/jackson/a/d;

.field protected final c:Z

.field protected final d:Lcom/fasterxml/jackson/a/g/a;

.field protected e:[B

.field protected f:[B

.field protected g:[B

.field protected h:[C

.field protected i:[C

.field protected j:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/g/a;Ljava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->e:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->f:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->g:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->h:[C

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->i:[C

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->j:[C

    iput-object p1, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    iput-object p2, p0, Lcom/fasterxml/jackson/a/c/d;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/a/c/d;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call same allocXxx() method second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    if-eq p0, p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/fasterxml/jackson/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/c/d;->b:Lcom/fasterxml/jackson/a/d;

    return-void
.end method

.method public final a([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->e:[B

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->e:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->a:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;[B)V

    :cond_11
    return-void
.end method

.method public final a([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->h:[C

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->h:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->a:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;[C)V

    :cond_11
    return-void
.end method

.method public final a(I)[C
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->j:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->d:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->j:[C

    return-object v0
.end method

.method public final b()Lcom/fasterxml/jackson/a/d;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->b:Lcom/fasterxml/jackson/a/d;

    return-object v0
.end method

.method public final b([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->f:[B

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->f:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->b:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;[B)V

    :cond_11
    return-void
.end method

.method public final b([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->i:[C

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->i:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->b:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;[C)V

    :cond_11
    return-void
.end method

.method public final c([B)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->g:[B

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->g:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->d:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;[B)V

    :cond_11
    return-void
.end method

.method public final c([C)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->j:[C

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->j:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->d:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;[C)V

    :cond_11
    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/c/d;->c:Z

    return v0
.end method

.method public final d()Lcom/fasterxml/jackson/a/g/o;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/a/g/o;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/g/o;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    return-object v0
.end method

.method public final e()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->e:[B

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->a:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->e:[B

    return-object v0
.end method

.method public final f()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->f:[B

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->b:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->f:[B

    return-object v0
.end method

.method public final g()[B
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->g:[B

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->d:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->g:[B

    return-object v0
.end method

.method public final h()[C
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->h:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->a:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->h:[C

    return-object v0
.end method

.method public final i()[C
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->i:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->d:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->b:Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/d;->i:[C

    return-object v0
.end method
