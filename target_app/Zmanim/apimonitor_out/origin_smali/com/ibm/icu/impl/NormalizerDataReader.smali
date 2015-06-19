.class final Lcom/ibm/icu/impl/NormalizerDataReader;
.super Ljava/lang/Object;
.source "NormalizerDataReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:[B

.field private static final DATA_FORMAT_VERSION:[B

.field private static final debug:Z


# instance fields
.field private dataInputStream:Ljava/io/DataInputStream;

.field private unicodeVersion:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    const-string v0, "NormalizerDataReader"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/NormalizerDataReader;->debug:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_ID:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_VERSION:[B

    return-void

    :array_18
    .array-data 0x1
        0x4et
        0x6ft
        0x72t
        0x6dt
    .end array-data

    :array_1e
    .array-data 0x1
        0x2t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/ibm/icu/impl/NormalizerDataReader;->debug:Z

    if-eqz v0, :cond_23

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes in inputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23
    sget-object v0, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_ID:[B

    invoke-static {p1, v0, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->unicodeVersion:[B

    sget-boolean v0, Lcom/ibm/icu/impl/NormalizerDataReader;->debug:Z

    if-eqz v0, :cond_4b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes left in inputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4b
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    sget-boolean v0, Lcom/ibm/icu/impl/NormalizerDataReader;->debug:Z

    if-eqz v0, :cond_74

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes left in dataInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_74
    return-void
.end method


# virtual methods
.method public getDataFormatVersion()[B
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_VERSION:[B

    return-object v0
.end method

.method public getUnicodeVersion()[B
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->unicodeVersion:[B

    return-object v0
.end method

.method public isDataVersionAcceptable([B)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    sget-object v1, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1d

    aget-byte v0, p1, v3

    sget-object v1, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v1, v1, v3

    if-ne v0, v1, :cond_1d

    aget-byte v0, p1, v4

    sget-object v1, Lcom/ibm/icu/impl/NormalizerDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v2

    goto :goto_1c
.end method

.method protected read([B[B[B[C[C[Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5, p1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x0

    :goto_6
    array-length v5, p4

    if-ge v2, v5, :cond_14

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    :goto_15
    array-length v5, p5

    if-ge v2, v5, :cond_23

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5, p2}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5, p3}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v5, 0x20

    new-array v1, v5, [I

    const/4 v2, 0x0

    :goto_32
    array-length v5, v1

    if-ge v2, v5, :cond_40

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_40
    const/4 v5, 0x0

    aget v5, v1, v5

    const/16 v6, 0x20

    sub-int/2addr v5, v6

    new-array v3, v5, [C

    const/4 v2, 0x0

    :goto_49
    array-length v5, v3

    if-ge v2, v5, :cond_57

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_57
    const/4 v5, 0x1

    aget v5, v1, v5

    new-array v0, v5, [C

    const/4 v2, 0x0

    :goto_5d
    array-length v5, v0

    if-ge v2, v5, :cond_6b

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6b
    const/4 v5, 0x2

    aget v5, v1, v5

    new-array v4, v5, [C

    const/4 v2, 0x0

    :goto_71
    array-length v5, v4

    if-ge v2, v5, :cond_7f

    iget-object v5, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7f
    const/4 v5, 0x0

    aput-object v1, p6, v5

    const/4 v5, 0x1

    aput-object v3, p6, v5

    const/4 v5, 0x2

    aput-object v0, p6, v5

    const/4 v5, 0x3

    aput-object v4, p6, v5

    return-void
.end method

.method protected readIndexes(I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerDataReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    return-object v1
.end method
