.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  cPoints:[C
.field  curClass:I
.field  index:[I
.field  pos:I
.field  size:I
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x100
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->size:I
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->pos:I
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->curClass:I
return-void
.end method
.method  GetFirstCM(I)C
.registers 6
const/4 v3, 0x1
iput p1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->curClass:I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
if-eqz v0, :cond_15
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
aget v0, v0, p1
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
sub-int v2, p1, v3
aget v1, v1, v2
if-ne v0, v1, :cond_17
:cond_15
const/4 v0, 0x0
:goto_16
return v0
:cond_17
iput v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->pos:I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
sub-int v2, p1, v3
aget v1, v1, v2
aget-char v0, v0, v1
goto :goto_16
.end method
.method  GetNextCM()C
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->curClass:I
aget v0, v0, v1
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->curClass:I
sub-int/2addr v2, v3
aget v1, v1, v2
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->pos:I
add-int/2addr v1, v2
if-ne v0, v1, :cond_19
:cond_17
const/4 v0, 0x0
:goto_18
return v0
:cond_19
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->curClass:I
sub-int/2addr v2, v3
aget v1, v1, v2
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->pos:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->pos:I
add-int/2addr v1, v2
aget-char v0, v0, v1
goto :goto_18
.end method
.method  generate([CI[I)V
.registers 10
const/4 v0, 0x0
new-array v4, p2, [C
iput-object v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
const/4 v2, 0x0
:goto_6
const/16 v4, 0x100
if-ge v2, v4, :cond_25
const/4 v3, 0x0
:goto_b
aget v4, p3, v2
if-ge v3, v4, :cond_1e
iget-object v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
add-int/lit8 v1, v0, 0x1
shl-int/lit8 v5, v2, 0x8
add-int/2addr v5, v3
aget-char v5, p1, v5
aput-char v5, v4, v0
add-int/lit8 v3, v3, 0x1
move v0, v1
goto :goto_b
:cond_1e
iget-object v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
aput v0, v4, v2
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_25
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->size:I
return-void
.end method