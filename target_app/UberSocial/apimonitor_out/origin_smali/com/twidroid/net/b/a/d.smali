.class final Lcom/twidroid/net/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/net/b/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/twidroid/net/b/a/b;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/net/b/a/d;->a:Lcom/twidroid/net/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/net/b/a/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/twidroid/net/b/a/a;->e(Lcom/twidroid/net/b/a/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/twidroid/net/b/a/d;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;Lcom/twidroid/net/b/a/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/twidroid/net/b/a/d;-><init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/d;J)J
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/net/b/a/d;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/d;->e:Lcom/twidroid/net/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/b/a/d;->e:Lcom/twidroid/net/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/d;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/d;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lcom/twidroid/net/b/a/d;->a:Lcom/twidroid/net/b/a/a;

    invoke-static {v1}, Lcom/twidroid/net/b/a/a;->e(Lcom/twidroid/net/b/a/a;)I

    move-result v1

    if-eq v0, v1, :cond_e

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/d;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/twidroid/net/b/a/d;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catch_1f
    move-exception v0

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/d;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_25
    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/b/a/d;->d:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/twidroid/net/b/a/d;)[J
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/d;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/net/b/a/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/net/b/a/d;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/twidroid/net/b/a/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/net/b/a/d;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/twidroid/net/b/a/d;->a:Lcom/twidroid/net/b/a/a;

    invoke-static {v1}, Lcom/twidroid/net/b/a/a;->f(Lcom/twidroid/net/b/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/twidroid/net/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/net/b/a/d;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-wide v4, v2, v0

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/twidroid/net/b/a/d;->a:Lcom/twidroid/net/b/a/a;

    invoke-static {v1}, Lcom/twidroid/net/b/a/a;->f(Lcom/twidroid/net/b/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/twidroid/net/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
