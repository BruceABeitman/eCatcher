.class public Lch/boye/httpclientandroidlib/entity/EntityTemplate;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "EntityTemplate.java"
.field private final contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentProducer;)V
.registers 4
invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Content producer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Entity template does not implement getContent()"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getContentLength()J
.registers 3
const-wide/16 v0, -0x1
return-wide v0
.end method
.method public isRepeatable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isStreaming()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Output stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/entity/ContentProducer;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method