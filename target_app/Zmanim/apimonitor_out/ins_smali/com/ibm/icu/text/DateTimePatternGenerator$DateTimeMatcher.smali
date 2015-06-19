.class  Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"
.implements Ljava/lang/Comparable;
.field private baseOriginal:[Ljava/lang/String;
.field private original:[Ljava/lang/String;
.field private type:[I
.method private constructor <init>()V
.registers 3
const/16 v1, 0x10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [I
iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>()V
return-void
.end method
.method static synthetic access$500(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$600(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
return-object v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 8
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
move-object v3, v0
const/4 v2, 0x0
:goto_5
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
array-length v4, v4
if-ge v2, v4, :cond_1d
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v4, v4, v2
iget-object v5, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v5, v5, v2
invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_1a
neg-int v4, v1
:goto_19
return v4
:cond_1a
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_1d
const/4 v4, 0x0
goto :goto_19
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x0
if-nez p1, :cond_5
move v3, v5
:goto_4
return v3
:cond_5
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
move-object v2, v0
const/4 v1, 0x0
:goto_a
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
array-length v3, v3
if-ge v1, v3, :cond_22
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v3, v3, v1
iget-object v4, v2, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v4, v4, v1
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1f
move v3, v5
goto :goto_4
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_22
const/4 v3, 0x1
goto :goto_4
.end method
.method  extractFrom(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)V
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
array-length v1, v1
if-ge v0, v1, :cond_2a
const/4 v1, 0x1
shl-int/2addr v1, v0
and-int/2addr v1, p2
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
iget-object v2, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
aget v2, v2, v0
aput v2, v1, v0
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
iget-object v2, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v2, v2, v0
aput-object v2, v1, v0
:goto_1b
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1e
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
const/4 v2, 0x0
aput v2, v1, v0
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
const-string v2, ""
aput-object v2, v1, v0
goto :goto_1b
:cond_2a
return-void
.end method
.method  getBasePattern()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
const/16 v2, 0x10
if-ge v0, v2, :cond_1e
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1e
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method  getDistance(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)I
.registers 9
const/4 v3, 0x0
invoke-virtual {p3}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->clear()V
const/4 v0, 0x0
:goto_5
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
array-length v4, v4
if-ge v0, v4, :cond_39
const/4 v4, 0x1
shl-int/2addr v4, v0
and-int/2addr v4, p2
if-nez v4, :cond_1a
const/4 v4, 0x0
move v1, v4
:goto_11
iget-object v4, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
aget v2, v4, v0
if-ne v1, v2, :cond_20
:goto_17
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1a
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
aget v4, v4, v0
move v1, v4
goto :goto_11
:cond_20
if-nez v1, :cond_29
const/high16 v4, 0x1
add-int/2addr v3, v4
invoke-virtual {p3, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->addExtra(I)V
goto :goto_17
:cond_29
if-nez v2, :cond_31
add-int/lit16 v3, v3, 0x1000
invoke-virtual {p3, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->addMissing(I)V
goto :goto_17
:cond_31
sub-int v4, v1, v2
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v4
add-int/2addr v3, v4
goto :goto_17
:cond_39
return v3
.end method
.method  getFieldMask()I
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
:goto_2
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
array-length v2, v2
if-ge v0, v2, :cond_13
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
aget v2, v2, v0
if-eqz v2, :cond_10
const/4 v2, 0x1
shl-int/2addr v2, v0
or-int/2addr v1, v2
:cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_13
return v1
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
:goto_2
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_13
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
xor-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_13
return v1
.end method
.method  set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.registers 19
const/4 v4, 0x0
:goto_1
const/16 v13, 0x10
if-ge v4, v13, :cond_22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
move-object v13, v0
const/4 v14, 0x0
aput v14, v13, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
move-object v13, v0
const-string v14, ""
aput-object v14, v13, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;
move-object v13, v0
const-string v14, ""
aput-object v14, v13, v4
add-int/lit8 v4, v4, 0x1
goto :goto_1
:cond_22
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;
move-result-object v13
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_31
:goto_31
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_de
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
instance-of v13, v7, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
if-eqz v13, :cond_31
move-object v0, v7
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
move-object v6, v0
invoke-virtual {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;
move-result-object v3
const/4 v13, 0x0
invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C
move-result v13
const/16 v14, 0x61
if-eq v13, v14, :cond_31
#calls: Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I
invoke-static {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->access$700(Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;)I
move-result v2
invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$400()[[I
move-result-object v13
aget-object v10, v13, v2
const/4 v13, 0x1
aget v12, v10, v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
move-object v13, v0
aget-object v13, v13, v12
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v13
if-eqz v13, :cond_a1
new-instance v13, Ljava/lang/IllegalArgumentException;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Conflicting fields:\t"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
move-object v15, v0
aget-object v15, v15, v12
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, ", "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "\t in "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object v0, v14
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v13
:cond_a1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
move-object v13, v0
aput-object v3, v13, v12
const/4 v13, 0x0
aget v13, v10, v13
int-to-char v8, v13
const/4 v13, 0x3
aget v9, v10, v13
const/4 v13, 0x3
if-le v9, v13, :cond_b3
const/4 v9, 0x3
:cond_b3
const-string v13, "GEzvQ"
invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I
move-result v13
if-ltz v13, :cond_bc
const/4 v9, 0x1
:cond_bc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;
move-object v13, v0
invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v14
invoke-static {v14, v9}, Lcom/ibm/icu/impl/Utility;->repeat(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v14
aput-object v14, v13, v12
const/4 v13, 0x2
aget v11, v10, v13
if-lez v11, :cond_d5
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v13
add-int/2addr v11, v13
:cond_d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
move-object v13, v0
aput v11, v13, v12
goto/16 :goto_31
:cond_de
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
const/16 v2, 0x10
if-ge v0, v2, :cond_1e
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1e
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method