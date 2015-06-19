.class public final Lcom/squareup/okhttp/internal/http/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/f;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/http/e;
    .registers 3

    new-instance v0, Lcom/squareup/okhttp/internal/http/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/f;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
    .registers 5

    const/4 v2, 0x1

    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/squareup/okhttp/internal/http/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    move-result-object v0

    goto :goto_19

    :cond_2d
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/http/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    move-result-object v0

    goto :goto_19
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
    .registers 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_28

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_47

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    :cond_26
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_9
    if-ltz v1, :cond_28

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_23
    return-object v0

    :cond_24
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_9

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method
