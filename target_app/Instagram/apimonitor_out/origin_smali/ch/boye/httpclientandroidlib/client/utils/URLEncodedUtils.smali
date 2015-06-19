.class public Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    :goto_2
    :try_start_2
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string p1, "ISO-8859-1"
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_2

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    :goto_2
    :try_start_2
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string p1, "ISO-8859-1"
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_2

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_32

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_3e
    const-string v0, ""

    goto :goto_27

    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEncoded(Lch/boye/httpclientandroidlib/HttpEntity;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1a

    aget-object v0, v1, v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_1a
    return v0
.end method

.method public static parse(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_4b

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_25
    :goto_25
    if-eqz v2, :cond_4a

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "ASCII"

    invoke-static {p0, v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    :cond_4a
    return-object v0

    :cond_4b
    move-object v2, v1

    goto :goto_25
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, p1}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    :cond_1d
    return-object v0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :goto_6
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-eqz v0, :cond_1c

    array-length v0, v1

    if-le v0, v4, :cond_24

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0, p2}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v1

    if-ne v3, v4, :cond_36

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0, p2}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_36
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3f
    return-void
.end method
