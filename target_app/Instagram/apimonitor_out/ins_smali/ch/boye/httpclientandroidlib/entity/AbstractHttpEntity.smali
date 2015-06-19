.class public abstract Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"
.implements Lch/boye/httpclientandroidlib/HttpEntity;
.field protected chunked:Z
.field protected contentEncoding:Lch/boye/httpclientandroidlib/Header;
.field protected contentType:Lch/boye/httpclientandroidlib/Header;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public consumeContent()V
.registers 1
return-void
.end method
.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;
return-object v0
.end method
.method public getContentType()Lch/boye/httpclientandroidlib/Header;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;
return-object v0
.end method
.method public isChunked()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z
return v0
.end method
.method public setChunked(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z
return-void
.end method
.method public setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;
return-void
.end method
.method public setContentEncoding(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_a
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v1, "Content-Encoding"
invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:cond_a
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V
return-void
.end method
.method public setContentType(Lch/boye/httpclientandroidlib/Header;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;
return-void
.end method
.method public setContentType(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_a
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v1, "Content-Type"
invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:cond_a
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V
return-void
.end method