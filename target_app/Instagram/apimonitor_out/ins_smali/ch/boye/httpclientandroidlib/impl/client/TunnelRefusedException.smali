.class public Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;
.super Lch/boye/httpclientandroidlib/HttpException;
.source "TunnelRefusedException.java"
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL
.field private final response:Lch/boye/httpclientandroidlib/HttpResponse;
.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 3
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->response:Lch/boye/httpclientandroidlib/HttpResponse;
return-void
.end method
.method public getResponse()Lch/boye/httpclientandroidlib/HttpResponse;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->response:Lch/boye/httpclientandroidlib/HttpResponse;
return-object v0
.end method