.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractTrackEncryptionBox.java"
.field  defaultAlgorithmId:I
.field  defaultIvSize:I
.field  default_KID:[B
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
const/16 v0, 0x10
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x18
return-wide v0
.end method
.method public getDefaultAlgorithmId()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
return v0
.end method
.method public getDefaultIvSize()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
return v0
.end method
.method public getDefault_KID()Ljava/lang/String;
.registers 7
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v0
sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
new-instance v1, Ljava/util/UUID;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
move-result-wide v2
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
move-result-wide v4
invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
move-result v0
:goto_13
add-int/2addr v0, v1
return v0
:cond_15
const/4 v0, 0x0
goto :goto_13
.end method
.method public setDefaultAlgorithmId(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I
return-void
.end method
.method public setDefaultIvSize(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I
return-void
.end method
.method public setDefault_KID([B)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B
return-void
.end method