.class public final Lcom/ibm/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:[B = null

.field private static final DEBUG:Z = false

.field private static final ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final URES_ATT_NO_FALLBACK:I = 0x1

.field private static final URES_INDEX_ATTRIBUTES:I = 0x5

.field private static final URES_INDEX_BUNDLE_TOP:I = 0x3

.field private static final URES_INDEX_LENGTH:I


# instance fields
.field private data:[B

.field private dataVersion:[B

.field private indexes:[I

.field private noFallback:Z

.field private rootRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->DATA_FORMAT_ID:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x52t
        0x65t
        0x73t
        0x42t
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_8
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundleReader;->DATA_FORMAT_ID:[B

    invoke-static {v0, v2, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:[B

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->readData(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x2f

    const/16 v2, 0x2e

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_42

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_42
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_8b
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d
.end method

.method public static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;
    .registers 7

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v3, 0x0

    :goto_b
    return-object v3

    :cond_c
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_b
.end method

.method private readData(Ljava/io/InputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sub-int v4, v2, v7

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->mark(I)V

    new-array v4, v2, [I

    iput-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->indexes:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->indexes:[I

    aput v2, v4, v6

    const/4 v1, 0x1

    :goto_24
    if-ge v1, v2, :cond_31

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->indexes:[I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_31
    if-le v2, v8, :cond_61

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->indexes:[I

    aget v4, v4, v8

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_61

    move v4, v7

    :goto_3c
    iput-boolean v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->indexes:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-int/lit8 v3, v4, 0x4

    new-array v4, v3, [B

    iput-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->data:[B

    iget v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->data:[B

    invoke-static {v4, v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->writeInt(I[BI)V

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->data:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->writeInt(I[BI)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->data:[B

    sub-int v5, v3, v9

    invoke-virtual {v0, v4, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void

    :cond_61
    move v4, v6

    goto :goto_3c
.end method

.method private static writeInt(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->data:[B

    return-object v0
.end method

.method public getNoFallback()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return v0
.end method

.method public getRootResource()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    return v0
.end method

.method public getVersion()Lcom/ibm/icu/util/VersionInfo;
    .registers 6

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public isDataVersionAcceptable([B)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_c

    aget-byte v0, p1, v1

    if-lt v0, v1, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    move v0, v2

    goto :goto_b
.end method
