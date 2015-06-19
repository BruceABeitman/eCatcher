.class public final Lcom/ibm/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"
.field private static final ABOVE:I = 0x20
.field private static final CASE_IGNORABLE:I = 0x40
.field private static final CLOSURE_MAX_LENGTH:I = 0xf
.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"
.field private static final DATA_NAME:Ljava/lang/String; = "ucase"
.field private static final DATA_TYPE:Ljava/lang/String; = "icu"
.field private static final DELTA_SHIFT:I = 0x6
.field private static final DOT_MASK:I = 0x30
.field private static final EXCEPTION:I = 0x8
.field private static final EXC_CLOSURE:I = 0x6
.field private static final EXC_CONDITIONAL_FOLD:I = 0x8000
.field private static final EXC_CONDITIONAL_SPECIAL:I = 0x4000
.field private static final EXC_DOT_SHIFT:I = 0x8
.field private static final EXC_DOUBLE_SLOTS:I = 0x100
.field private static final EXC_FOLD:I = 0x1
.field private static final EXC_FULL_MAPPINGS:I = 0x7
.field private static final EXC_LOWER:I = 0x0
.field private static final EXC_SHIFT:I = 0x4
.field private static final EXC_TITLE:I = 0x3
.field private static final EXC_UPPER:I = 0x2
.field private static final FMT:[B = null
.field private static final FOLD_CASE_OPTIONS_MASK:I = 0xff
.field private static final FULL_LOWER:I = 0xf
.field private static final IX_EXC_LENGTH:I = 0x3
.field private static final IX_INDEX_TOP:I = 0x0
.field private static final IX_TOP:I = 0x10
.field private static final IX_UNFOLD_LENGTH:I = 0x4
.field private static final LOC_LITHUANIAN:I = 0x3
.field private static final LOC_ROOT:I = 0x1
.field private static final LOC_TURKISH:I = 0x2
.field private static final LOC_UNKNOWN:I = 0x0
.field public static final LOWER:I = 0x1
.field public static final MAX_STRING_LENGTH:I = 0x1f
.field public static final NONE:I = 0x0
.field private static final OTHER_ACCENT:I = 0x30
.field private static final SENSITIVE:I = 0x4
.field private static final SOFT_DOTTED:I = 0x10
.field public static final TITLE:I = 0x3
.field public static final TYPE_MASK:I = 0x3
.field private static final UNFOLD_ROWS:I = 0x0
.field private static final UNFOLD_ROW_WIDTH:I = 0x1
.field private static final UNFOLD_STRING_WIDTH:I = 0x2
.field public static final UPPER:I = 0x2
.field private static final flagsOffset:[B = null
.field private static gCsp:Lcom/ibm/icu/impl/UCaseProps; = null
.field private static gCspDummy:Lcom/ibm/icu/impl/UCaseProps; = null
.field private static final iDot:Ljava/lang/String; = "i\u0307"
.field private static final iDotAcute:Ljava/lang/String; = "i\u0307\u0301"
.field private static final iDotGrave:Ljava/lang/String; = "i\u0307\u0300"
.field private static final iDotTilde:Ljava/lang/String; = "i\u0307\u0303"
.field private static final iOgonekDot:Ljava/lang/String; = "\u012f\u0307"
.field private static final jDot:Ljava/lang/String; = "j\u0307"
.field private exceptions:[C
.field private indexes:[I
.field private trie:Lcom/ibm/icu/impl/CharTrie;
.field private unfold:[C
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->gCsp:Lcom/ibm/icu/impl/UCaseProps;
sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->gCspDummy:Lcom/ibm/icu/impl/UCaseProps;
const/16 v0, 0x100
new-array v0, v0, [B
fill-array-data v0, :array_18
sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B
const/4 v0, 0x4
new-array v0, v0, [B
fill-array-data v0, :array_9c
sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->FMT:[B
return-void
nop
:array_18
.array-data 0x1
0x0t
0x1t
0x1t
0x2t
0x1t
0x2t
0x2t
0x3t
0x1t
0x2t
0x2t
0x3t
0x2t
0x3t
0x3t
0x4t
0x1t
0x2t
0x2t
0x3t
0x2t
0x3t
0x3t
0x4t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x1t
0x2t
0x2t
0x3t
0x2t
0x3t
0x3t
0x4t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x1t
0x2t
0x2t
0x3t
0x2t
0x3t
0x3t
0x4t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x4t
0x5t
0x5t
0x6t
0x5t
0x6t
0x6t
0x7t
0x1t
0x2t
0x2t
0x3t
0x2t
0x3t
0x3t
0x4t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x4t
0x5t
0x5t
0x6t
0x5t
0x6t
0x6t
0x7t
0x2t
0x3t
0x3t
0x4t
0x3t
0x4t
0x4t
0x5t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x4t
0x5t
0x5t
0x6t
0x5t
0x6t
0x6t
0x7t
0x3t
0x4t
0x4t
0x5t
0x4t
0x5t
0x5t
0x6t
0x4t
0x5t
0x5t
0x6t
0x5t
0x6t
0x6t
0x7t
0x4t
0x5t
0x5t
0x6t
0x5t
0x6t
0x6t
0x7t
0x5t
0x6t
0x6t
0x7t
0x6t
0x7t
0x7t
0x8t
.end array-data
:array_9c
.array-data 0x1
0x63t
0x41t
0x53t
0x45t
.end array-data
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v2, "data/icudt42b/ucase.icu"
invoke-static {v2}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
new-instance v0, Ljava/io/BufferedInputStream;
const/16 v2, 0x1000
invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->readData(Ljava/io/InputStream;)V
invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
return-void
.end method
.method private constructor <init>(Z)V
.registers 5
const/16 v1, 0x10
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [I
iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
aput v1, v0, v2
new-instance v0, Lcom/ibm/icu/impl/CharTrie;
const/4 v1, 0x0
invoke-direct {v0, v2, v2, v1}, Lcom/ibm/icu/impl/CharTrie;-><init>(IILcom/ibm/icu/impl/Trie$DataManipulate;)V
iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
return-void
.end method
.method private static final getCaseLocale(Lcom/ibm/icu/util/ULocale;[I)I
.registers 7
const/4 v4, 0x0
if-eqz p1, :cond_9
aget v1, p1, v4
if-eqz v1, :cond_9
move v2, v1
:goto_8
return v2
:cond_9
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v0
const-string v3, "tr"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e
const-string v3, "tur"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e
const-string v3, "az"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e
const-string v3, "aze"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_35
:cond_2e
const/4 v1, 0x2
:goto_2f
:cond_2f
if-eqz p1, :cond_33
aput v1, p1, v4
:cond_33
move v2, v1
goto :goto_8
:cond_35
const-string v3, "lt"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_45
const-string v3, "lit"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2f
:cond_45
const/4 v1, 0x3
goto :goto_2f
.end method
.method private static final getDelta(I)I
.registers 2
int-to-short v0, p0
shr-int/lit8 v0, v0, 0x6
return v0
.end method
.method public static final declared-synchronized getDummy()Lcom/ibm/icu/impl/UCaseProps;
.registers 3
const-class v0, Lcom/ibm/icu/impl/UCaseProps;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCspDummy:Lcom/ibm/icu/impl/UCaseProps;
if-nez v1, :cond_f
new-instance v1, Lcom/ibm/icu/impl/UCaseProps;
const/4 v2, 0x1
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;-><init>(Z)V
sput-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCspDummy:Lcom/ibm/icu/impl/UCaseProps;
:cond_f
sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCspDummy:Lcom/ibm/icu/impl/UCaseProps;
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_13
monitor-exit v0
return-object v1
:catchall_13
move-exception v1
monitor-exit v0
throw v1
.end method
.method private static final getExceptionsOffset(I)I
.registers 2
shr-int/lit8 v0, p0, 0x4
return v0
.end method
.method public static final declared-synchronized getSingleton()Lcom/ibm/icu/impl/UCaseProps;
.registers 2
const-class v0, Lcom/ibm/icu/impl/UCaseProps;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCsp:Lcom/ibm/icu/impl/UCaseProps;
if-nez v1, :cond_e
new-instance v1, Lcom/ibm/icu/impl/UCaseProps;
invoke-direct {v1}, Lcom/ibm/icu/impl/UCaseProps;-><init>()V
sput-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCsp:Lcom/ibm/icu/impl/UCaseProps;
:cond_e
sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->gCsp:Lcom/ibm/icu/impl/UCaseProps;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v0
return-object v1
:catchall_12
move-exception v1
monitor-exit v0
throw v1
.end method
.method private final getSlotValue(III)I
.registers 8
and-int/lit16 v2, p1, 0x100
if-nez v2, :cond_e
invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B
move-result v2
add-int/2addr p3, v2
iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
aget-char v1, v2, p3
:goto_d
return v1
:cond_e
invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B
move-result v2
mul-int/lit8 v2, v2, 0x2
add-int/2addr p3, v2
iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v0, p3, 0x1
aget-char v1, v2, p3
shl-int/lit8 v2, v1, 0x10
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
aget-char v3, v3, v0
or-int v1, v2, v3
move p3, v0
goto :goto_d
.end method
.method private final getSlotValueAndOffset(III)J
.registers 11
and-int/lit16 v3, p1, 0x100
if-nez v3, :cond_14
invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B
move-result v3
add-int/2addr p3, v3
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
aget-char v3, v3, p3
int-to-long v1, v3
:goto_e
int-to-long v3, p3
const/16 v5, 0x20
shl-long/2addr v3, v5
or-long/2addr v3, v1
return-wide v3
:cond_14
invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B
move-result v3
mul-int/lit8 v3, v3, 0x2
add-int/2addr p3, v3
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v0, p3, 0x1
aget-char v3, v3, p3
int-to-long v1, v3
const/16 v3, 0x10
shl-long v3, v1, v3
iget-object v5, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
aget-char v5, v5, v0
int-to-long v5, v5
or-long v1, v3, v5
move p3, v0
goto :goto_e
.end method
.method private static final getTypeFromProps(I)I
.registers 2
and-int/lit8 v0, p0, 0x3
return v0
.end method
.method private static final hasSlot(II)Z
.registers 4
const/4 v1, 0x1
shl-int v0, v1, p1
and-int/2addr v0, p0
if-eqz v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private final isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
.registers 8
const/4 v4, 0x0
if-nez p1, :cond_5
move v2, v4
:goto_4
return v2
:cond_5
invoke-interface {p1, p2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V
:cond_8
invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I
move-result v0
if-ltz v0, :cond_28
iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v1
invoke-static {v1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v2
if-eqz v2, :cond_1c
const/4 v2, 0x1
goto :goto_4
:cond_1c
const/16 v2, 0x307
if-eq v0, v2, :cond_8
and-int/lit8 v2, v1, 0x48
const/16 v3, 0x40
if-eq v2, v3, :cond_8
move v2, v4
goto :goto_4
:cond_28
move v2, v4
goto :goto_4
.end method
.method private final isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
if-nez p1, :cond_6
move v2, v3
:goto_5
return v2
:cond_6
invoke-interface {p1, v4}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V
:cond_9
invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I
move-result v0
if-ltz v0, :cond_1f
const/16 v2, 0x307
if-ne v0, v2, :cond_15
move v2, v4
goto :goto_5
:cond_15
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I
move-result v1
const/16 v2, 0x30
if-eq v1, v2, :cond_9
move v2, v3
goto :goto_5
:cond_1f
move v2, v3
goto :goto_5
.end method
.method private final isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
if-nez p1, :cond_6
move v2, v3
:goto_5
return v2
:cond_6
invoke-interface {p1, v4}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V
:cond_9
invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I
move-result v0
if-ltz v0, :cond_1f
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I
move-result v1
const/16 v2, 0x20
if-ne v1, v2, :cond_19
move v2, v4
goto :goto_5
:cond_19
const/16 v2, 0x30
if-eq v1, v2, :cond_9
move v2, v3
goto :goto_5
:cond_1f
move v2, v3
goto :goto_5
.end method
.method private final isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
.registers 6
const/4 v3, 0x0
if-nez p1, :cond_5
move v2, v3
:goto_4
return v2
:cond_5
const/4 v2, -0x1
invoke-interface {p1, v2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V
:cond_9
invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I
move-result v0
if-ltz v0, :cond_1f
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I
move-result v1
const/16 v2, 0x10
if-ne v1, v2, :cond_19
const/4 v2, 0x1
goto :goto_4
:cond_19
const/16 v2, 0x30
if-eq v1, v2, :cond_9
move v2, v3
goto :goto_4
:cond_1f
move v2, v3
goto :goto_4
.end method
.method private final isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
.registers 6
const/4 v3, 0x0
if-nez p1, :cond_5
move v2, v3
:goto_4
return v2
:cond_5
const/4 v2, -0x1
invoke-interface {p1, v2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V
:cond_9
invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I
move-result v0
if-ltz v0, :cond_1f
const/16 v2, 0x49
if-ne v0, v2, :cond_15
const/4 v2, 0x1
goto :goto_4
:cond_15
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I
move-result v1
const/16 v2, 0x30
if-eq v1, v2, :cond_9
move v2, v3
goto :goto_4
:cond_1f
move v2, v3
goto :goto_4
.end method
.method private static final propsHasException(I)Z
.registers 2
and-int/lit8 v0, p0, 0x8
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private final readData(Ljava/io/InputStream;)V
.registers 8
const/4 v5, 0x0
new-instance v2, Ljava/io/DataInputStream;
invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->FMT:[B
new-instance v4, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;
invoke-direct {v4, p0, v5}, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCaseProps;Lcom/ibm/icu/impl/UCaseProps$1;)V
invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B
invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
move-result v0
if-gez v0, :cond_1e
new-instance v3, Ljava/io/IOException;
const-string v4, "indexes[0] too small in ucase.icu"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1e
new-array v3, v0, [I
iput-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
const/4 v4, 0x0
aput v0, v3, v4
const/4 v1, 0x1
:goto_28
if-ge v1, v0, :cond_35
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
move-result v4
aput v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_35
new-instance v3, Lcom/ibm/icu/impl/CharTrie;
invoke-direct {v3, v2, v5}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
iput-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
const/4 v4, 0x3
aget v0, v3, v4
if-lez v0, :cond_55
new-array v3, v0, [C
iput-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
const/4 v1, 0x0
:goto_48
if-ge v1, v0, :cond_55
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C
move-result v4
aput-char v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_48
:cond_55
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I
const/4 v4, 0x4
aget v0, v3, v4
if-lez v0, :cond_6e
new-array v3, v0, [C
iput-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
const/4 v1, 0x0
:goto_61
if-ge v1, v0, :cond_6e
iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C
move-result v4
aput-char v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_61
:cond_6e
return-void
.end method
.method private static final slotOffset(II)B
.registers 5
const/4 v2, 0x1
sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B
shl-int v1, v2, p1
sub-int/2addr v1, v2
and-int/2addr v1, p0
aget-byte v0, v0, v1
return v0
.end method
.method private final strcmpMax(Ljava/lang/String;II)I
.registers 11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
sub-int/2addr p3, v4
const/4 v2, 0x0
:goto_6
add-int/lit8 v3, v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
iget-object v6, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
add-int/lit8 v5, p2, 0x1
aget-char v1, v6, p2
if-nez v1, :cond_16
const/4 v6, 0x1
:goto_15
return v6
:cond_16
sub-int/2addr v0, v1
if-eqz v0, :cond_1b
move v6, v0
goto :goto_15
:cond_1b
add-int/lit8 v4, v4, -0x1
if-gtz v4, :cond_2b
if-eqz p3, :cond_27
iget-object v6, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
aget-char v6, v6, v5
if-nez v6, :cond_29
:cond_27
const/4 v6, 0x0
goto :goto_15
:cond_29
neg-int v6, p3
goto :goto_15
:cond_2b
move v2, v3
move p2, v5
goto :goto_6
.end method
.method private final toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[IZ)I
.registers 22
move/from16 v10, p1
iget-object v13, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
move-object v0, v13
move/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v9
invoke-static {v9}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v13
if-nez v13, :cond_26
invoke-static {v9}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v13
const/4 v14, 0x1
if-ne v13, v14, :cond_1e
invoke-static {v9}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v13
add-int v10, p1, v13
:goto_1e
:cond_1e
move v0, v10
move/from16 v1, p1
if-ne v0, v1, :cond_b8
xor-int/lit8 v13, v10, -0x1
:goto_25
return v13
:cond_26
invoke-static {v9}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v2
iget-object v13, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v3, v2, 0x1
aget-char v5, v13, v2
move v4, v3
and-int/lit16 v13, v5, 0x4000
if-eqz v13, :cond_6b
invoke-static/range {p4 .. p5}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;[I)I
move-result v8
const/4 v13, 0x2
if-ne v8, v13, :cond_46
const/16 v13, 0x69
move/from16 v0, p1
move v1, v13
if-ne v0, v1, :cond_46
const/16 v13, 0x130
goto :goto_25
:cond_46
const/4 v13, 0x3
if-ne v8, v13, :cond_5b
const/16 v13, 0x307
move/from16 v0, p1
move v1, v13
if-ne v0, v1, :cond_5b
move-object v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
move-result v13
if-eqz v13, :cond_5b
const/4 v13, 0x0
goto :goto_25
:cond_5b
move v2, v3
:goto_5c
:cond_5c
if-nez p6, :cond_ab
const/4 v13, 0x3
invoke-static {v5, v13}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v13
if-eqz v13, :cond_ab
const/4 v7, 0x3
:goto_66
invoke-direct {p0, v5, v7, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result v10
goto :goto_1e
:cond_6b
const/4 v13, 0x7
invoke-static {v5, v13}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v13
if-eqz v13, :cond_bb
const/4 v13, 0x7
invoke-direct {p0, v5, v13, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J
move-result-wide v11
long-to-int v13, v11
const v14, 0xffff
and-int v6, v13, v14
const/16 v13, 0x20
shr-long v13, v11, v13
long-to-int v13, v13
add-int/lit8 v2, v13, 0x1
and-int/lit8 v13, v6, 0xf
add-int/2addr v2, v13
shr-int/lit8 v6, v6, 0x4
and-int/lit8 v13, v6, 0xf
add-int/2addr v2, v13
shr-int/lit8 v6, v6, 0x4
if-eqz p6, :cond_a3
and-int/lit8 v6, v6, 0xf
:goto_92
if-eqz v6, :cond_5c
new-instance v13, Ljava/lang/String;
iget-object v14, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
invoke-direct {v13, v14, v2, v6}, Ljava/lang/String;-><init>([CII)V
move-object/from16 v0, p3
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v13, v6
goto :goto_25
:cond_a3
and-int/lit8 v13, v6, 0xf
add-int/2addr v2, v13
shr-int/lit8 v13, v6, 0x4
and-int/lit8 v6, v13, 0xf
goto :goto_92
:cond_ab
const/4 v13, 0x2
invoke-static {v5, v13}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v13
if-eqz v13, :cond_b4
const/4 v7, 0x2
goto :goto_66
:cond_b4
xor-int/lit8 v13, p1, -0x1
goto/16 :goto_25
:cond_b8
move v13, v10
goto/16 :goto_25
:cond_bb
move v2, v3
goto :goto_5c
.end method
.method public final addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
.registers 22
sparse-switch p1, :sswitch_data_12c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
move-object/from16 v17, v0
move-object/from16 v0, v17
move/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v14
invoke-static {v14}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v17
if-nez v17, :cond_4b
invoke-static {v14}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v17
if-eqz v17, :cond_2c
invoke-static {v14}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v6
if-eqz v6, :cond_2c
add-int v17, p1, v6
move-object/from16 v0, p2
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:sswitch_2c
:goto_2c
:cond_2c
return-void
:sswitch_2d
const/16 v17, 0x69
move-object/from16 v0, p2
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_2c
:sswitch_37
const/16 v17, 0x49
move-object/from16 v0, p2
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_2c
:sswitch_41
const-string v17, "i\u0307"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_2c
:cond_4b
invoke-static {v14}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
move-object/from16 v17, v0
add-int/lit8 v8, v7, 0x1
aget-char v10, v17, v7
move v9, v8
const/4 v12, 0x0
move v7, v8
:goto_5c
const/16 v17, 0x3
move v0, v12
move/from16 v1, v17
if-gt v0, v1, :cond_7d
invoke-static {v10, v12}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v17
if-eqz v17, :cond_7a
move v7, v9
move-object/from16 v0, p0
move v1, v10
move v2, v12
move v3, v7
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result p1
move-object/from16 v0, p2
move/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_7a
add-int/lit8 v12, v12, 0x1
goto :goto_5c
:cond_7d
const/16 v17, 0x6
move v0, v10
move/from16 v1, v17
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v17
if-eqz v17, :cond_128
move v7, v9
const/16 v17, 0x6
move-object/from16 v0, p0
move v1, v10
move/from16 v2, v17
move v3, v7
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J
move-result-wide v15
move-wide v0, v15
long-to-int v0, v0
move/from16 v17, v0
and-int/lit8 v4, v17, 0xf
const/16 v17, 0x20
shr-long v17, v15, v17
move-wide/from16 v0, v17
long-to-int v0, v0
move/from16 v17, v0
add-int/lit8 v5, v17, 0x1
:goto_a6
const/16 v17, 0x7
move v0, v10
move/from16 v1, v17
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v17
if-eqz v17, :cond_fc
move v7, v9
const/16 v17, 0x7
move-object/from16 v0, p0
move v1, v10
move/from16 v2, v17
move v3, v7
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J
move-result-wide v15
long-to-int v11, v15
const/16 v17, 0x20
shr-long v17, v15, v17
move-wide/from16 v0, v17
long-to-int v0, v0
move/from16 v17, v0
add-int/lit8 v7, v17, 0x1
const v17, 0xffff
and-int v11, v11, v17
and-int/lit8 v17, v11, 0xf
add-int v7, v7, v17
shr-int/lit8 v11, v11, 0x4
and-int/lit8 v13, v11, 0xf
if-eqz v13, :cond_f2
new-instance v17, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
move-object/from16 v18, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
move v2, v7
move v3, v13
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
add-int/2addr v7, v13
:cond_f2
shr-int/lit8 v11, v11, 0x4
and-int/lit8 v17, v11, 0xf
add-int v7, v7, v17
shr-int/lit8 v11, v11, 0x4
add-int/2addr v7, v11
move v5, v7
:cond_fc
const/4 v12, 0x0
:goto_fd
if-ge v12, v4, :cond_2c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
move-object/from16 v0, v17
move v1, v5
move/from16 v2, v18
move v3, v12
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I
move-result p1
move-object/from16 v0, p2
move/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v17
add-int v12, v12, v17
goto :goto_fd
:cond_128
const/4 v4, 0x0
const/4 v5, 0x0
goto/16 :goto_a6
:sswitch_data_12c
.sparse-switch
0x49 -> :sswitch_2d
0x69 -> :sswitch_37
0x130 -> :sswitch_41
0x131 -> :sswitch_2c
.end sparse-switch
.end method
.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 5
new-instance v1, Lcom/ibm/icu/impl/TrieIterator;
iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
new-instance v0, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v0}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:goto_c
invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v2
if-eqz v2, :cond_18
iget v2, v0, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_c
:cond_18
return-void
.end method
.method public final addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
.registers 15
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
if-eqz v10, :cond_6
if-nez p1, :cond_8
:cond_6
const/4 v10, 0x0
:goto_7
return v10
:cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
const/4 v10, 0x1
if-gt v2, v10, :cond_11
const/4 v10, 0x0
goto :goto_7
:cond_11
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
const/4 v11, 0x0
aget-char v8, v10, v11
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
const/4 v11, 0x1
aget-char v7, v10, v11
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
const/4 v11, 0x2
aget-char v9, v10, v11
if-le v2, v9, :cond_24
const/4 v10, 0x0
goto :goto_7
:cond_24
const/4 v5, 0x0
move v3, v8
:goto_26
if-ge v5, v3, :cond_5f
add-int v10, v5, v3
div-int/lit8 v1, v10, 0x2
add-int/lit8 v10, v1, 0x1
mul-int v6, v10, v7
invoke-direct {p0, p1, v6, v9}, Lcom/ibm/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I
move-result v4
if-nez v4, :cond_58
move v1, v9
:goto_37
if-ge v1, v7, :cond_56
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
add-int v11, v6, v1
aget-char v10, v10, v11
if-eqz v10, :cond_56
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
iget-object v11, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C
array-length v11, v11
invoke-static {v10, v6, v11, v1}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I
move-result v0
invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v10
add-int/2addr v1, v10
goto :goto_37
:cond_56
const/4 v10, 0x1
goto :goto_7
:cond_58
if-gez v4, :cond_5c
move v3, v1
goto :goto_26
:cond_5c
add-int/lit8 v5, v1, 0x1
goto :goto_26
:cond_5f
const/4 v10, 0x0
goto :goto_7
.end method
.method public final fold(II)I
.registers 12
const/16 v8, 0x130
const/16 v7, 0x69
const/16 v6, 0x49
iget-object v5, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v5, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v4
invoke-static {v4}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v5
if-nez v5, :cond_20
invoke-static {v4}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v5
const/4 v6, 0x2
if-lt v5, v6, :cond_1e
invoke-static {v4}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v5
add-int/2addr p1, v5
:goto_1e
:cond_1e
move v5, p1
:goto_1f
return v5
:cond_20
invoke-static {v4}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v0
iget-object v5, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v1, v0, 0x1
aget-char v2, v5, v0
const v5, 0x8000
and-int/2addr v5, v2
if-eqz v5, :cond_45
and-int/lit16 v5, p2, 0xff
if-nez v5, :cond_3c
if-ne p1, v6, :cond_38
move v5, v7
goto :goto_1f
:cond_38
if-ne p1, v8, :cond_45
move v5, p1
goto :goto_1f
:cond_3c
if-ne p1, v6, :cond_41
const/16 v5, 0x131
goto :goto_1f
:cond_41
if-ne p1, v8, :cond_45
move v5, v7
goto :goto_1f
:cond_45
const/4 v5, 0x1
invoke-static {v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v5
if-eqz v5, :cond_52
const/4 v3, 0x1
:goto_4d
invoke-direct {p0, v2, v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result p1
goto :goto_1e
:cond_52
const/4 v5, 0x0
invoke-static {v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v5
if-eqz v5, :cond_5b
const/4 v3, 0x0
goto :goto_4d
:cond_5b
move v5, p1
goto :goto_1f
.end method
.method public final getDotType(I)I
.registers 5
iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v1
if-nez v1, :cond_f
and-int/lit8 v1, v0, 0x30
:goto_e
return v1
:cond_f
iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v2
aget-char v1, v1, v2
shr-int/lit8 v1, v1, 0x8
and-int/lit8 v1, v1, 0x30
goto :goto_e
.end method
.method public final getType(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v0
return v0
.end method
.method public final getTypeOrIgnorable(I)I
.registers 6
iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v1
if-eqz v1, :cond_e
move v2, v1
:goto_d
return v2
:cond_e
const/16 v2, 0x307
if-eq p1, v2, :cond_18
and-int/lit8 v2, v0, 0x48
const/16 v3, 0x40
if-ne v2, v3, :cond_1a
:cond_18
const/4 v2, -0x1
goto :goto_d
:cond_1a
const/4 v2, 0x0
goto :goto_d
.end method
.method public final isCaseSensitive(I)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final isSoftDotted(I)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I
move-result v0
const/16 v1, 0x10
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final toFullFolding(ILjava/lang/StringBuffer;I)I
.registers 16
move v7, p1
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v10, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v10
if-nez v10, :cond_1f
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v10
const/4 v11, 0x2
if-lt v10, v11, :cond_1a
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v10
add-int v7, p1, v10
:goto_1a
:cond_1a
if-ne v7, p1, :cond_9c
xor-int/lit8 v10, v7, -0x1
:goto_1e
return v10
:cond_1f
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v0
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v1, v0, 0x1
aget-char v3, v10, v0
move v2, v1
const v10, 0x8000
and-int/2addr v10, v3
if-eqz v10, :cond_54
and-int/lit16 v10, p3, 0xff
if-nez v10, :cond_46
const/16 v10, 0x49
if-ne p1, v10, :cond_3b
const/16 v10, 0x69
goto :goto_1e
:cond_3b
const/16 v10, 0x130
if-ne p1, v10, :cond_82
const-string v10, "i\u0307"
invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x2
goto :goto_1e
:cond_46
const/16 v10, 0x49
if-ne p1, v10, :cond_4d
const/16 v10, 0x131
goto :goto_1e
:cond_4d
const/16 v10, 0x130
if-ne p1, v10, :cond_82
const/16 v10, 0x69
goto :goto_1e
:cond_54
const/4 v10, 0x7
invoke-static {v3, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v10
if-eqz v10, :cond_82
const/4 v10, 0x7
invoke-direct {p0, v3, v10, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J
move-result-wide v8
long-to-int v10, v8
const v11, 0xffff
and-int v4, v10, v11
const/16 v10, 0x20
shr-long v10, v8, v10
long-to-int v10, v10
add-int/lit8 v0, v10, 0x1
and-int/lit8 v10, v4, 0xf
add-int/2addr v0, v10
shr-int/lit8 v10, v4, 0x4
and-int/lit8 v4, v10, 0xf
if-eqz v4, :cond_83
new-instance v10, Ljava/lang/String;
iget-object v11, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
invoke-direct {v10, v11, v0, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v10, v4
goto :goto_1e
:cond_82
move v0, v1
:cond_83
const/4 v10, 0x1
invoke-static {v3, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v10
if-eqz v10, :cond_90
const/4 v5, 0x1
:goto_8b
invoke-direct {p0, v3, v5, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result v7
goto :goto_1a
:cond_90
const/4 v10, 0x0
invoke-static {v3, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v10
if-eqz v10, :cond_99
const/4 v5, 0x0
goto :goto_8b
:cond_99
xor-int/lit8 v10, p1, -0x1
goto :goto_1e
:cond_9c
move v10, v7
goto :goto_1e
.end method
.method public final toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
.registers 18
move v7, p1
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v10, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v10
if-nez v10, :cond_1f
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v10
const/4 v11, 0x2
if-lt v10, v11, :cond_1a
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v10
add-int v7, p1, v10
:goto_1a
:cond_1a
if-ne v7, p1, :cond_101
xor-int/lit8 v10, v7, -0x1
:goto_1e
return v10
:cond_1f
invoke-static {v6}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v0
iget-object v10, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v1, v0, 0x1
aget-char v3, v10, v0
move v2, v1
and-int/lit16 v10, v3, 0x4000
if-eqz v10, :cond_ce
invoke-static/range {p4 .. p5}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;[I)I
move-result v5
const/4 v10, 0x3
if-ne v5, v10, :cond_82
const/16 v10, 0x49
if-eq p1, v10, :cond_41
const/16 v10, 0x4a
if-eq p1, v10, :cond_41
const/16 v10, 0x12e
if-ne p1, v10, :cond_47
:cond_41
invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
move-result v10
if-nez v10, :cond_53
:cond_47
const/16 v10, 0xcc
if-eq p1, v10, :cond_53
const/16 v10, 0xcd
if-eq p1, v10, :cond_53
const/16 v10, 0x128
if-ne p1, v10, :cond_82
:cond_53
sparse-switch p1, :sswitch_data_104
const/4 v10, 0x0
goto :goto_1e
:sswitch_58
const-string v10, "i\u0307"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x2
goto :goto_1e
:sswitch_5f
const-string v10, "j\u0307"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x2
goto :goto_1e
:sswitch_66
const-string v10, "\u012f\u0307"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x2
goto :goto_1e
:sswitch_6d
const-string v10, "i\u0307\u0300"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x3
goto :goto_1e
:sswitch_74
const-string v10, "i\u0307\u0301"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x3
goto :goto_1e
:sswitch_7b
const-string v10, "i\u0307\u0303"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x3
goto :goto_1e
:cond_82
const/4 v10, 0x2
if-ne v5, v10, :cond_8c
const/16 v10, 0x130
if-ne p1, v10, :cond_8c
const/16 v10, 0x69
goto :goto_1e
:cond_8c
const/4 v10, 0x2
if-ne v5, v10, :cond_9b
const/16 v10, 0x307
if-ne p1, v10, :cond_9b
invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
move-result v10
if-eqz v10, :cond_9b
const/4 v10, 0x0
goto :goto_1e
:cond_9b
const/4 v10, 0x2
if-ne v5, v10, :cond_ac
const/16 v10, 0x49
if-ne p1, v10, :cond_ac
invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
move-result v10
if-nez v10, :cond_ac
const/16 v10, 0x131
goto/16 :goto_1e
:cond_ac
const/16 v10, 0x130
if-ne p1, v10, :cond_b8
const-string v10, "i\u0307"
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v10, 0x2
goto/16 :goto_1e
:cond_b8
const/16 v10, 0x3a3
if-ne p1, v10, :cond_f3
const/4 v10, 0x1
invoke-direct {p0, p2, v10}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
move-result v10
if-nez v10, :cond_f3
const/4 v10, -0x1
invoke-direct {p0, p2, v10}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
move-result v10
if-eqz v10, :cond_f3
const/16 v10, 0x3c2
goto/16 :goto_1e
:cond_ce
const/4 v10, 0x7
invoke-static {v3, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v10
if-eqz v10, :cond_f3
const/4 v10, 0x7
invoke-direct {p0, v3, v10, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J
move-result-wide v8
long-to-int v10, v8
and-int/lit8 v4, v10, 0xf
if-eqz v4, :cond_f3
const/16 v10, 0x20
shr-long v10, v8, v10
long-to-int v10, v10
add-int/lit8 v0, v10, 0x1
new-instance v10, Ljava/lang/String;
iget-object v11, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
invoke-direct {v10, v11, v0, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v10, v4
goto/16 :goto_1e
:cond_f3
const/4 v10, 0x0
invoke-static {v3, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v10
if-eqz v10, :cond_1a
const/4 v10, 0x0
invoke-direct {p0, v3, v10, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result v7
goto/16 :goto_1a
:cond_101
move v10, v7
goto/16 :goto_1e
:sswitch_data_104
.sparse-switch
0x49 -> :sswitch_58
0x4a -> :sswitch_5f
0xcc -> :sswitch_6d
0xcd -> :sswitch_74
0x128 -> :sswitch_7b
0x12e -> :sswitch_66
.end sparse-switch
.end method
.method public final toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
.registers 13
const/4 v6, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[IZ)I
move-result v0
return v0
.end method
.method public final toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
.registers 13
const/4 v6, 0x1
move-object v0, p0
move v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[IZ)I
move-result v0
return v0
.end method
.method public final tolower(I)I
.registers 8
const/4 v5, 0x0
iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v4, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v4
if-nez v4, :cond_1a
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v4
const/4 v5, 0x2
if-lt v4, v5, :cond_19
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v4
add-int/2addr p1, v4
:goto_19
:cond_19
return p1
:cond_1a
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v0
iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v1, v0, 0x1
aget-char v2, v4, v0
invoke-static {v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v4
if-eqz v4, :cond_19
invoke-direct {p0, v2, v5, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result p1
goto :goto_19
.end method
.method public final totitle(I)I
.registers 10
iget-object v6, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v6, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v6
if-nez v6, :cond_1a
invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v6
const/4 v7, 0x1
if-ne v6, v7, :cond_18
invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v6
add-int/2addr p1, v6
:cond_18
:goto_18
move v0, p1
:goto_19
return v0
:cond_1a
invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v1
iget-object v6, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v2, v1, 0x1
aget-char v3, v6, v1
const/4 v6, 0x3
invoke-static {v3, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v6
if-eqz v6, :cond_31
const/4 v4, 0x3
:goto_2c
invoke-direct {p0, v3, v4, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result p1
goto :goto_18
:cond_31
const/4 v6, 0x2
invoke-static {v3, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v6
if-eqz v6, :cond_3a
const/4 v4, 0x2
goto :goto_2c
:cond_3a
move v0, p1
goto :goto_19
.end method
.method public final toupper(I)I
.registers 8
const/4 v5, 0x2
iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v4, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z
move-result v4
if-nez v4, :cond_1a
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I
move-result v4
const/4 v5, 0x1
if-ne v4, v5, :cond_19
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I
move-result v4
add-int/2addr p1, v4
:goto_19
:cond_19
return p1
:cond_1a
invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I
move-result v0
iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:[C
add-int/lit8 v1, v0, 0x1
aget-char v2, v4, v0
invoke-static {v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z
move-result v4
if-eqz v4, :cond_19
invoke-direct {p0, v2, v5, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I
move-result p1
goto :goto_19
.end method