.class public Lch/boye/httpclientandroidlib/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "BasicRequestLine.java"
.implements Lch/boye/httpclientandroidlib/RequestLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.field private static final serialVersionUID:J = 0x2701312e8d8938a9L
.field private final method:Ljava/lang/String;
.field private final protoversion:Lch/boye/httpclientandroidlib/ProtocolVersion;
.field private final uri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Method must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "URI must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
if-nez p3, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Protocol version must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->method:Ljava/lang/String;
iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->uri:Ljava/lang/String;
iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->protoversion:Lch/boye/httpclientandroidlib/ProtocolVersion;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getMethod()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->method:Ljava/lang/String;
return-object v0
.end method
.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->protoversion:Lch/boye/httpclientandroidlib/ProtocolVersion;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;->uri:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
sget-object v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
const/4 v1, 0x0
invoke-virtual {v0, v1, p0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method