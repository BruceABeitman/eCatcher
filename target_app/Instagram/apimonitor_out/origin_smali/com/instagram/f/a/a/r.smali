.class public final Lcom/instagram/f/a/a/r;
.super Lcom/instagram/api/j/b;
.source "PostDirectShareCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/b;

.field private final b:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/feed/d/b;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object p3, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/a/r;->b:Ljava/util/UUID;

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->C()Lcom/instagram/feed/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, ""

    goto :goto_2e
.end method

.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-static {v1, v0}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V

    iget-object v0, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->D()V

    iget-object v0, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    if-ne v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/instagram/f/a/a/r;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/f/a/a/r;->k()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/f/a/a/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V

    :cond_30
    return-object v3
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->E()V

    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "comment_text"

    iget-object v1, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_request_uid"

    iget-object v1, p0, Lcom/instagram/f/a/a/r;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "last_comment_id"

    iget-object v1, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/f/a/a/r;->a(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/f/a/a/r;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const-string v0, "direct_share/%s/comment/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/f/a/a/r;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
