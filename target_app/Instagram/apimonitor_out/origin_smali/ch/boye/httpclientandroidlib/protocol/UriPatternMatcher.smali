.class public Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized lookup(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_68

    const/4 v1, 0x0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_6a

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    :cond_5f
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_e .. :try_end_64} :catchall_b

    move-result-object v1

    :goto_65
    move-object v2, v1

    move-object v1, v0

    goto :goto_2f

    :cond_68
    monitor-exit p0

    return-object v2

    :cond_6a
    move-object v0, v1

    move-object v1, v2

    goto :goto_65
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_23
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_39
    move v0, v1

    goto :goto_a
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI request pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setHandlers(Ljava/util/Map;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map of handlers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setObjects(Ljava/util/Map;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map of handlers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_3

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
