.class public final Lcom/twidroid/net/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/twidroid/net/b/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/b/a/e;->a:Lcom/twidroid/net/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/net/b/a/e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twidroid/net/b/a/e;->c:J

    iput-object p5, p0, Lcom/twidroid/net/b/a/e;->d:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/twidroid/net/b/a/a$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/twidroid/net/b/a/e;-><init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twidroid/net/b/a/b;
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/b/a/e;->a:Lcom/twidroid/net/b/a/a;

    iget-object v1, p0, Lcom/twidroid/net/b/a/e;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twidroid/net/b/a/e;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J)Lcom/twidroid/net/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/a/e;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/net/b/a/e;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 5

    iget-object v1, p0, Lcom/twidroid/net/b/a/e;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
