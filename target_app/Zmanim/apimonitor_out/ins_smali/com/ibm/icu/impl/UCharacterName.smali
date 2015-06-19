.class public final Lcom/ibm/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"
.field static final EXTENDED_CATEGORY_:I = 0x21
.field private static final GROUP_MASK_:I = 0x1f
.field private static final GROUP_SHIFT_:I = 0x5
.field private static INSTANCE_:Lcom/ibm/icu/impl/UCharacterName; = null
.field private static final LEAD_SURROGATE_:I = 0x1f
.field public static final LINES_PER_GROUP_:I = 0x20
.field private static final NAME_BUFFER_SIZE_:I = 0x186a0
.field private static final NAME_FILE_NAME_:Ljava/lang/String; = "data/icudt42b/unames.icu"
.field private static final NON_CHARACTER_:I = 0x1e
.field private static final OFFSET_HIGH_OFFSET_:I = 0x1
.field private static final OFFSET_LOW_OFFSET_:I = 0x2
.field private static final SINGLE_NIBBLE_MAX_:I = 0xb
.field private static final TRAIL_SURROGATE_:I = 0x20
.field private static final TYPE_NAMES_:[Ljava/lang/String; = null
.field private static final UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"
.field private m_ISOCommentSet_:[I
.field private m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
.field public m_groupcount_:I
.field private m_groupinfo_:[C
.field private m_grouplengths_:[C
.field private m_groupoffsets_:[C
.field  m_groupsize_:I
.field private m_groupstring_:[B
.field private m_maxISOCommentLength_:I
.field private m_maxNameLength_:I
.field private m_nameSet_:[I
.field private m_tokenstring_:[B
.field private m_tokentable_:[C
.field private m_utilIntBuffer_:[I
.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterName;
const/16 v0, 0x21
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "unassigned"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "uppercase letter"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "lowercase letter"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "titlecase letter"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "modifier letter"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "other letter"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "non spacing mark"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "enclosing mark"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "combining spacing mark"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "decimal digit number"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "letter number"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "other number"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "space separator"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "line separator"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "paragraph separator"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "control"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "format"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "private use area"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "surrogate"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "dash punctuation"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "start punctuation"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "end punctuation"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "connector punctuation"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, "other punctuation"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string v2, "math symbol"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string v2, "currency symbol"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string v2, "modifier symbol"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string v2, "other symbol"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string v2, "initial punctuation"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string v2, "final punctuation"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string v2, "noncharacter"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string v2, "lead surrogate"
aput-object v2, v0, v1
const/16 v1, 0x20
const-string v2, "trail surrogate"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 7
const/16 v5, 0x21
const/16 v4, 0x8
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
iput v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
new-array v3, v5, [C
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C
new-array v3, v5, [C
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C
new-array v3, v4, [I
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
new-array v3, v4, [I
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v3, 0x2
new-array v3, v3, [I
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I
const-string v3, "data/icudt42b/unames.icu"
invoke-static {v3}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
new-instance v0, Ljava/io/BufferedInputStream;
const v3, 0x186a0
invoke-direct {v0, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
new-instance v2, Lcom/ibm/icu/impl/UCharacterNameReader;
invoke-direct {v2, v0}, Lcom/ibm/icu/impl/UCharacterNameReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->read(Lcom/ibm/icu/impl/UCharacterName;)V
invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
return-void
.end method
.method static synthetic access$200([ILjava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/String;)I
move-result v0
return v0
.end method
.method static synthetic access$300([ILjava/lang/StringBuffer;)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I
move-result v0
return v0
.end method
.method private static add([ILjava/lang/String;)I
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
sub-int v0, v1, v2
:goto_7
if-ltz v0, :cond_13
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-static {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V
add-int/lit8 v0, v0, -0x1
goto :goto_7
:cond_13
return v1
.end method
.method private static add([ILjava/lang/StringBuffer;)I
.registers 5
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v1
const/4 v2, 0x1
sub-int v0, v1, v2
:goto_7
if-ltz v0, :cond_13
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
invoke-static {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V
add-int/lit8 v0, v0, -0x1
goto :goto_7
:cond_13
return v1
.end method
.method private static add([IC)V
.registers 6
ushr-int/lit8 v0, p1, 0x5
aget v1, p0, v0
const/4 v2, 0x1
and-int/lit8 v3, p1, 0x1f
shl-int/2addr v2, v3
or-int/2addr v1, v2
aput v1, p0, v0
return-void
.end method
.method private addAlgorithmName(I)I
.registers 6
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
array-length v2, v2
const/4 v3, 0x1
sub-int v0, v2, v3
:goto_7
if-ltz v0, :cond_19
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v2, v2, v0
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
invoke-virtual {v2, v3, p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->add([II)I
move-result v1
if-le v1, p1, :cond_16
move p1, v1
:cond_16
add-int/lit8 v0, v0, -0x1
goto :goto_7
:cond_19
return p1
.end method
.method private addExtendedName(I)I
.registers 6
sget-object v2, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
array-length v2, v2
const/4 v3, 0x1
sub-int v0, v2, v3
:goto_6
if-ltz v0, :cond_1a
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
sget-object v3, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/String;)I
move-result v2
add-int/lit8 v1, v2, 0x9
if-le v1, p1, :cond_17
move p1, v1
:cond_17
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_1a
return p1
.end method
.method private addGroupName(I)V
.registers 15
const/16 v10, 0x22
const/4 v12, 0x0
const/4 v11, 0x1
const/4 v5, 0x0
new-array v7, v10, [C
new-array v2, v10, [C
iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
array-length v10, v10
new-array v9, v10, [B
const/4 v0, 0x0
:goto_f
iget v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
if-ge v0, v10, :cond_62
invoke-virtual {p0, v0, v7, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I
move-result v6
const/4 v3, 0x0
:goto_18
const/16 v10, 0x20
if-ge v3, v10, :cond_5f
aget-char v10, v7, v3
add-int v4, v6, v10
aget-char v1, v2, v3
if-nez v1, :cond_27
:goto_24
:cond_24
add-int/lit8 v3, v3, 0x1
goto :goto_18
:cond_27
iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
invoke-direct {p0, v4, v1, v9, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I
move-result-object v8
aget v10, v8, v12
if-le v10, p1, :cond_33
aget p1, v8, v12
:cond_33
aget v10, v8, v11
add-int/2addr v4, v10
aget v10, v8, v11
if-ge v10, v1, :cond_24
aget v10, v8, v11
sub-int/2addr v1, v10
iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
invoke-direct {p0, v4, v1, v9, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I
move-result-object v8
aget v10, v8, v12
if-le v10, p1, :cond_49
aget p1, v8, v12
:cond_49
aget v10, v8, v11
add-int/2addr v4, v10
aget v10, v8, v11
if-ge v10, v1, :cond_24
aget v10, v8, v11
sub-int/2addr v1, v10
iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I
invoke-direct {p0, v4, v1, v9, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I
move-result-object v8
aget v10, v8, v11
if-le v10, v5, :cond_24
move v5, v1
goto :goto_24
:cond_5f
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_62
iput v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxISOCommentLength_:I
iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
return-void
.end method
.method private addGroupName(II[B[I)[I
.registers 15
const/4 v9, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
:goto_3
if-ge v2, p2, :cond_14
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
add-int v6, p1, v2
aget-byte v5, v5, v6
and-int/lit16 v5, v5, 0xff
int-to-char v0, v5
add-int/lit8 v2, v2, 0x1
const/16 v5, 0x3b
if-ne v0, v5, :cond_20
:cond_14
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I
aput v1, v5, v9
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I
const/4 v6, 0x1
aput v2, v5, v6
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I
return-object v5
:cond_20
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
array-length v5, v5
if-lt v0, v5, :cond_2b
invoke-static {p4, v0}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_2b
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
and-int/lit16 v6, v0, 0xff
aget-char v4, v5, v6
const v5, 0xfffe
if-ne v4, v5, :cond_48
shl-int/lit8 v5, v0, 0x8
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
add-int v7, p1, v2
aget-byte v6, v6, v7
and-int/lit16 v6, v6, 0xff
or-int/2addr v5, v6
int-to-char v0, v5
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
aget-char v4, v5, v0
add-int/lit8 v2, v2, 0x1
:cond_48
const v5, 0xffff
if-ne v4, v5, :cond_53
invoke-static {p4, v0}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_53
aget-byte v3, p3, v0
if-nez v3, :cond_77
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
monitor-enter v5
:try_start_5a
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v7, 0x0
iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I
move-result v8
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B
invoke-static {v6, v7, v4}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-static {p4, v6}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I
move-result v6
int-to-byte v3, v6
monitor-exit v5
:try_end_75
.catchall {:try_start_5a .. :try_end_75} :catchall_79
aput-byte v3, p3, v0
:cond_77
add-int/2addr v1, v3
goto :goto_3
:catchall_79
move-exception v6
:try_start_7a
monitor-exit v5
:try_end_7b
.catchall {:try_start_7a .. :try_end_7b} :catchall_79
throw v6
.end method
.method private static contains([IC)Z
.registers 5
const/4 v2, 0x1
ushr-int/lit8 v0, p1, 0x5
aget v0, p0, v0
and-int/lit8 v1, p1, 0x1f
shl-int v1, v2, v1
and-int/2addr v0, v1
if-eqz v0, :cond_e
move v0, v2
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private convert([ILcom/ibm/icu/text/UnicodeSet;)V
.registers 5
invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z
move-result v1
if-nez v1, :cond_a
:cond_9
return-void
:cond_a
const/16 v0, 0xff
:goto_c
if-lez v0, :cond_9
invoke-static {p1, v0}, Lcom/ibm/icu/impl/UCharacterName;->contains([IC)Z
move-result v1
if-eqz v1, :cond_17
invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_17
const/4 v1, 0x1
sub-int v1, v0, v1
int-to-char v0, v1
goto :goto_c
.end method
.method private getAlgName(II)Ljava/lang/String;
.registers 9
const/4 v5, 0x1
if-eq p2, v5, :cond_39
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
monitor-enter v1
:try_start_6
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v3, 0x0
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I
move-result v4
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
array-length v2, v2
sub-int v0, v2, v5
:goto_17
if-ltz v0, :cond_38
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v2, v2, v0
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z
move-result v2
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v2, v2, v0
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v2, p1, v3}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
monitor-exit v1
move-object v1, v2
:goto_34
return-object v1
:cond_35
add-int/lit8 v0, v0, -0x1
goto :goto_17
:cond_38
monitor-exit v1
:cond_39
const/4 v1, 0x0
goto :goto_34
:catchall_3b
move-exception v2
monitor-exit v1
:try_end_3d
.catchall {:try_start_6 .. :try_end_3d} :catchall_3b
throw v2
.end method
.method public static getCodepointMSB(I)I
.registers 2
shr-int/lit8 v0, p0, 0x5
return v0
.end method
.method private static getExtendedChar(Ljava/lang/String;I)I
.registers 13
const/4 v10, -0x1
const/4 v9, 0x1
const/4 v7, 0x0
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
const/16 v8, 0x3c
if-ne v7, v8, :cond_58
const/4 v7, 0x2
if-ne p1, v7, :cond_56
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
sub-int v1, v7, v9
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
const/16 v8, 0x3e
if-ne v7, v8, :cond_56
const/16 v7, 0x2d
invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
move-result v5
if-ltz v5, :cond_56
add-int/lit8 v5, v5, 0x1
const/4 v4, -0x1
:try_start_27
invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v7
const/16 v8, 0x10
invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
:try_end_30
.catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_30} :catch_4f
move-result v4
sub-int v7, v5, v9
invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
sget-object v7, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
array-length v3, v7
const/4 v2, 0x0
:goto_3b
if-ge v2, v3, :cond_56
sget-object v7, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
aget-object v7, v7, v2
invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v7
if-nez v7, :cond_53
invoke-static {v4}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I
move-result v7
if-ne v7, v2, :cond_56
move v7, v4
:goto_4e
return v7
:catch_4f
move-exception v7
move-object v0, v7
move v7, v10
goto :goto_4e
:cond_53
add-int/lit8 v2, v2, 0x1
goto :goto_3b
:cond_56
move v7, v10
goto :goto_4e
:cond_58
const/4 v7, -0x2
goto :goto_4e
.end method
.method private getGroupChar(I[CLjava/lang/String;I)I
.registers 22
const/4 v4, 0x0
invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I
move-result v7
const/4 v11, 0x0
:goto_6
const/16 v13, 0x20
if-gt v11, v13, :cond_b9
const/4 v8, 0x0
aget-char v6, p2, v11
const/4 v13, 0x1
move/from16 v0, p4
move v1, v13
if-ne v0, v1, :cond_2a
move/from16 v10, p1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
move-object v13, v0
const/16 v14, 0x3b
move-object v0, v13
move/from16 v1, p1
move v2, v6
move v3, v14
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I
move-result v13
add-int p1, p1, v13
sub-int v13, p1, v10
sub-int/2addr v6, v13
:cond_2a
const/4 v5, 0x0
move v9, v8
:goto_2c
if-ge v5, v6, :cond_a0
const/4 v13, -0x1
if-eq v9, v13, :cond_a0
if-ge v9, v7, :cond_a0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
move-object v13, v0
add-int v14, p1, v5
aget-byte v4, v13, v14
add-int/lit8 v5, v5, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
move-object v13, v0
array-length v13, v13
if-lt v4, v13, :cond_56
add-int/lit8 v8, v9, 0x1
move-object/from16 v0, p3
move v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
and-int/lit16 v14, v4, 0xff
if-eq v13, v14, :cond_bb
const/4 v8, -0x1
move v9, v8
goto :goto_2c
:cond_56
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
move-object v13, v0
and-int/lit16 v14, v4, 0xff
aget-char v12, v13, v14
const v13, 0xfffe
if-ne v12, v13, :cond_7b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
move-object v13, v0
shl-int/lit8 v14, v4, 0x8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
move-object v15, v0
add-int v16, p1, v5
aget-byte v15, v15, v16
and-int/lit16 v15, v15, 0xff
or-int/2addr v14, v15
aget-char v12, v13, v14
add-int/lit8 v5, v5, 0x1
:cond_7b
const v13, 0xffff
if-ne v12, v13, :cond_90
add-int/lit8 v8, v9, 0x1
move-object/from16 v0, p3
move v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
and-int/lit16 v14, v4, 0xff
if-eq v13, v14, :cond_bb
const/4 v8, -0x1
move v9, v8
goto :goto_2c
:cond_90
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B
move-object v13, v0
move-object/from16 v0, p3
move-object v1, v13
move v2, v9
move v3, v12
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I
move-result v8
move v9, v8
goto :goto_2c
:cond_a0
if-ne v7, v9, :cond_b3
if-eq v5, v6, :cond_b1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
move-object v13, v0
add-int v14, p1, v5
aget-byte v13, v13, v14
const/16 v14, 0x3b
if-ne v13, v14, :cond_b3
:cond_b1
move v13, v11
:goto_b2
return v13
:cond_b3
add-int p1, p1, v6
add-int/lit8 v11, v11, 0x1
goto/16 :goto_6
:cond_b9
const/4 v13, -0x1
goto :goto_b2
:cond_bb
move v9, v8
goto/16 :goto_2c
.end method
.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
.registers 9
const/4 v5, -0x1
monitor-enter p0
const/4 v0, 0x0
:goto_3
:try_start_3
iget v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
if-ge v0, v3, :cond_26
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C
invoke-virtual {p0, v0, v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I
move-result v2
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C
invoke-direct {p0, v2, v3, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I
move-result v1
if-eq v1, v5, :cond_23
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
iget v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
mul-int/2addr v4, v0
aget-char v3, v3, v4
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_28
shl-int/lit8 v3, v3, 0x5
or-int/2addr v3, v1
:goto_21
monitor-exit p0
return v3
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_26
move v3, v5
goto :goto_21
:catchall_28
move-exception v3
monitor-exit p0
throw v3
.end method
.method public static getGroupLimit(I)I
.registers 2
shl-int/lit8 v0, p0, 0x5
add-int/lit8 v0, v0, 0x20
return v0
.end method
.method public static getGroupMin(I)I
.registers 2
shl-int/lit8 v0, p0, 0x5
return v0
.end method
.method public static getGroupMinFromCodepoint(I)I
.registers 2
and-int/lit8 v0, p0, -0x20
return v0
.end method
.method public static getGroupOffset(I)I
.registers 2
and-int/lit8 v0, p0, 0x1f
return v0
.end method
.method public static getInstance()Lcom/ibm/icu/impl/UCharacterName;
.registers 5
sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterName;
if-nez v1, :cond_b
:try_start_4
new-instance v1, Lcom/ibm/icu/impl/UCharacterName;
invoke-direct {v1}, Lcom/ibm/icu/impl/UCharacterName;-><init>()V
sput-object v1, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterName;
:cond_b
:try_end_b
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_e
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_1c
sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterName;
return-object v1
:catch_e
move-exception v1
move-object v0, v1
new-instance v1, Ljava/util/MissingResourceException;
const-string v2, "Could not construct UCharacterName. Missing unames.icu"
const-string v3, ""
const-string v4, ""
invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:catch_1c
move-exception v1
move-object v0, v1
new-instance v1, Ljava/util/MissingResourceException;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
const-string v3, ""
const-string v4, ""
invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
.end method
.method private static getType(I)I
.registers 3
invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z
move-result v1
if-eqz v1, :cond_9
const/16 v1, 0x1e
:goto_8
return v1
:cond_9
invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v0
const/16 v1, 0x12
if-ne v0, v1, :cond_18
const v1, 0xdbff
if-gt p0, v1, :cond_1a
const/16 v0, 0x1f
:goto_18
:cond_18
move v1, v0
goto :goto_8
:cond_1a
const/16 v0, 0x20
goto :goto_18
.end method
.method private initNameSetsLengths()Z
.registers 6
const/4 v4, 0x1
iget v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
if-lez v2, :cond_7
move v2, v4
:goto_6
return v2
:cond_7
const-string v0, "0123456789ABCDEF<>-"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
sub-int v1, v2, v4
:goto_f
if-ltz v1, :cond_1d
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V
add-int/lit8 v1, v1, -0x1
goto :goto_f
:cond_1d
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->addAlgorithmName(I)I
move-result v2
iput v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
iget v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->addExtendedName(I)I
move-result v2
iput v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
iget v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(I)V
move v2, v4
goto :goto_6
.end method
.method public getAlgorithmEnd(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v0, v0, p1
#getter for: Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->access$100(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
move-result v0
return v0
.end method
.method public getAlgorithmLength()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
array-length v0, v0
return v0
.end method
.method public getAlgorithmName(II)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
monitor-enter v1
:try_start_4
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v3, 0x0
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I
move-result v4
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v2, v2, p1
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v2, p2, v3}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_21
move-exception v2
monitor-exit v1
:try_end_23
.catchall {:try_start_4 .. :try_end_23} :catchall_21
throw v2
.end method
.method public getAlgorithmStart(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v0, v0, p1
#getter for: Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->access$000(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
move-result v0
return v0
.end method
.method public getCharFromName(ILjava/lang/String;)I
.registers 9
const/4 v5, 0x1
const/4 v4, -0x1
const/4 v3, 0x3
if-ge p1, v3, :cond_d
if-eqz p2, :cond_d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_f
:cond_d
move v3, v4
:goto_e
return v3
:cond_f
invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-static {v3, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I
move-result v1
if-lt v1, v4, :cond_1b
move v3, v1
goto :goto_e
:cond_1b
invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v2
if-eq p1, v5, :cond_3c
const/4 v0, 0x0
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
if-eqz v3, :cond_29
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
array-length v0, v3
:cond_29
add-int/lit8 v0, v0, -0x1
:goto_2b
if-ltz v0, :cond_3c
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
aget-object v3, v3, v0
invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_39
move v3, v1
goto :goto_e
:cond_39
add-int/lit8 v0, v0, -0x1
goto :goto_2b
:cond_3c
const/4 v3, 0x2
if-ne p1, v3, :cond_4c
const/4 v3, 0x0
invoke-direct {p0, v2, v3}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I
move-result v1
if-ne v1, v4, :cond_4a
invoke-direct {p0, v2, v5}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I
move-result v1
:goto_4a
:cond_4a
move v3, v1
goto :goto_e
:cond_4c
invoke-direct {p0, v2, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I
move-result v1
goto :goto_4a
.end method
.method public getCharNameCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UCharacterName;->convert([ILcom/ibm/icu/text/UnicodeSet;)V
return-void
.end method
.method public getExtendedName(I)Ljava/lang/String;
.registers 5
const/4 v1, 0x0
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I
move-result v1
const/16 v2, 0xf
if-ne v1, v2, :cond_14
const/4 v1, 0x1
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;
move-result-object v0
:cond_14
if-nez v0, :cond_1a
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;
move-result-object v0
:cond_1a
return-object v0
.end method
.method public getExtendedOr10Name(I)Ljava/lang/String;
.registers 10
const/4 v1, 0x0
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I
move-result v4
const/16 v5, 0xf
if-ne v4, v5, :cond_e
const/4 v4, 0x1
invoke-virtual {p0, p1, v4}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;
move-result-object v1
:cond_e
if-nez v1, :cond_70
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I
move-result v2
sget-object v4, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
array-length v4, v4
if-lt v2, v4, :cond_58
const-string v1, "unknown"
:goto_1b
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
monitor-enter v4
:try_start_1e
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v6, 0x0
iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v7
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/16 v6, 0x3c
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/16 v6, 0x2d
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const/4 v5, 0x4
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v6
sub-int v3, v5, v6
:goto_4c
if-lez v3, :cond_5d
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/16 v6, 0x30
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:try_end_55
.catchall {:try_start_1e .. :try_end_55} :catchall_71
add-int/lit8 v3, v3, -0x1
goto :goto_4c
:cond_58
sget-object v4, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;
aget-object v1, v4, v2
goto :goto_1b
:cond_5d
:try_start_5d
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/16 v6, 0x3e
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
monitor-exit v4
:cond_70
return-object v1
:catchall_71
move-exception v5
monitor-exit v4
:try_end_73
.catchall {:try_start_5d .. :try_end_73} :catchall_71
throw v5
.end method
.method public getGroup(I)I
.registers 7
iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I
move-result v2
const/4 v3, 0x0
:goto_7
const/4 v4, 0x1
sub-int v4, v0, v4
if-ge v3, v4, :cond_1a
add-int v4, v3, v0
shr-int/lit8 v1, v4, 0x1
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupMSB(I)I
move-result v4
if-ge v2, v4, :cond_18
move v0, v1
goto :goto_7
:cond_18
move v3, v1
goto :goto_7
:cond_1a
return v3
.end method
.method public getGroupLengths(I[C[C)I
.registers 16
const v11, 0xffff
const/16 v10, 0x20
const/4 v9, 0x0
const v2, 0xffff
const/4 v0, 0x0
const/4 v3, 0x0
iget v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
mul-int/2addr p1, v6
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
add-int/lit8 v7, p1, 0x1
aget-char v6, v6, v7
iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
add-int/lit8 v8, p1, 0x2
aget-char v7, v7, v8
invoke-static {v6, v7}, Lcom/ibm/icu/impl/UCharacterUtility;->toInt(CC)I
move-result v5
aput-char v9, p2, v9
const/4 v1, 0x0
:goto_21
if-ge v1, v10, :cond_61
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
aget-byte v0, v6, v5
const/4 v4, 0x4
:goto_28
if-ltz v4, :cond_5e
shr-int v6, v0, v4
and-int/lit8 v6, v6, 0xf
int-to-byte v3, v6
if-ne v2, v11, :cond_3f
const/16 v6, 0xb
if-le v3, v6, :cond_3f
const/16 v6, 0xc
sub-int v6, v3, v6
shl-int/lit8 v6, v6, 0x4
int-to-char v2, v6
:goto_3c
add-int/lit8 v4, v4, -0x4
goto :goto_28
:cond_3f
if-eq v2, v11, :cond_5a
or-int v6, v2, v3
add-int/lit8 v6, v6, 0xc
int-to-char v6, v6
aput-char v6, p3, v1
:goto_48
if-ge v1, v10, :cond_54
add-int/lit8 v6, v1, 0x1
aget-char v7, p2, v1
aget-char v8, p3, v1
add-int/2addr v7, v8
int-to-char v7, v7
aput-char v7, p2, v6
:cond_54
const v2, 0xffff
add-int/lit8 v1, v1, 0x1
goto :goto_3c
:cond_5a
int-to-char v6, v3
aput-char v6, p3, v1
goto :goto_48
:cond_5e
add-int/lit8 v5, v5, 0x1
goto :goto_21
:cond_61
return v5
.end method
.method public getGroupMSB(I)I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
if-lt p1, v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
iget v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
mul-int/2addr v1, p1
aget-char v0, v0, v1
goto :goto_5
.end method
.method public declared-synchronized getGroupName(II)Ljava/lang/String;
.registers 9
monitor-enter p0
:try_start_1
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I
move-result v2
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroup(I)I
move-result v0
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
iget v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
mul-int/2addr v5, v0
aget-char v4, v4, v5
if-ne v2, v4, :cond_2b
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C
invoke-virtual {p0, v0, v4, v5}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I
move-result v1
and-int/lit8 v3, p1, 0x1f
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C
aget-char v4, v4, v3
add-int/2addr v4, v1
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C
aget-char v5, v5, v3
invoke-virtual {p0, v4, v5, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;
:try_end_28
.catchall {:try_start_1 .. :try_end_28} :catchall_2d
move-result-object v4
:goto_29
monitor-exit p0
return-object v4
:cond_2b
const/4 v4, 0x0
goto :goto_29
:catchall_2d
move-exception v4
monitor-exit p0
throw v4
.end method
.method public getGroupName(III)Ljava/lang/String;
.registers 15
const v10, 0xffff
const/4 v5, 0x3
const/16 v9, 0x3b
const/4 v4, 0x1
if-eq p3, v4, :cond_b
if-ne p3, v5, :cond_2e
:cond_b
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
array-length v4, v4
if-ge v9, v4, :cond_16
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
aget-char v4, v4, v9
if-ne v4, v10, :cond_60
:cond_16
move v2, p1
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
invoke-static {v4, p1, p2, v9}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I
move-result v4
add-int/2addr p1, v4
sub-int v4, p1, v2
sub-int/2addr p2, v4
if-ne p3, v5, :cond_2e
move v2, p1
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
invoke-static {v4, p1, p2, v9}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I
move-result v4
add-int/2addr p1, v4
sub-int v4, p1, v2
sub-int/2addr p2, v4
:goto_2e
:cond_2e
iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
monitor-enter v4
:try_start_31
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
const/4 v6, 0x0
iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v7
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
const/4 v1, 0x0
:goto_3e
if-ge v1, p2, :cond_4f
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
add-int v6, p1, v1
aget-byte v0, v5, v6
add-int/lit8 v1, v1, 0x1
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
array-length v5, v5
if-lt v0, v5, :cond_6b
if-ne v0, v9, :cond_62
:cond_4f
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I
move-result v5
if-lez v5, :cond_a8
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
monitor-exit v4
move-object v4, v5
:goto_5f
return-object v4
:cond_60
const/4 p2, 0x0
goto :goto_2e
:cond_62
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
goto :goto_3e
:catchall_68
move-exception v5
monitor-exit v4
:try_end_6a
.catchall {:try_start_31 .. :try_end_6a} :catchall_68
throw v5
:cond_6b
:try_start_6b
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
and-int/lit16 v6, v0, 0xff
aget-char v3, v5, v6
const v5, 0xfffe
if-ne v3, v5, :cond_87
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
shl-int/lit8 v6, v0, 0x8
iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
add-int v8, p1, v1
aget-byte v7, v7, v8
and-int/lit16 v7, v7, 0xff
or-int/2addr v6, v7
aget-char v3, v5, v6
add-int/lit8 v1, v1, 0x1
:cond_87
if-ne v3, v10, :cond_a0
if-ne v0, v9, :cond_97
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I
move-result v5
if-nez v5, :cond_4f
const/4 v5, 0x2
if-ne p3, v5, :cond_4f
goto :goto_3e
:cond_97
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
and-int/lit16 v6, v0, 0xff
int-to-char v6, v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_3e
:cond_a0
iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B
invoke-static {v5, v6, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
goto :goto_3e
:cond_a8
monitor-exit v4
:try_end_a9
.catchall {:try_start_6b .. :try_end_a9} :catchall_68
const/4 v4, 0x0
goto :goto_5f
.end method
.method public getISOCommentCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UCharacterName;->convert([ILcom/ibm/icu/text/UnicodeSet;)V
return-void
.end method
.method public getMaxCharNameLength()I
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public getMaxISOCommentLength()I
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxISOCommentLength_:I
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public getName(II)Ljava/lang/String;
.registers 5
if-ltz p1, :cond_a
const v1, 0x10ffff
if-gt p1, v1, :cond_a
const/4 v1, 0x3
if-le p2, v1, :cond_c
:cond_a
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_20
:cond_19
const/4 v1, 0x2
if-ne p2, v1, :cond_22
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;
move-result-object v0
:goto_20
:cond_20
move-object v1, v0
goto :goto_b
:cond_22
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;
move-result-object v0
goto :goto_20
.end method
.method  setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z
.registers 3
if-eqz p1, :cond_9
array-length v0, p1
if-eqz v0, :cond_9
iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method  setGroup([C[B)Z
.registers 4
if-eqz p1, :cond_10
if-eqz p2, :cond_10
array-length v0, p1
if-lez v0, :cond_10
array-length v0, p2
if-lez v0, :cond_10
iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C
iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method  setGroupCountSize(II)Z
.registers 4
if-lez p1, :cond_4
if-gtz p2, :cond_6
:cond_4
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I
iput p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I
const/4 v0, 0x1
goto :goto_5
.end method
.method  setToken([C[B)Z
.registers 4
if-eqz p1, :cond_10
if-eqz p2, :cond_10
array-length v0, p1
if-lez v0, :cond_10
array-length v0, p2
if-lez v0, :cond_10
iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C
iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method