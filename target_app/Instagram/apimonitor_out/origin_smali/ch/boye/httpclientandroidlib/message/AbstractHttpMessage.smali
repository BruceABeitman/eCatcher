.class public abstract Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.super Ljava/lang/Object;
.source "AbstractHttpMessage.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpMessage;


# instance fields
.field protected headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

.field protected params:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method protected constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method


# virtual methods
.method public addHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-nez v0, :cond_b

    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public headerIterator()Lch/boye/httpclientandroidlib/HeaderIterator;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->iterator()Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->iterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->removeHeader(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->iterator()Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method public setHeader(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->updateHeader(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->updateHeader(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public setHeaders([Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method
