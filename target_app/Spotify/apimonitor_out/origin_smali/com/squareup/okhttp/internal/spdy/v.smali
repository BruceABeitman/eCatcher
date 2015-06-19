.class public final Lcom/squareup/okhttp/internal/spdy/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/squareup/okhttp/internal/a/c;

.field private c:Lcom/squareup/okhttp/internal/a/b;

.field private d:Lcom/squareup/okhttp/internal/spdy/m;

.field private e:Lcom/squareup/okhttp/Protocol;

.field private f:Lcom/squareup/okhttp/internal/spdy/p;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/internal/spdy/m;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->d:Lcom/squareup/okhttp/internal/spdy/m;

    sget-object v0, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->e:Lcom/squareup/okhttp/Protocol;

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/p;->a:Lcom/squareup/okhttp/internal/spdy/p;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->f:Lcom/squareup/okhttp/internal/spdy/p;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/v;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->g:Z

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/v;->b:Lcom/squareup/okhttp/internal/a/c;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/spdy/v;->c:Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/Protocol;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->e:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/spdy/p;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->f:Lcom/squareup/okhttp/internal/spdy/p;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/spdy/m;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->d:Lcom/squareup/okhttp/internal/spdy/m;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/a/c;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->b:Lcom/squareup/okhttp/internal/a/c;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/a/b;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/v;->c:Lcom/squareup/okhttp/internal/a/b;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/spdy/u;
    .registers 3

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/spdy/u;-><init>(Lcom/squareup/okhttp/internal/spdy/v;B)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/v;
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/v;->e:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method
