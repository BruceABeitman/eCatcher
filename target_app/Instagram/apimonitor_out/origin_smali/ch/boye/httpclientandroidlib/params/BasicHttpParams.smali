.class public Lch/boye/httpclientandroidlib/params/BasicHttpParams;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "BasicHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x6257f1e0a974410fL


# instance fields
.field private final parameters:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->copyParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public copy()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cloning not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected copyParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method
