.class public Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;
.super Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/RequestLine;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .registers 3

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

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

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-void
.end method
