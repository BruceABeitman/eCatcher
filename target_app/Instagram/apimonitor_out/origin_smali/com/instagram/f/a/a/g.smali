.class public final Lcom/instagram/f/a/a/g;
.super Lcom/instagram/api/k/a/b;
.source "ConfigureDirectShareRequest.java"


# instance fields
.field private final b:Lcom/instagram/creation/b/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v2, v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/b/a;)V
    .registers 5

    const-string v0, "caption"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-static {v1}, Lcom/instagram/f/a/a/g;->a(Ljava/util/List;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_5b

    move-result-object v0

    :goto_42
    const-string v1, "recipients"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "video_result"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    return-void

    :catch_5b
    move-exception v1

    goto :goto_42
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/a/a/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "direct_share/configure/?video=1"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "direct_share/configure/"

    goto :goto_a
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
