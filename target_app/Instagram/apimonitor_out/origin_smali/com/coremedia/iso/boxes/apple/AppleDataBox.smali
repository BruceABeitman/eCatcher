.class public final Lcom/coremedia/iso/boxes/apple/AppleDataBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleDataBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "data"


# instance fields
.field private data:[B

.field private fourBytes:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    return-void
.end method

.method private static getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .registers 2

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    return-object v0
.end method

.method public static getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0
.end method

.method public static getUint16AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .registers 2

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0

    :array_14
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint32AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .registers 2

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0

    :array_14
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0
.end method


# virtual methods
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final getContent(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getData()[B
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    return-object v0
.end method

.method public final getFourBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    return-object v0
.end method

.method public final setData([B)V
    .registers 5

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final setFourBytes([B)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x4

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
