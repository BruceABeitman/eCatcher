.class public Lch/boye/httpclientandroidlib/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x243470d8cecee2c1L


# instance fields
.field private final headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    iget-object v1, v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x1

    :cond_1d
    return v2

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public copy()Lch/boye/httpclientandroidlib/message/HeaderGroup;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;-><init>()V

    iget-object v1, v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    array-length v2, v1

    if-ne v2, v0, :cond_11

    aget-object v0, v1, v4

    goto :goto_a

    :cond_11
    new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    aget-object v3, v1, v4

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_21
    array-length v3, v1

    if-ge v0, v3, :cond_35

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    aget-object v3, v1, v0

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_35
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/Header;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_22

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public iterator()Lch/boye/httpclientandroidlib/HeaderIterator;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setHeaders([Lch/boye/httpclientandroidlib/Header;)V
    .registers 5

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->clear()V

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_2d
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
