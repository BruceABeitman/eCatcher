.class public final Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "fbconnect"

    const-string v1, "http"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/a/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_20
.end method

.method private static b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_4a

    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_10
    if-ge v0, v3, :cond_4a

    aget-object v4, v2, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_1a
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_36
    array-length v5, v4

    if-ne v5, v7, :cond_33

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_33

    :catch_48
    move-exception v4

    goto :goto_33

    :cond_4a
    return-object v1
.end method
