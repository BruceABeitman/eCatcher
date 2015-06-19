.class public Lcom/coremedia/iso/boxes/ClassificationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ClassificationBox.java"
.field public static final TYPE:Ljava/lang/String; = "clsf"
.field private classificationEntity:Ljava/lang/String;
.field private classificationInfo:Ljava/lang/String;
.field private classificationTableIndex:I
.field private language:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "clsf"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ClassificationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
const/4 v0, 0x4
new-array v0, v0, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->bytesToFourCC([B)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I
invoke-static {p1}, Lcom/coremedia/iso/e;->k(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;
return-void
.end method
.method public getClassificationEntity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;
return-object v0
.end method
.method public getClassificationInfo()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;
return-object v0
.end method
.method public getClassificationTableIndex()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I
return v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, 0x1
int-to-long v0, v0
return-wide v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;
return-object v0
.end method
.method public setClassificationEntity(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;
return-void
.end method
.method public setClassificationInfo(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;
return-void
.end method
.method public setClassificationTableIndex(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I
return-void
.end method
.method public setLanguage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ClassificationBox[language="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "classificationEntity="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationEntity()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ";classificationTableIndex="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationTableIndex()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ";language="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ";classificationInfo="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method