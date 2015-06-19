.class Lcom/a/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/a/a/ae;-><init>(Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/ae;->a:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/ae;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/a/a/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/a/a/ae;->b:Ljava/util/Map;

    sget-object v1, Lcom/a/a/ag;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v1, "Crashlytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing report at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/a/ae;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/ae;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/a/ae;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/a/a/ae;->a:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/a/a/ae;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
