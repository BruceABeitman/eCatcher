.class public Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;
.super Ljava/lang/Object;
.source "FileResourceFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final idgen:Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->idgen:Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;

    return-void
.end method

.method private generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const/16 v5, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->idgen:Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->generate(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_34

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_28

    if-ne v3, v5, :cond_2e

    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2e
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_34
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;
    .registers 6

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    instance-of v1, p2, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;

    if-eqz v1, :cond_17

    check-cast p2, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :goto_11
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v1

    :cond_17
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_11
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lch/boye/httpclientandroidlib/client/cache/InputLimit;)Lch/boye/httpclientandroidlib/client/cache/Resource;
    .registers 11

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x800

    :try_start_b
    new-array v4, v0, [B

    const-wide/16 v0, 0x0

    :cond_f
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v0, v5

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->getValue()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_f

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached()V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_32

    :cond_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;

    invoke-direct {v0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v0

    :catchall_32
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method
