.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"
.field private static final CHAR_MAP:[[I = null
.field static final LATCH_TABLE:[[I = null
.field static final MODE_DIGIT:I = 0x2
.field static final MODE_LOWER:I = 0x1
.field static final MODE_MIXED:I = 0x3
.field static final MODE_NAMES:[Ljava/lang/String; = null
.field static final MODE_PUNCT:I = 0x4
.field static final MODE_UPPER:I
.field static final SHIFT_TABLE:[[I
.field private final text:[B
.method static constructor <clinit>()V
.registers 16
const/4 v15, 0x4
const/4 v14, 0x5
const/4 v13, 0x2
const/4 v12, 0x1
const/4 v11, 0x0
new-array v8, v14, [Ljava/lang/String;
const-string/jumbo v9, "UPPER"
aput-object v9, v8, v11
const-string/jumbo v9, "LOWER"
aput-object v9, v8, v12
const-string/jumbo v9, "DIGIT"
aput-object v9, v8, v13
const/4 v9, 0x3
const-string/jumbo v10, "MIXED"
aput-object v10, v8, v9
const-string/jumbo v9, "PUNCT"
aput-object v9, v8, v15
sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;
new-array v8, v14, [[I
new-array v9, v14, [I
fill-array-data v9, :array_13a
aput-object v9, v8, v11
new-array v9, v14, [I
fill-array-data v9, :array_148
aput-object v9, v8, v12
new-array v9, v14, [I
fill-array-data v9, :array_156
aput-object v9, v8, v13
const/4 v9, 0x3
new-array v10, v14, [I
fill-array-data v10, :array_164
aput-object v10, v8, v9
new-array v9, v14, [I
fill-array-data v9, :array_172
aput-object v9, v8, v15
sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I
const/16 v8, 0x100
filled-new-array {v14, v8}, [I
move-result-object v8
sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v8
check-cast v8, [[I
sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v11
const/16 v9, 0x20
aput v12, v8, v9
const/16 v1, 0x41
:goto_65
const/16 v8, 0x5a
if-gt v1, v8, :cond_76
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v11
add-int/lit8 v9, v1, -0x41
add-int/lit8 v9, v9, 0x2
aput v9, v8, v1
add-int/lit8 v1, v1, 0x1
goto :goto_65
:cond_76
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v12
const/16 v9, 0x20
aput v12, v8, v9
const/16 v1, 0x61
:goto_80
const/16 v8, 0x7a
if-gt v1, v8, :cond_91
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v12
add-int/lit8 v9, v1, -0x61
add-int/lit8 v9, v9, 0x2
aput v9, v8, v1
add-int/lit8 v1, v1, 0x1
goto :goto_80
:cond_91
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v13
const/16 v9, 0x20
aput v12, v8, v9
const/16 v1, 0x30
:goto_9b
const/16 v8, 0x39
if-gt v1, v8, :cond_ac
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v13
add-int/lit8 v9, v1, -0x30
add-int/lit8 v9, v9, 0x2
aput v9, v8, v1
add-int/lit8 v1, v1, 0x1
goto :goto_9b
:cond_ac
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v13
const/16 v9, 0x2c
const/16 v10, 0xc
aput v10, v8, v9
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v13
const/16 v9, 0x2e
const/16 v10, 0xd
aput v10, v8, v9
const/16 v8, 0x1c
new-array v5, v8, [I
fill-array-data v5, :array_180
const/4 v2, 0x0
:goto_c8
array-length v8, v5
if-ge v2, v8, :cond_d7
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
const/4 v9, 0x3
aget-object v8, v8, v9
aget v9, v5, v2
aput v2, v8, v9
add-int/lit8 v2, v2, 0x1
goto :goto_c8
:cond_d7
const/16 v8, 0x1f
new-array v6, v8, [I
fill-array-data v6, :array_1bc
const/4 v2, 0x0
:goto_df
array-length v8, v6
if-ge v2, v8, :cond_f1
aget v8, v6, v2
if-lez v8, :cond_ee
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v15
aget v9, v6, v2
aput v2, v8, v9
:cond_ee
add-int/lit8 v2, v2, 0x1
goto :goto_df
:cond_f1
const/4 v8, 0x6
const/4 v9, 0x6
filled-new-array {v8, v9}, [I
move-result-object v8
sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v8
check-cast v8, [[I
sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
array-length v4, v0
const/4 v3, 0x0
:goto_105
if-ge v3, v4, :cond_110
aget-object v7, v0, v3
const/4 v8, -0x1
invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V
add-int/lit8 v3, v3, 0x1
goto :goto_105
:cond_110
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
aget-object v8, v8, v11
aput v11, v8, v15
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
aget-object v8, v8, v12
aput v11, v8, v15
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
aget-object v8, v8, v12
const/16 v9, 0x1c
aput v9, v8, v11
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
const/4 v9, 0x3
aget-object v8, v8, v9
aput v11, v8, v15
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
aget-object v8, v8, v13
aput v11, v8, v15
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
aget-object v8, v8, v13
const/16 v9, 0xf
aput v9, v8, v11
return-void
:array_164
.array-data 0x4
0x1dt 0x0t 0x5t 0x0t
0x1ct 0x0t 0x5t 0x0t
0xbet 0x3t 0xat 0x0t
0x0t 0x0t 0x0t 0x0t
0x1et 0x0t 0x5t 0x0t
.end array-data
:array_172
.array-data 0x4
0x1ft 0x0t 0x5t 0x0t
0xfct 0x3t 0xat 0x0t
0xfet 0x3t 0xat 0x0t
0xfdt 0x3t 0xat 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_180
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x20t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0x1bt 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x40t 0x0t 0x0t 0x0t
0x5ct 0x0t 0x0t 0x0t
0x5et 0x0t 0x0t 0x0t
0x5ft 0x0t 0x0t 0x0t
0x60t 0x0t 0x0t 0x0t
0x7ct 0x0t 0x0t 0x0t
0x7et 0x0t 0x0t 0x0t
0x7ft 0x0t 0x0t 0x0t
.end array-data
:array_156
.array-data 0x4
0xet 0x0t 0x4t 0x0t
0xdct 0x1t 0x9t 0x0t
0x0t 0x0t 0x0t 0x0t
0xddt 0x1t 0x9t 0x0t
0xbet 0x3bt 0xet 0x0t
.end array-data
:array_148
.array-data 0x4
0xeet 0x1t 0x9t 0x0t
0x0t 0x0t 0x0t 0x0t
0x1et 0x0t 0x5t 0x0t
0x1dt 0x0t 0x5t 0x0t
0xbet 0x3t 0xat 0x0t
.end array-data
:array_13a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x1ct 0x0t 0x5t 0x0t
0x1et 0x0t 0x5t 0x0t
0x1dt 0x0t 0x5t 0x0t
0xbet 0x3t 0xat 0x0t
.end array-data
:array_1bc
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x21t 0x0t 0x0t 0x0t
0x27t 0x0t 0x0t 0x0t
0x23t 0x0t 0x0t 0x0t
0x24t 0x0t 0x0t 0x0t
0x25t 0x0t 0x0t 0x0t
0x26t 0x0t 0x0t 0x0t
0x27t 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
0x29t 0x0t 0x0t 0x0t
0x2at 0x0t 0x0t 0x0t
0x2bt 0x0t 0x0t 0x0t
0x2ct 0x0t 0x0t 0x0t
0x2dt 0x0t 0x0t 0x0t
0x2et 0x0t 0x0t 0x0t
0x2ft 0x0t 0x0t 0x0t
0x3at 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
0x3dt 0x0t 0x0t 0x0t
0x3et 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
0x5bt 0x0t 0x0t 0x0t
0x5dt 0x0t 0x0t 0x0t
0x7bt 0x0t 0x0t 0x0t
0x7dt 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
return-void
.end method
.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
.registers 8
new-instance v5, Ljava/util/LinkedList;
invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
:cond_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/zxing/aztec/encoder/State;
const/4 v0, 0x1
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1a
:cond_1a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/zxing/aztec/encoder/State;
invoke-virtual {v4, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
move-result v6
if-eqz v6, :cond_33
const/4 v0, 0x0
:cond_2d
if-eqz v0, :cond_9
invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_33
invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
move-result v6
if-eqz v6, :cond_1a
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_1a
:cond_3d
return-object v5
.end method
.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
.registers 14
iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
aget-byte v8, v8, p2
and-int/lit16 v8, v8, 0xff
int-to-char v1, v8
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I
move-result v9
aget-object v8, v8, v9
aget v8, v8, v1
if-lez v8, :cond_51
const/4 v2, 0x1
:goto_14
const/4 v7, 0x0
const/4 v5, 0x0
:goto_16
const/4 v8, 0x4
if-gt v5, v8, :cond_53
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
aget-object v8, v8, v5
aget v3, v8, v1
if-lez v3, :cond_4e
if-nez v7, :cond_27
invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
move-result-object v7
:cond_27
if-eqz v2, :cond_32
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I
move-result v8
if-eq v5, v8, :cond_32
const/4 v8, 0x2
if-ne v5, v8, :cond_39
:cond_32
invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v4
invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_39
if-nez v2, :cond_4e
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I
move-result v9
aget-object v8, v8, v9
aget v8, v8, v5
if-ltz v8, :cond_4e
invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v6
invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_4e
add-int/lit8 v5, v5, 0x1
goto :goto_16
:cond_51
const/4 v2, 0x0
goto :goto_14
:cond_53
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I
move-result v8
if-gtz v8, :cond_65
sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I
move-result v9
aget-object v8, v8, v9
aget v8, v8, v1
if-nez v8, :cond_6c
:cond_65
invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
move-result-object v0
invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_6c
return-void
.end method
.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
.registers 10
const/4 v5, 0x2
const/4 v4, 0x4
invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
move-result-object v2
invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v3
invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I
move-result v3
if-eq v3, v4, :cond_1a
invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v3
invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_1a
const/4 v3, 0x3
if-eq p2, v3, :cond_1f
if-ne p2, v4, :cond_2d
:cond_1f
rsub-int/lit8 v3, p2, 0x10
invoke-virtual {v2, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
move-result-object v1
invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_2d
invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I
move-result v3
if-lez v3, :cond_40
invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
move-result-object v3
add-int/lit8 v4, p1, 0x1
invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
move-result-object v0
invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_40
return-void
.end method
.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
.registers 7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/zxing/aztec/encoder/State;
invoke-direct {p0, v2, p2, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
goto :goto_9
:cond_19
invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
move-result-object v3
return-object v3
.end method
.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
.registers 7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/zxing/aztec/encoder/State;
invoke-static {v2, p1, p2, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
goto :goto_9
:cond_19
invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
move-result-object v3
return-object v3
.end method
.method public encode()Lcom/google/zxing/common/BitArray;
.registers 10
const/16 v8, 0x20
const/4 v5, 0x0
sget-object v6, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;
invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
const/4 v0, 0x0
:goto_a
iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
array-length v6, v6
if-ge v0, v6, :cond_50
add-int/lit8 v6, v0, 0x1
iget-object v7, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
array-length v7, v7
if-ge v6, v7, :cond_2f
iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
add-int/lit8 v7, v0, 0x1
aget-byte v2, v6, v7
:goto_1c
iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
aget-byte v6, v6, v0
sparse-switch v6, :sswitch_data_62
const/4 v3, 0x0
:goto_24
if-lez v3, :cond_4b
invoke-static {v4, v0, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
move-result-object v4
add-int/lit8 v0, v0, 0x1
:goto_2c
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_2f
move v2, v5
goto :goto_1c
:sswitch_31
const/16 v6, 0xa
if-ne v2, v6, :cond_37
const/4 v3, 0x2
:goto_36
goto :goto_24
:cond_37
move v3, v5
goto :goto_36
:sswitch_39
if-ne v2, v8, :cond_3d
const/4 v3, 0x3
:goto_3c
goto :goto_24
:cond_3d
move v3, v5
goto :goto_3c
:sswitch_3f
if-ne v2, v8, :cond_43
const/4 v3, 0x4
:goto_42
goto :goto_24
:cond_43
move v3, v5
goto :goto_42
:sswitch_45
if-ne v2, v8, :cond_49
const/4 v3, 0x5
:goto_48
goto :goto_24
:cond_49
move v3, v5
goto :goto_48
:cond_4b
invoke-direct {p0, v4, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
move-result-object v4
goto :goto_2c
:cond_50
new-instance v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
invoke-direct {v5, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
invoke-static {v4, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/aztec/encoder/State;
iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B
invoke-virtual {v1, v5}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;
move-result-object v5
return-object v5
:sswitch_data_62
.sparse-switch
0xd -> :sswitch_31
0x2c -> :sswitch_3f
0x2e -> :sswitch_39
0x3a -> :sswitch_45
.end sparse-switch
.end method