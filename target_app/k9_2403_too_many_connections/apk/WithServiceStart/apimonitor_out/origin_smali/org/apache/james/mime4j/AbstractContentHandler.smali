.class public abstract Lorg/apache/james/mime4j/AbstractContentHandler;
.super Ljava/lang/Object;
.source "AbstractContentHandler.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public endBodyPart()V
    .registers 1

    return-void
.end method

.method public endHeader()V
    .registers 1

    return-void
.end method

.method public endMessage()V
    .registers 1

    return-void
.end method

.method public endMultipart()V
    .registers 1

    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public field(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public startBodyPart()V
    .registers 1

    return-void
.end method

.method public startHeader()V
    .registers 1

    return-void
.end method

.method public startMessage()V
    .registers 1

    return-void
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .registers 2

    return-void
.end method
