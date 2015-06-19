.class public abstract Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;
.super Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpEntity;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    :cond_14
    return-object v0
.end method

.method public expectContinue()Z
    .registers 3

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "100-continue"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-void
.end method
