.class public final Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
.implements Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;
.implements Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final requestInterceptors:Ljava/util/List;

.field protected final responseInterceptors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V

    return-void
.end method

.method public final addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public final addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public final clearInterceptors()V
    .registers 1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    return-void
.end method

.method public final clearRequestInterceptors()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final clearResponseInterceptors()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V

    return-object v0
.end method

.method public final copy()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;-><init>()V

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V

    return-object v0
.end method

.method protected final copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V
    .registers 4

    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    goto :goto_b
.end method

.method public final getRequestInterceptorCount()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    goto :goto_b
.end method

.method public final getResponseInterceptorCount()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public final process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public final removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public final removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public final setInterceptors(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v2, v0

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    if-eqz v0, :cond_2a

    move-object v0, v1

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    :cond_2a
    instance-of v0, v1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    if-eqz v0, :cond_33

    check-cast v1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    :cond_33
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_37
    return-void
.end method
