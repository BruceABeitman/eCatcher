.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
.registers 14
const/4 v12, 0x1
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v11
shl-int/lit8 v11, v11, 0x1
add-int/lit8 v2, v11, -0x1
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v11
add-int/lit8 v11, v11, -0x1
invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
move-result-object v11
if-nez v11, :cond_1d
add-int/lit8 v2, v2, -0x1
:cond_1d
mul-int/lit8 v10, v2, 0xc
new-instance v1, Lcom/google/zxing/common/BitArray;
invoke-direct {v1, v10}, Lcom/google/zxing/common/BitArray;-><init>(I)V
const/4 v0, 0x0
const/4 v11, 0x0
invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
move-result-object v11
invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I
move-result v5
const/16 v6, 0xb
:goto_36
if-ltz v6, :cond_45
shl-int v11, v12, v6
and-int/2addr v11, v5
if-eqz v11, :cond_40
invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V
:cond_40
add-int/lit8 v0, v0, 0x1
add-int/lit8 v6, v6, -0x1
goto :goto_36
:cond_45
const/4 v6, 0x1
:goto_46
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v11
if-ge v6, v11, :cond_8d
invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
move-result-object v11
invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I
move-result v8
const/16 v7, 0xb
:goto_5c
if-ltz v7, :cond_6b
shl-int v11, v12, v7
and-int/2addr v11, v8
if-eqz v11, :cond_66
invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V
:cond_66
add-int/lit8 v0, v0, 0x1
add-int/lit8 v7, v7, -0x1
goto :goto_5c
:cond_6b
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
move-result-object v11
if-eqz v11, :cond_8a
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
move-result-object v11
invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I
move-result v9
const/16 v7, 0xb
:goto_7b
if-ltz v7, :cond_8a
shl-int v11, v12, v7
and-int/2addr v11, v9
if-eqz v11, :cond_85
invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V
:cond_85
add-int/lit8 v0, v0, 0x1
add-int/lit8 v7, v7, -0x1
goto :goto_7b
:cond_8a
add-int/lit8 v6, v6, 0x1
goto :goto_46
:cond_8d
return-object v1
.end method