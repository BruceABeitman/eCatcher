.class public Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AC3SpecificBox.java"
.field  acmod:I
.field  bitRateCode:I
.field  bsid:I
.field  bsmod:I
.field  fscod:I
.field  lfeon:I
.field  reserved:I
.method public constructor <init>()V
.registers 2
const-string v0, "dac3"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
const/4 v3, 0x3
const/4 v2, 0x5
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/c;
invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->fscod:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsid:I
invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsmod:I
invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->acmod:I
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->lfeon:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bitRateCode:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->reserved:I
return-void
.end method
.method public getAcmod()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->acmod:I
return v0
.end method
.method public getBitRateCode()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bitRateCode:I
return v0
.end method
.method public getBsid()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsid:I
return v0
.end method
.method public getBsmod()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsmod:I
return v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
const/4 v4, 0x3
const/4 v3, 0x5
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;
invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->fscod:I
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsid:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsmod:I
invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->acmod:I
invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->lfeon:I
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bitRateCode:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->reserved:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x3
return-wide v0
.end method
.method public getFscod()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->fscod:I
return v0
.end method
.method public getLfeon()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->lfeon:I
return v0
.end method
.method public getReserved()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->reserved:I
return v0
.end method
.method public setAcmod(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->acmod:I
return-void
.end method
.method public setBitRateCode(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bitRateCode:I
return-void
.end method
.method public setBsid(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsid:I
return-void
.end method
.method public setBsmod(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsmod:I
return-void
.end method
.method public setFscod(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->fscod:I
return-void
.end method
.method public setLfeon(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->lfeon:I
return-void
.end method
.method public setReserved(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->reserved:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AC3SpecificBox{fscod="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->fscod:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", bsid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsid:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", bsmod="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bsmod:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", acmod="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->acmod:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", lfeon="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->lfeon:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", bitRateCode="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->bitRateCode:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", reserved="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->reserved:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method