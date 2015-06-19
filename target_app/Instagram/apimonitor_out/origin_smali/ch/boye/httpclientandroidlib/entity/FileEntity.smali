.class public Lch/boye/httpclientandroidlib/entity/FileEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

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
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_15

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method
