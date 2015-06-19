.class public final Lcom/instagram/android/feed/e/f;
.super Ljava/lang/Object;
.source "ExploreAnalyticsUtil.java"


# direct methods
.method private static a(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_27

    :goto_22
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_27
    move-exception v1

    goto :goto_22
.end method

.method public static a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/feed/d/z;II)V
    .registers 11

    rem-int/lit8 v0, p3, 0x3

    div-int/lit8 v1, p3, 0x3

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v2

    new-instance v3, Lcom/instagram/common/analytics/b;

    invoke-direct {v3, p1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v4, "media_id"

    invoke-interface {p2}, Lcom/instagram/feed/d/z;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v3

    const-string v4, "position"

    invoke-static {v0, v1}, Lcom/instagram/android/feed/e/f;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "visible_item_count"

    invoke-virtual {v0, v1, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "algorithm"

    invoke-interface {p2}, Lcom/instagram/feed/d/z;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "impression_token"

    invoke-interface {p2}, Lcom/instagram/feed/d/z;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    return-void
.end method
