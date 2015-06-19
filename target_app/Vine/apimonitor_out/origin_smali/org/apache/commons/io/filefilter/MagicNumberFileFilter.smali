.class public Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "MagicNumberFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x799f06c25c62aacL


# instance fields
.field private final byteOffset:J

.field private final magicNumbers:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    array-length v0, p1

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 9

    const/4 v4, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v1, 0x0

    :try_start_10
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v5, v5

    new-array v0, v5, [B

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_38

    :try_start_1c
    iget-wide v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v5, v5
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_45

    if-eq v3, v5, :cond_2e

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2d
    :goto_2d
    return v4

    :cond_2e
    :try_start_2e
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_42
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_45

    move-result v4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2d

    :catch_38
    move-exception v5

    :goto_39
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2d

    :catchall_3d
    move-exception v4

    :goto_3e
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    :catchall_42
    move-exception v4

    move-object v1, v2

    goto :goto_3e

    :catch_45
    move-exception v5

    move-object v1, v2

    goto :goto_39
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
