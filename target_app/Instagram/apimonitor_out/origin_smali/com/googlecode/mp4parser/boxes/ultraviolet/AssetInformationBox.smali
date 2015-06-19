.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AssetInformationBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field apid:Ljava/lang/String;

.field profileVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "ainf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    const-string v0, "0000"

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-void
.end method

.method public getApid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProfileVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setApid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-void
.end method

.method public setProfileVersion(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-void
.end method
