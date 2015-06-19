.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 6

    const-string v4, "Content-Type"

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object v1, p0

    :goto_25
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2a
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_25
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
