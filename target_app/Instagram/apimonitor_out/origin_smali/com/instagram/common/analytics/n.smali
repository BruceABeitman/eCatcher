.class final Lcom/instagram/common/analytics/n;
.super Ljava/lang/Object;
.source "ExtraBundle.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/analytics/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto :goto_f

    :cond_43
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/fasterxml/jackson/a/h;)V
    .registers 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/q;

    invoke-interface {v0, p1}, Lcom/instagram/common/analytics/q;->a(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_d

    :cond_2c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method

.method final a(Ljava/lang/String;D)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/p;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/instagram/common/analytics/p;-><init>(DB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/r;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/r;-><init>(IB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/s;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/instagram/common/analytics/s;-><init>(JB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/t;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/t;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/o;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/o;-><init>(ZB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/analytics/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/t;

    invoke-static {v0}, Lcom/instagram/common/analytics/t;->a(Lcom/instagram/common/analytics/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
