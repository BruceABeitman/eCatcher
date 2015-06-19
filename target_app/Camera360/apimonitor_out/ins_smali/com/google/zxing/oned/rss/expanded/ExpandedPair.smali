.class final Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
.super Ljava/lang/Object;
.source "ExpandedPair.java"
.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
.field private final leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
.field private final mayBeLast:Z
.field private final rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
.method constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
iput-boolean p4, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z
return-void
.end method
.method private static equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method private static hashNotNull(Ljava/lang/Object;)I
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_3
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
iget-object v3, v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
iget-object v3, v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
iget-object v3, v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method  getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
return-object v0
.end method
.method  getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
return-object v0
.end method
.method  getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
return-object v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I
move-result v0
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I
move-result v1
xor-int/2addr v0, v1
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method  mayBeLast()Z
.registers 2
iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z
return v0
.end method
.method public mustBeLast()Z
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "[ "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " , "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " : "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
if-nez v0, :cond_3d
const-string/jumbo v0, "null"
:goto_2d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " ]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_3d
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_2d
.end method