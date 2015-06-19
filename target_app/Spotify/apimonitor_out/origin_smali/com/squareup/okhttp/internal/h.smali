.class public final Lcom/squareup/okhttp/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/d;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 7

    iput-object p1, p0, Lcom/squareup/okhttp/internal/h;->a:Lcom/squareup/okhttp/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/h;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/squareup/okhttp/internal/h;->c:J

    iput-object p5, p0, Lcom/squareup/okhttp/internal/h;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/squareup/okhttp/internal/h;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/h;-><init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/e;
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/h;->a:Lcom/squareup/okhttp/internal/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/h;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/h;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/h;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final close()V
    .registers 5

    iget-object v1, p0, Lcom/squareup/okhttp/internal/h;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
