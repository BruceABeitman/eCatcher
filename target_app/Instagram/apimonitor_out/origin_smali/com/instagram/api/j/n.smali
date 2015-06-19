.class public final Lcom/instagram/api/j/n;
.super Lcom/instagram/api/j/j;
.source "ObjectMappedApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Lcom/fasterxml/jackson/databind/JsonNode;

.field private d:Ljava/lang/String;

.field private e:Lcom/instagram/service/b/a;

.field private f:Z

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V

    iput-object p1, p0, Lcom/instagram/api/j/n;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .registers 5

    invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/n;->e:Lcom/instagram/service/b/a;

    iget-object v0, p0, Lcom/instagram/api/j/n;->e:Lcom/instagram/service/b/a;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v0, p0, Lcom/instagram/api/j/n;->c:Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/api/b/b;
    .registers 3

    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/b/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/instagram/api/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/j/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")",
            "Lcom/instagram/api/j/n",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/instagram/api/j/n;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/instagram/api/j/n;-><init>(Ljava/lang/String;B)V

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/n;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/n;->a(Z)V

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/api/j/n;->g()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_41

    :cond_2e
    invoke-direct {v0}, Lcom/instagram/api/j/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_42

    :goto_3e
    invoke-virtual {v0, v1}, Lcom/instagram/api/j/n;->a(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_44

    :cond_41
    :goto_41
    return-object v0

    :cond_42
    move-object v1, v2

    goto :goto_3e

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/n;->d(Ljava/lang/String;)Lcom/instagram/api/j/n;

    move-result-object v0

    goto :goto_41
.end method

.method private static a(Ljava/util/Iterator;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0}, Lcom/instagram/api/j/n;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/api/b/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_19
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Lcom/instagram/api/j/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/instagram/api/j/n",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/api/j/n;

    if-nez p0, :cond_e

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    invoke-direct {v0, p0}, Lcom/instagram/api/j/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_36
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private p()Lcom/instagram/service/b/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/j/n;->e:Lcom/instagram/service/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/api/j/n;->p()Lcom/instagram/service/b/a;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/instagram/service/b/a;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v0, "ok"

    goto :goto_17

    :cond_21
    move-object v1, v0

    goto :goto_11
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/api/j/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/j/n;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/api/j/n;->f:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error_title"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/instagram/api/j/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final g()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/api/j/n;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final h()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/api/j/n;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/j/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/api/j/n;->f:Z

    return v0
.end method

.method public final k()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/api/j/n;->g:Ljava/util/Collection;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "_messages"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/n;->a(Ljava/util/Iterator;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/n;->g:Ljava/util/Collection;

    :cond_20
    iget-object v0, p0, Lcom/instagram/api/j/n;->g:Ljava/util/Collection;

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final l()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/j/n;->c:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "checkpoint_url"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "checkpoint_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public final n()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, "lock"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
