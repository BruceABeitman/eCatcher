.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    new-instance v1, Lorg/apache/james/mime4j/message/Message$MessageBuilder;

    invoke-direct {v1, p0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/james/mime4j/field/UnstructuredField;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v1

    instance-of v3, v1, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v3, :cond_17

    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    :goto_16
    return-void

    :cond_17
    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_16
.end method
