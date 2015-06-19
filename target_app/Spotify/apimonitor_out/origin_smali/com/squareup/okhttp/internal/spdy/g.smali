.class final Lcom/squareup/okhttp/internal/spdy/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/a/i;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    return-void
.end method

.method private a(III)V
    .registers 7

    if-ge p1, p2, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    sub-int v0, p1, p2

    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    goto :goto_9
.end method

.method private a(Lcom/squareup/okhttp/internal/a/d;)V
    .registers 5

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/d;->e()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/g;->a(III)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/a/i;->b(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/i;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x40

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_4c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v3, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x3f

    invoke-direct {p0, v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/g;->a(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/g;->a(Lcom/squareup/okhttp/internal/a/d;)V

    :goto_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_38
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/g;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/spdy/g;->a(Lcom/squareup/okhttp/internal/a/d;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/g;->a(Lcom/squareup/okhttp/internal/a/d;)V

    goto :goto_34

    :cond_4c
    return-void
.end method
