.class public Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleDataReferenceBox.java"
.field public static final TYPE:Ljava/lang/String; = "rdrf"
.field private dataReference:Ljava/lang/String;
.field private dataReferenceSize:I
.field private dataReferenceType:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "rdrf"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I
iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I
invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I
add-int/lit8 v0, v0, 0xc
int-to-long v0, v0
return-wide v0
.end method
.method public getDataReference()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;
return-object v0
.end method
.method public getDataReferenceSize()J
.registers 3
iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I
int-to-long v0, v0
return-wide v0
.end method
.method public getDataReferenceType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;
return-object v0
.end method