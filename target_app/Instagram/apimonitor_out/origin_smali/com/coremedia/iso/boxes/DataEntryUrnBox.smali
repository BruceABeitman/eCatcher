.class public Lcom/coremedia/iso/boxes/DataEntryUrnBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "DataEntryUrnBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "urn "


# instance fields
.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "urn "

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->location:Ljava/lang/String;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->location:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->location:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataEntryUrlBox[name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/DataEntryUrnBox;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
