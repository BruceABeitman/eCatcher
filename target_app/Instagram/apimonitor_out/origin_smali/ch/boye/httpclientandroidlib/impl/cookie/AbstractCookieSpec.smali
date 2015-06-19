.class public abstract Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;
.super Ljava/lang/Object;
.source "AbstractCookieSpec.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpec;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final attribHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;->attribHandlerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected findAttribHandler(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    return-object v0
.end method

.method protected getAttribHandler(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
    .registers 5

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;->findAttribHandler(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handler not registered for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-object v0
.end method

.method protected getAttribHandlers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
