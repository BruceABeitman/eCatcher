.class public Lcom/coremedia/iso/boxes/SchemeTypeBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SchemeTypeBox.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "schm"


# instance fields
.field schemeType:Ljava/lang/String;

.field schemeUri:Ljava/lang/String;

.field schemeVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/boxes/SchemeTypeBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "schm"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_23
    return-void
.end method

.method protected getContentSize()J
    .registers 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_11
    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    return-wide v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSchemeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeVersion()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    return-wide v0
.end method

.method public setSchemeType(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SchemeType may not be null or not 4 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-void
.end method

.method public setSchemeVersion(I)V
    .registers 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schema Type Box["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
