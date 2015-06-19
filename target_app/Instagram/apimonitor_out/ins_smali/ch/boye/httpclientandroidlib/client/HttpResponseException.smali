.class public Lch/boye/httpclientandroidlib/client/HttpResponseException;
.super Lch/boye/httpclientandroidlib/client/ClientProtocolException;
.source "HttpResponseException.java"
.field private static final serialVersionUID:J = -0x63bc080fd5942acdL
.field private final statusCode:I
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V
iput p1, p0, Lch/boye/httpclientandroidlib/client/HttpResponseException;->statusCode:I
return-void
.end method
.method public getStatusCode()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/client/HttpResponseException;->statusCode:I
return v0
.end method