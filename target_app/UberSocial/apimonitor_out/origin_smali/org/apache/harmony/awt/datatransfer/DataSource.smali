.class public Lorg/apache/harmony/awt/datatransfer/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/harmony/awt/datatransfer/DataProvider;


# instance fields
.field protected final contents:Ljava/awt/datatransfer/Transferable;

.field private flavors:[Ljava/awt/datatransfer/DataFlavor;

.field private nativeFormats:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/awt/datatransfer/Transferable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    return-void
.end method

.method private getImageBitmap(Ljava/awt/Image;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    instance-of v0, p1, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    if-ne v2, v5, :cond_15

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    if-lez v0, :cond_21

    if-gtz v2, :cond_23

    :cond_21
    move-object v0, v1

    goto :goto_14

    :cond_23
    new-instance v3, Ljava/awt/image/BufferedImage;

    invoke-direct {v3, v0, v2, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4, v1}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v0}, Ljava/awt/Graphics;->dispose()V

    invoke-direct {p0, v3}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v0

    goto :goto_14
.end method

.method private getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v8, v0, [I

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v0}, Ljava/awt/image/DataBufferInt;->getNumBanks()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/DataBufferInt;->getOffsets()[I

    move-result-object v4

    move v2, v1

    :goto_1f
    if-lt v1, v3, :cond_3c

    new-instance v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    const/16 v4, 0x20

    const/high16 v5, 0xff

    const v6, 0xff00

    const/16 v7, 0xff

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/awt/datatransfer/RawBitmap;-><init>(IIIIIIILjava/lang/Object;)V

    return-object v0

    :cond_3c
    invoke-virtual {v0, v1}, Ljava/awt/image/DataBufferInt;->getData(I)[I

    move-result-object v5

    aget v6, v4, v1

    array-length v7, v5

    aget v9, v4, v1

    sub-int/2addr v7, v9

    invoke-static {v5, v6, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    aget v6, v4, v1

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method private static getNativesForFlavors([Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;
    .registers 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/SystemFlavorMap;

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    array-length v1, p0

    if-lt v2, v1, :cond_11

    return-object v3

    :cond_11
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/awt/datatransfer/SystemFlavorMap;->getNativesForFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private getText(Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-lt v1, v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    if-eqz p1, :cond_21

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->isHtmlFlavor(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_21
    :try_start_21
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v3, v0}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_36
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-virtual {v0, v3}, Ljava/awt/datatransfer/DataFlavor;->getReaderForText(Ljava/awt/datatransfer/Transferable;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getTextFromReader(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_41

    move-result-object v0

    goto :goto_c

    :catch_41
    move-exception v0

    goto :goto_15
.end method

.method private getTextFromReader(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [C

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-gtz v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method private isHtmlFlavor(Ljava/awt/datatransfer/DataFlavor;)Z
    .registers 4

    const-string v0, "html"

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .registers 2

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method public getFileList()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getHTML()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFormats()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativeFormatsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNativeFormatsList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativesForFlavors([Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    return-object v0
.end method

.method public getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .registers 6

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-lt v1, v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_39

    const-class v4, Ljava/awt/Image;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_39

    sget-object v3, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0, v3}, Ljava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v3, v0}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Image;

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap(Ljava/awt/Image;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_c

    :catch_38
    move-exception v0

    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public getSerializedObject(Ljava/lang/Class;)[B
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/awt/datatransfer/DataFlavor;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Ljava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v2, v0}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_21

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_20
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataSource;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    :try_start_10
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataSource;->uriFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_e

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2e

    move-result-object v0

    goto :goto_e

    :catch_2e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isNativeFormatAvailable(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativeFormatsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
