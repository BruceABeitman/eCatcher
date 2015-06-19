.class public Lcom/google/zxing/oned/rss/DataCharacter;
.super Ljava/lang/Object;
.source "DataCharacter.java"
.field private final checksumPortion:I
.field private final value:I
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
iput p2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/oned/rss/DataCharacter;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/google/zxing/oned/rss/DataCharacter;
iget v2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
iget v3, v0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
iget v3, v0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
if-ne v2, v3, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public final getChecksumPortion()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
return v0
.end method
.method public final getValue()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
return v0
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
xor-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method