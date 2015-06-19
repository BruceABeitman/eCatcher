.class public final Lcom/instagram/l/a/c;
.super Ljava/lang/Object;
.source "QuickExperimentResponseParser.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/l/a/c;->a:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/instagram/l/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    iget-object v0, p0, Lcom/instagram/l/a/c;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    invoke-virtual {p3}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_24

    invoke-virtual {p3}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_24
    iget-object v1, p1, Lcom/instagram/l/a/b;->a:Ljava/util/List;

    new-instance v2, Lcom/instagram/l/d;

    invoke-direct {v2, p2, v0}, Lcom/instagram/l/d;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    invoke-static {p1, p2, p3}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_2f
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/a/b;
    .registers 5

    new-instance v0, Lcom/instagram/l/a/b;

    invoke-direct {v0}, Lcom/instagram/l/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_12

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_11

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/l/a/c;->a(Lcom/instagram/l/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method
