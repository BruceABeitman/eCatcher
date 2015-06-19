.class public Lcom/ibm/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.field private static final MaxArg:I = 0x3b9ac9ff
.field private static final MaxExp:I = 0x3b9ac9ff
.field private static final MinArg:I = -0x3b9ac9ff
.field private static final MinExp:I = -0x3b9ac9ff
.field public static final ONE:Lcom/ibm/icu/math/BigDecimal; = null
.field public static final ROUND_CEILING:I = 0x2
.field public static final ROUND_DOWN:I = 0x1
.field public static final ROUND_FLOOR:I = 0x3
.field public static final ROUND_HALF_DOWN:I = 0x5
.field public static final ROUND_HALF_EVEN:I = 0x6
.field public static final ROUND_HALF_UP:I = 0x4
.field public static final ROUND_UNNECESSARY:I = 0x7
.field public static final ROUND_UP:I = 0x0
.field public static final TEN:Lcom/ibm/icu/math/BigDecimal; = null
.field public static final ZERO:Lcom/ibm/icu/math/BigDecimal; = null
.field private static bytecar:[B = null
.field private static bytedig:[B = null
.field private static final isneg:B = -0x1t
.field private static final ispos:B = 0x1t
.field private static final iszero:B = 0x0t
.field private static final plainMC:Lcom/ibm/icu/math/MathContext; = null
.field private static final serialVersionUID:J = 0x726d636b3a313030L
.field private exp:I
.field private form:B
.field private ind:B
.field private mant:[B
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
const-wide/16 v1, 0x1
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
const/16 v1, 0xa
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>(I)V
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;
new-instance v0, Lcom/ibm/icu/math/MathContext;
invoke-direct {v0, v3, v3}, Lcom/ibm/icu/math/MathContext;-><init>(II)V
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/16 v0, 0xbe
new-array v0, v0, [B
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B
invoke-static {}, Lcom/ibm/icu/math/BigDecimal;->diginit()[B
move-result-object v0
sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Number;-><init>()V
const/4 v0, 0x0
iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
return-void
.end method
.method public constructor <init>(D)V
.registers 4
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V
invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(I)V
.registers 9
const/16 v3, 0xa
const/4 v6, 0x0
const/4 v5, -0x1
const/4 v4, 0x1
invoke-direct {p0}, Ljava/lang/Number;-><init>()V
iput-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
const/4 v0, 0x0
const/16 v2, 0x9
if-gt p1, v2, :cond_4b
const/16 v2, -0x9
if-lt p1, v2, :cond_4b
if-nez p1, :cond_1e
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
iget-object v2, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
:cond_1d
:goto_1d
return-void
:cond_1e
if-ne p1, v4, :cond_29
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
iget-object v2, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_1d
:cond_29
if-ne p1, v5, :cond_34
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
iget-object v2, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-byte v5, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_1d
:cond_34
new-array v2, v4, [B
iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
if-lez p1, :cond_42
iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
int-to-byte v3, p1
aput-byte v3, v2, v6
iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_1d
:cond_42
iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
neg-int v3, p1
int-to-byte v3, v3
aput-byte v3, v2, v6
iput-byte v5, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_1d
:cond_4b
if-lez p1, :cond_71
iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int p1, p1
:goto_50
move v1, p1
const/16 v0, 0x9
:goto_53
div-int/lit8 v1, v1, 0xa
if-nez v1, :cond_74
sub-int v2, v3, v0
new-array v2, v2, [B
iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
sub-int v2, v3, v0
sub-int v0, v2, v4
:goto_61
iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
rem-int/lit8 v3, p1, 0xa
int-to-byte v3, v3
neg-int v3, v3
int-to-byte v3, v3
aput-byte v3, v2, v0
div-int/lit8 p1, p1, 0xa
if-eqz p1, :cond_1d
add-int/lit8 v0, v0, -0x1
goto :goto_61
:cond_71
iput-byte v5, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_50
:cond_74
add-int/lit8 v0, v0, -0x1
goto :goto_53
.end method
.method public constructor <init>(J)V
.registers 14
const/16 v10, 0x13
const/4 v5, 0x1
const/4 v4, 0x0
const-wide/16 v8, 0xa
const-wide/16 v6, 0x0
invoke-direct {p0}, Ljava/lang/Number;-><init>()V
iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
const/4 v0, 0x0
cmp-long v3, p1, v6
if-lez v3, :cond_37
iput-byte v5, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-long p1, p1
:goto_15
move-wide v1, p1
const/16 v0, 0x12
:goto_18
div-long/2addr v1, v8
cmp-long v3, v1, v6
if-nez v3, :cond_42
sub-int v3, v10, v0
new-array v3, v3, [B
iput-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
sub-int v3, v10, v0
sub-int v0, v3, v5
:goto_27
iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
rem-long v4, p1, v8
long-to-int v4, v4
int-to-byte v4, v4
neg-int v4, v4
int-to-byte v4, v4
aput-byte v4, v3, v0
div-long/2addr p1, v8
cmp-long v3, p1, v6
if-nez v3, :cond_45
return-void
:cond_37
cmp-long v3, p1, v6
if-nez v3, :cond_3e
iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_15
:cond_3e
const/4 v3, -0x1
iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_15
:cond_42
add-int/lit8 v0, v0, -0x1
goto :goto_18
:cond_45
add-int/lit8 v0, v0, -0x1
goto :goto_27
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>([CII)V
return-void
.end method
.method public constructor <init>(Ljava/math/BigDecimal;)V
.registers 3
invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/math/BigInteger;)V
.registers 3
const/16 v0, 0xa
invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/math/BigInteger;I)V
.registers 6
const/16 v0, 0xa
invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
if-gez p2, :cond_24
new-instance v0, Ljava/lang/NumberFormatException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Negative scale: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
neg-int v0, p2
iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
return-void
.end method
.method public constructor <init>([C)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>([CII)V
return-void
.end method
.method public constructor <init>([CII)V
.registers 28
invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V
const/16 v21, 0x0
move/from16 v0, v21
move-object/from16 v1, p0
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
const/4 v14, 0x0
const/16 v19, 0x0
const/4 v11, 0x0
const/16 v16, 0x0
const/4 v10, 0x0
const/4 v15, 0x0
const/16 v20, 0x0
const/4 v9, 0x0
const/16 v18, 0x0
if-gtz p3, :cond_1d
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_1d
const/16 v21, 0x1
move/from16 v0, v21
move-object/from16 v1, p0
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
aget-char v21, p1, p2
const/16 v22, 0x2d
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_67
add-int/lit8 p3, p3, -0x1
if-nez p3, :cond_36
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_36
const/16 v21, -0x1
move/from16 v0, v21
move-object/from16 v1, p0
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
add-int/lit8 p2, p2, 0x1
:cond_40
:goto_40
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v7, 0x0
const/4 v8, -0x1
const/16 v17, -0x1
move/from16 v2, p3
move/from16 v14, p2
:goto_4a
if-lez v2, :cond_155
aget-char v19, p1, v14
const/16 v21, 0x30
move/from16 v0, v19
move/from16 v1, v21
if-lt v0, v1, :cond_7b
const/16 v21, 0x39
move/from16 v0, v19
move/from16 v1, v21
if-gt v0, v1, :cond_7b
move/from16 v17, v14
add-int/lit8 v7, v7, 0x1
:goto_62
add-int/lit8 v2, v2, -0x1
add-int/lit8 v14, v14, 0x1
goto :goto_4a
:cond_67
aget-char v21, p1, p2
const/16 v22, 0x2b
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_40
add-int/lit8 p3, p3, -0x1
if-nez p3, :cond_78
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_78
add-int/lit8 p2, p2, 0x1
goto :goto_40
:cond_7b
const/16 v21, 0x2e
move/from16 v0, v19
move/from16 v1, v21
if-ne v0, v1, :cond_8b
if-ltz v8, :cond_88
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_88
sub-int v8, v14, p2
goto :goto_62
:cond_8b
const/16 v21, 0x65
move/from16 v0, v19
move/from16 v1, v21
if-eq v0, v1, :cond_aa
const/16 v21, 0x45
move/from16 v0, v19
move/from16 v1, v21
if-eq v0, v1, :cond_aa
invoke-static/range {v19 .. v19}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v21
if-nez v21, :cond_a4
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_a4
const/4 v12, 0x1
move/from16 v17, v14
add-int/lit8 v7, v7, 0x1
goto :goto_62
:cond_aa
sub-int v21, v14, p2
const/16 v22, 0x2
sub-int v22, p3, v22
move/from16 v0, v21
move/from16 v1, v22
if-le v0, v1, :cond_b9
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_b9
const/4 v11, 0x0
add-int/lit8 v21, v14, 0x1
aget-char v21, p1, v21
const/16 v22, 0x2d
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_124
const/4 v11, 0x1
add-int/lit8 v16, v14, 0x2
:goto_c9
sub-int v21, v16, p2
sub-int v10, p3, v21
if-nez v10, :cond_136
const/16 v21, 0x1
:goto_d1
const/16 v22, 0x9
move v0, v10
move/from16 v1, v22
if-le v0, v1, :cond_139
const/16 v22, 0x1
:goto_da
or-int v21, v21, v22
if-eqz v21, :cond_e1
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_e1
move v3, v10
move/from16 v15, v16
:goto_e4
if-lez v3, :cond_141
aget-char v20, p1, v15
const/16 v21, 0x30
move/from16 v0, v20
move/from16 v1, v21
if-ge v0, v1, :cond_f3
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_f3
const/16 v21, 0x39
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_13c
invoke-static/range {v20 .. v20}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v21
if-nez v21, :cond_104
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_104
const/16 v21, 0xa
invoke-static/range {v20 .. v21}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v9
if-gez v9, :cond_10f
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_10f
:goto_10f
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
mul-int/lit8 v21, v21, 0xa
add-int v21, v21, v9
move/from16 v0, v21
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v3, v3, -0x1
add-int/lit8 v15, v15, 0x1
goto :goto_e4
:cond_124
add-int/lit8 v21, v14, 0x1
aget-char v21, p1, v21
const/16 v22, 0x2b
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_133
add-int/lit8 v16, v14, 0x2
goto :goto_c9
:cond_133
add-int/lit8 v16, v14, 0x1
goto :goto_c9
:cond_136
const/16 v21, 0x0
goto :goto_d1
:cond_139
const/16 v22, 0x0
goto :goto_da
:cond_13c
const/16 v21, 0x30
sub-int v9, v20, v21
goto :goto_10f
:cond_141
if-eqz v11, :cond_154
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
move/from16 v0, v21
neg-int v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_154
const/4 v13, 0x1
:cond_155
if-nez v7, :cond_15a
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_15a
if-ltz v8, :cond_16c
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
add-int v21, v21, v8
sub-int v21, v21, v7
move/from16 v0, v21
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_16c
const/16 v21, 0x1
sub-int v4, v17, v21
move/from16 v14, p2
:goto_172
if-gt v14, v4, :cond_19c
aget-char v19, p1, v14
const/16 v21, 0x30
move/from16 v0, v19
move/from16 v1, v21
if-ne v0, v1, :cond_187
add-int/lit8 p2, p2, 0x1
add-int/lit8 v8, v8, -0x1
add-int/lit8 v7, v7, -0x1
:goto_184
add-int/lit8 v14, v14, 0x1
goto :goto_172
:cond_187
const/16 v21, 0x2e
move/from16 v0, v19
move/from16 v1, v21
if-ne v0, v1, :cond_194
add-int/lit8 p2, p2, 0x1
add-int/lit8 v8, v8, -0x1
goto :goto_184
:cond_194
const/16 v21, 0x39
move/from16 v0, v19
move/from16 v1, v21
if-gt v0, v1, :cond_1d5
:cond_19c
move v0, v7
new-array v0, v0, [B
move-object/from16 v21, v0
move-object/from16 v0, v21
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move/from16 v15, p2
if-eqz v12, :cond_200
move v5, v7
const/4 v14, 0x0
:goto_1ad
if-lez v5, :cond_222
if-ne v14, v8, :cond_1b3
add-int/lit8 v15, v15, 0x1
:cond_1b3
aget-char v20, p1, v15
const/16 v21, 0x39
move/from16 v0, v20
move/from16 v1, v21
if-gt v0, v1, :cond_1e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v21, v0
const/16 v22, 0x30
sub-int v22, v20, v22
move/from16 v0, v22
int-to-byte v0, v0
move/from16 v22, v0
aput-byte v22, v21, v14
:goto_1ce
add-int/lit8 v15, v15, 0x1
add-int/lit8 v5, v5, -0x1
add-int/lit8 v14, v14, 0x1
goto :goto_1ad
:cond_1d5
const/16 v21, 0xa
move/from16 v0, v19
move/from16 v1, v21
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v21
if-nez v21, :cond_19c
add-int/lit8 p2, p2, 0x1
add-int/lit8 v8, v8, -0x1
add-int/lit8 v7, v7, -0x1
goto :goto_184
:cond_1e8
const/16 v21, 0xa
invoke-static/range {v20 .. v21}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v9
if-gez v9, :cond_1f3
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
:cond_1f3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v21, v0
move v0, v9
int-to-byte v0, v0
move/from16 v22, v0
aput-byte v22, v21, v14
goto :goto_1ce
:cond_200
move v6, v7
const/4 v14, 0x0
:goto_202
if-lez v6, :cond_222
if-ne v14, v8, :cond_208
add-int/lit8 v15, v15, 0x1
:cond_208
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v21, v0
aget-char v22, p1, v15
const/16 v23, 0x30
sub-int v22, v22, v23
move/from16 v0, v22
int-to-byte v0, v0
move/from16 v22, v0
aput-byte v22, v21, v14
add-int/lit8 v15, v15, 0x1
add-int/lit8 v6, v6, -0x1
add-int/lit8 v14, v14, 0x1
goto :goto_202
:cond_222
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v21, v0
const/16 v22, 0x0
aget-byte v21, v21, v22
if-nez v21, :cond_25f
const/16 v21, 0x0
move/from16 v0, v21
move-object/from16 v1, p0
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
if-lez v21, :cond_246
const/16 v21, 0x0
move/from16 v0, v21
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_246
if-eqz v13, :cond_25e
sget-object v21, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
move-object/from16 v0, v21
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v21, v0
move-object/from16 v0, v21
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/16 v21, 0x0
move/from16 v0, v21
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_25e
:goto_25e
return-void
:cond_25f
if-eqz v13, :cond_25e
const/16 v21, 0x1
move/from16 v0, v21
move-object/from16 v1, p0
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v22, v0
move-object/from16 v0, v22
array-length v0, v0
move/from16 v22, v0
add-int v21, v21, v22
const/16 v22, 0x1
sub-int v18, v21, v22
const v21, -0x3b9ac9ff
move/from16 v0, v18
move/from16 v1, v21
if-ge v0, v1, :cond_29e
const/16 v21, 0x1
:goto_28b
const v22, 0x3b9ac9ff
move/from16 v0, v18
move/from16 v1, v22
if-le v0, v1, :cond_2a1
const/16 v22, 0x1
:goto_296
or-int v21, v21, v22
if-eqz v21, :cond_25e
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V
goto :goto_25e
:cond_29e
const/16 v21, 0x0
goto :goto_28b
:cond_2a1
const/16 v22, 0x0
goto :goto_296
.end method
.method private static final allzero([BI)Z
.registers 6
const/4 v3, 0x1
const/4 v1, 0x0
if-gez p1, :cond_5
const/4 p1, 0x0
:cond_5
array-length v2, p0
sub-int v0, v2, v3
move v1, p1
:goto_9
if-gt v1, v0, :cond_14
aget-byte v2, p0, v1
if-eqz v2, :cond_11
const/4 v2, 0x0
:goto_10
return v2
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_14
move v2, v3
goto :goto_10
.end method
.method private bad([C)V
.registers 5
new-instance v0, Ljava/lang/NumberFormatException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Not a number: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private badarg(Ljava/lang/String;ILjava/lang/String;)V
.registers 7
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad argument "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "to"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static final byteaddsub([BI[BIIZ)[B
.registers 16
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
array-length v0, p0
array-length v1, p2
const/4 v2, 0x1
sub-int/2addr p1, v2
const/4 v2, 0x1
sub-int/2addr p3, v2
move v2, p3
if-ge v2, p1, :cond_ad
move v2, p1
move v5, v2
:goto_e
const/4 v2, 0x0
check-cast v2, [B
if-eqz p5, :cond_18
add-int/lit8 v6, v5, 0x1
if-ne v6, v0, :cond_18
move-object v2, p0
:cond_18
if-nez v2, :cond_aa
add-int/lit8 v2, v5, 0x1
new-array v2, v2, [B
move-object v8, v2
:goto_1f
const/4 v2, 0x0
const/4 v6, 0x1
if-ne p4, v6, :cond_4c
const/4 v2, 0x1
move v7, v2
:goto_25
const/4 v2, 0x0
move v6, v5
:goto_27
if-ltz v6, :cond_68
if-ltz p1, :cond_32
if-ge p1, v0, :cond_30
aget-byte v9, p0, p1
add-int/2addr v2, v9
:cond_30
add-int/lit8 p1, p1, -0x1
:cond_32
if-ltz p3, :cond_3f
if-ge p3, v1, :cond_3d
if-eqz v7, :cond_56
if-lez p4, :cond_52
aget-byte v9, p2, p3
add-int/2addr v2, v9
:goto_3d
:cond_3d
add-int/lit8 p3, p3, -0x1
:cond_3f
const/16 v9, 0xa
if-ge v2, v9, :cond_5b
if-ltz v2, :cond_5b
int-to-byte v2, v2
aput-byte v2, v8, v6
const/4 v2, 0x0
:goto_49
add-int/lit8 v6, v6, -0x1
goto :goto_27
:cond_4c
const/4 v6, -0x1
if-ne p4, v6, :cond_a7
const/4 v2, 0x1
move v7, v2
goto :goto_25
:cond_52
aget-byte v9, p2, p3
sub-int/2addr v2, v9
goto :goto_3d
:cond_56
aget-byte v9, p2, p3
mul-int/2addr v9, p4
add-int/2addr v2, v9
goto :goto_3d
:cond_5b
add-int/lit8 v3, v2, 0x5a
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B
aget-byte v2, v2, v3
aput-byte v2, v8, v6
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B
aget-byte v2, v2, v3
goto :goto_49
:cond_68
if-nez v2, :cond_6d
move p0, v4
move-object p1, v8
:goto_6c
return-object p1
:cond_6d
const/4 p1, 0x0
check-cast p1, [B
if-eqz p5, :cond_a5
add-int/lit8 p2, v5, 0x2
array-length p3, p0
if-ne p2, p3, :cond_a5
move-object p0, p0
:goto_78
if-nez p0, :cond_a3
add-int/lit8 p0, v5, 0x2
new-array p0, p0, [B
move-object p2, p0
:goto_7f
const/4 p0, 0x0
int-to-byte p1, v2
aput-byte p1, p2, p0
const/16 p0, 0xa
if-ge v5, p0, :cond_9a
add-int/lit8 p0, v5, 0x1
const/4 p1, 0x0
:goto_8a
if-lez p0, :cond_97
add-int/lit8 p3, p1, 0x1
aget-byte p4, v8, p1
aput-byte p4, p2, p3
add-int/lit8 p0, p0, -0x1
add-int/lit8 p1, p1, 0x1
goto :goto_8a
:cond_97
move p0, p1
:goto_98
move-object p1, p2
goto :goto_6c
:cond_9a
const/4 p0, 0x0
const/4 p1, 0x1
add-int/lit8 p3, v5, 0x1
invoke-static {v8, p0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move p0, v4
goto :goto_98
:cond_a3
move-object p2, p0
goto :goto_7f
:cond_a5
move-object p0, p1
goto :goto_78
:cond_a7
move v7, v2
goto/16 :goto_25
:cond_aa
move-object v8, v2
goto/16 :goto_1f
:cond_ad
move v5, v2
goto/16 :goto_e
.end method
.method private checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
.registers 6
if-nez p2, :cond_3
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v0, v0
if-le v0, p2, :cond_2d
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2d
new-instance v0, Ljava/lang/ArithmeticException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Too many digits: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
if-eqz p1, :cond_2
iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v0, v0
if-le v0, p2, :cond_2
iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2
new-instance v0, Ljava/lang/ArithmeticException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Too many digits: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static final clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v0}, Lcom/ibm/icu/math/BigDecimal;-><init>()V
iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->form:B
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
return-object v0
.end method
.method private static final diginit()[B
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
const/16 v3, 0xbe
new-array v2, v3, [B
const/4 v1, 0x0
:goto_7
const/16 v3, 0xbd
if-gt v1, v3, :cond_32
const/16 v3, 0x5a
sub-int v0, v1, v3
if-ltz v0, :cond_20
rem-int/lit8 v3, v0, 0xa
int-to-byte v3, v3
aput-byte v3, v2, v1
sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B
div-int/lit8 v4, v0, 0xa
int-to-byte v4, v4
aput-byte v4, v3, v1
:goto_1d
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_20
add-int/lit8 v0, v0, 0x64
rem-int/lit8 v3, v0, 0xa
int-to-byte v3, v3
aput-byte v3, v2, v1
sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B
div-int/lit8 v4, v0, 0xa
const/16 v5, 0xa
sub-int/2addr v4, v5
int-to-byte v4, v4
aput-byte v4, v3, v1
goto :goto_1d
:cond_32
return-object v2
.end method
.method private dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
.registers 37
const/16 v30, 0x0
const/16 v18, 0x0
const/16 v31, 0x0
const/4 v15, 0x0
const/16 v21, 0x0
const/16 v29, 0x0
const/16 v26, 0x0
const/16 v16, 0x0
const/16 v25, 0x0
const/16 v19, 0x0
const/4 v13, 0x0
const/16 v24, 0x0
move-object/from16 v0, p3
iget-boolean v0, v0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
move v9, v0
if-eqz v9, :cond_2a
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move v9, v0
move-object/from16 v0, p0
move-object/from16 v1, p2
move v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_2a
move-object/from16 v20, p0
move-object/from16 v0, p2
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v9, v0
if-nez v9, :cond_3b
new-instance v9, Ljava/lang/ArithmeticException;
const-string v10, "Divide by 0"
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_3b
move-object/from16 v0, v20
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v9, v0
if-nez v9, :cond_5e
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/math/MathContext;->form:I
move v9, v0
if-eqz v9, :cond_4c
sget-object v9, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
:goto_4b
return-object v9
:cond_4c
const/4 v9, -0x1
move/from16 v0, p4
move v1, v9
if-ne v0, v1, :cond_55
move-object/from16 v9, v20
goto :goto_4b
:cond_55
move-object/from16 v0, v20
move/from16 v1, p4
invoke-virtual {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->setScale(I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto :goto_4b
:cond_5e
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move/from16 v27, v0
if-lez v27, :cond_bf
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move v0, v9
move/from16 v1, v27
if-le v0, v1, :cond_7c
invoke-static/range {v20 .. v20}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
move-object v0, v9
move-object/from16 v1, p3
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v20
:cond_7c
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move v0, v9
move/from16 v1, v27
if-le v0, v1, :cond_92
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
move-object v0, v9
move-object/from16 v1, p3
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object p2
:cond_92
:goto_92
move-object/from16 v0, v20
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
sub-int/2addr v9, v10
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v10, v0
array-length v10, v10
add-int/2addr v9, v10
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v10, v0
array-length v10, v10
sub-int v22, v9, v10
if-gez v22, :cond_130
const/16 v9, 0x44
move/from16 v0, p1
move v1, v9
if-eq v0, v1, :cond_130
const/16 v9, 0x49
move/from16 v0, p1
move v1, v9
if-ne v0, v1, :cond_121
sget-object v9, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
goto :goto_4b
:cond_bf
const/4 v9, -0x1
move/from16 v0, p4
move v1, v9
if-ne v0, v1, :cond_c9
invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/math/BigDecimal;->scale()I
move-result p4
:cond_c9
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move-object v0, v9
array-length v0, v0
move/from16 v27, v0
move-object/from16 v0, v20
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
neg-int v9, v9
move/from16 v0, p4
move v1, v9
if-eq v0, v1, :cond_e6
add-int v9, v27, p4
move-object/from16 v0, v20
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
add-int v27, v9, v10
:cond_e6
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
const/4 v10, 0x1
sub-int/2addr v9, v10
sub-int v9, v27, v9
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
sub-int v27, v9, v10
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move/from16 v0, v27
move v1, v9
if-ge v0, v1, :cond_10b
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move-object v0, v9
array-length v0, v0
move/from16 v27, v0
:cond_10b
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move/from16 v0, v27
move v1, v9
if-ge v0, v1, :cond_92
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move-object v0, v9
array-length v0, v0
move/from16 v27, v0
goto/16 :goto_92
:cond_121
invoke-static/range {v20 .. v20}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
const/4 v10, 0x0
move-object v0, v9
move-object/from16 v1, p3
move v2, v10
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto/16 :goto_4b
:cond_130
new-instance v28, Lcom/ibm/icu/math/BigDecimal;
invoke-direct/range {v28 .. v28}, Lcom/ibm/icu/math/BigDecimal;-><init>()V
move-object/from16 v0, v20
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v9, v0
move-object/from16 v0, p2
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v10, v0
mul-int/2addr v9, v10
int-to-byte v9, v9
move v0, v9
move-object/from16 v1, v28
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v0, v22
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v9, v27, 0x1
new-array v9, v9, [B
move-object v0, v9
move-object/from16 v1, v28
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
add-int v9, v27, v27
add-int/lit8 v23, v9, 0x1
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move-object v0, v9
move/from16 v1, v23
invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v5
move/from16 v6, v23
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v7, v0
move/from16 v8, v23
const/4 v9, 0x0
aget-byte v9, v7, v9
mul-int/lit8 v9, v9, 0xa
add-int/lit8 v14, v9, 0x1
array-length v9, v7
const/4 v10, 0x1
if-le v9, v10, :cond_17d
const/4 v9, 0x1
aget-byte v9, v7, v9
add-int/2addr v14, v9
:cond_17d
const/16 v17, 0x0
:goto_17f
const/16 v30, 0x0
:cond_181
:goto_181
if-ge v6, v8, :cond_1cb
:cond_183
if-eqz v17, :cond_24e
const/4 v9, 0x1
:goto_186
if-eqz v30, :cond_251
const/4 v10, 0x1
:goto_189
or-int/2addr v9, v10
if-eqz v9, :cond_259
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move/from16 v0, v30
int-to-byte v0, v0
move v10, v0
aput-byte v10, v9, v17
add-int/lit8 v17, v17, 0x1
add-int/lit8 v9, v27, 0x1
move/from16 v0, v17
move v1, v9
if-ne v0, v1, :cond_254
:cond_1a0
:goto_1a0
if-nez v17, :cond_1a4
const/16 v17, 0x1
:cond_1a4
const/16 v9, 0x49
move/from16 v0, p1
move v1, v9
if-ne v0, v1, :cond_284
const/4 v9, 0x1
:goto_1ac
const/16 v10, 0x52
move/from16 v0, p1
move v1, v10
if-ne v0, v1, :cond_287
const/4 v10, 0x1
:goto_1b4
or-int/2addr v9, v10
if-eqz v9, :cond_347
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
add-int v9, v9, v17
move v0, v9
move/from16 v1, v27
if-le v0, v1, :cond_28a
new-instance v9, Ljava/lang/ArithmeticException;
const-string v10, "Integer overflow"
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_1cb
if-ne v6, v8, :cond_23c
move v11, v6
const/16 v18, 0x0
:goto_1d0
if-lez v11, :cond_227
array-length v9, v7
move/from16 v0, v18
move v1, v9
if-ge v0, v1, :cond_21f
aget-byte v31, v7, v18
:goto_1da
aget-byte v9, v5, v18
move v0, v9
move/from16 v1, v31
if-lt v0, v1, :cond_183
aget-byte v9, v5, v18
move v0, v9
move/from16 v1, v31
if-le v0, v1, :cond_222
const/4 v9, 0x0
aget-byte v15, v5, v9
:goto_1eb
:cond_1eb
mul-int/lit8 v9, v15, 0xa
div-int v21, v9, v14
if-nez v21, :cond_1f3
const/16 v21, 0x1
:cond_1f3
add-int v30, v30, v21
move/from16 v0, v21
neg-int v0, v0
move v9, v0
const/4 v10, 0x1
invoke-static/range {v5 .. v10}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B
move-result-object v5
const/4 v9, 0x0
aget-byte v9, v5, v9
if-nez v9, :cond_181
const/4 v9, 0x2
sub-int v12, v6, v9
const/16 v29, 0x0
:goto_208
move/from16 v0, v29
move v1, v12
if-gt v0, v1, :cond_211
aget-byte v9, v5, v29
if-eqz v9, :cond_249
:cond_211
if-eqz v29, :cond_181
const/4 v9, 0x0
move-object v0, v5
move/from16 v1, v29
move-object v2, v5
move v3, v9
move v4, v6
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto/16 :goto_181
:cond_21f
const/16 v31, 0x0
goto :goto_1da
:cond_222
add-int/lit8 v11, v11, -0x1
add-int/lit8 v18, v18, 0x1
goto :goto_1d0
:cond_227
add-int/lit8 v30, v30, 0x1
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move/from16 v0, v30
int-to-byte v0, v0
move v10, v0
aput-byte v10, v9, v17
add-int/lit8 v17, v17, 0x1
const/4 v9, 0x0
const/4 v10, 0x0
aput-byte v10, v5, v9
goto/16 :goto_1a0
:cond_23c
const/4 v9, 0x0
aget-byte v9, v5, v9
mul-int/lit8 v15, v9, 0xa
const/4 v9, 0x1
if-le v6, v9, :cond_1eb
const/4 v9, 0x1
aget-byte v9, v5, v9
add-int/2addr v15, v9
goto :goto_1eb
:cond_249
add-int/lit8 v6, v6, -0x1
add-int/lit8 v29, v29, 0x1
goto :goto_208
:cond_24e
const/4 v9, 0x0
goto/16 :goto_186
:cond_251
const/4 v10, 0x0
goto/16 :goto_189
:cond_254
const/4 v9, 0x0
aget-byte v9, v5, v9
if-eqz v9, :cond_1a0
:cond_259
if-ltz p4, :cond_266
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
neg-int v9, v9
move v0, v9
move/from16 v1, p4
if-gt v0, v1, :cond_1a0
:cond_266
const/16 v9, 0x44
move/from16 v0, p1
move v1, v9
if-eq v0, v1, :cond_274
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
if-lez v9, :cond_1a0
:cond_274
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
const/4 v10, 0x1
sub-int/2addr v9, v10
move v0, v9
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v8, v8, -0x1
goto/16 :goto_17f
:cond_284
const/4 v9, 0x0
goto/16 :goto_1ac
:cond_287
const/4 v10, 0x0
goto/16 :goto_1b4
:cond_28a
const/16 v9, 0x52
move/from16 v0, p1
move v1, v9
if-ne v0, v1, :cond_367
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
const/4 v10, 0x0
aget-byte v9, v9, v10
if-nez v9, :cond_2aa
invoke-static/range {v20 .. v20}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
const/4 v10, 0x0
move-object v0, v9
move-object/from16 v1, p3
move v2, v10
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto/16 :goto_4b
:cond_2aa
const/4 v9, 0x0
aget-byte v9, v5, v9
if-nez v9, :cond_2b3
sget-object v9, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
goto/16 :goto_4b
:cond_2b3
move-object/from16 v0, v20
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v9, v0
move v0, v9
move-object/from16 v1, v28
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
add-int v9, v27, v27
add-int/lit8 v9, v9, 0x1
move-object/from16 v0, v20
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v10, v0
array-length v10, v10
sub-int v26, v9, v10
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
sub-int v9, v9, v26
move-object/from16 v0, v20
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
add-int/2addr v9, v10
move v0, v9
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v16, v6
const/4 v9, 0x1
sub-int v18, v16, v9
:goto_2e0
const/4 v9, 0x1
move/from16 v0, v18
move v1, v9
if-lt v0, v1, :cond_303
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
move-object/from16 v0, v20
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
if-ge v9, v10, :cond_32e
const/4 v9, 0x1
:goto_2f3
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v11, v0
if-ge v10, v11, :cond_330
const/4 v10, 0x1
:goto_300
and-int/2addr v9, v10
if-nez v9, :cond_332
:cond_303
array-length v9, v5
move/from16 v0, v16
move v1, v9
if-ge v0, v1, :cond_31d
move/from16 v0, v16
new-array v0, v0, [B
move-object/from16 v25, v0
const/4 v9, 0x0
const/4 v10, 0x0
move-object v0, v5
move v1, v9
move-object/from16 v2, v25
move v3, v10
move/from16 v4, v16
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v5, v25
:cond_31d
move-object v0, v5
move-object/from16 v1, v28
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/4 v9, 0x0
move-object/from16 v0, v28
move-object/from16 v1, p3
move v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto/16 :goto_4b
:cond_32e
const/4 v9, 0x0
goto :goto_2f3
:cond_330
const/4 v10, 0x0
goto :goto_300
:cond_332
aget-byte v9, v5, v18
if-nez v9, :cond_303
add-int/lit8 v16, v16, -0x1
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
add-int/lit8 v9, v9, 0x1
move v0, v9
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v18, v18, -0x1
goto :goto_2e0
:cond_347
const/4 v9, 0x0
aget-byte v9, v5, v9
if-eqz v9, :cond_367
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
const/4 v10, 0x1
sub-int v10, v17, v10
aget-byte v19, v9, v10
rem-int/lit8 v9, v19, 0x5
if-nez v9, :cond_367
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
const/4 v10, 0x1
sub-int v10, v17, v10
add-int/lit8 v11, v19, 0x1
int-to-byte v11, v11
aput-byte v11, v9, v10
:cond_367
if-ltz p4, :cond_3dc
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move/from16 v0, v17
move v1, v9
if-eq v0, v1, :cond_387
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v10, v0
array-length v10, v10
sub-int v10, v10, v17
sub-int/2addr v9, v10
move v0, v9
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_387
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v10, v0
neg-int v10, v10
sub-int v10, v10, p4
sub-int v13, v9, v10
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/math/MathContext;->roundingMode:I
move v9, v0
move-object/from16 v0, v28
move v1, v13
move v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
move/from16 v0, p4
neg-int v0, v0
move v10, v0
if-eq v9, v10, :cond_3d0
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v10, v0
array-length v10, v10
add-int/lit8 v10, v10, 0x1
invoke-static {v9, v10}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v9
move-object v0, v9
move-object/from16 v1, v28
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, v28
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v9, v0
const/4 v10, 0x1
sub-int/2addr v9, v10
move v0, v9
move-object/from16 v1, v28
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_3d0
const/4 v9, 0x1
move-object/from16 v0, v28
move-object/from16 v1, p3
move v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto/16 :goto_4b
:cond_3dc
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
array-length v9, v9
move/from16 v0, v17
move v1, v9
if-ne v0, v1, :cond_3fc
move-object/from16 v0, v28
move-object/from16 v1, p3
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move/from16 v17, v27
:goto_3f0
const/4 v9, 0x1
move-object/from16 v0, v28
move-object/from16 v1, p3
move v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto/16 :goto_4b
:cond_3fc
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
const/4 v10, 0x0
aget-byte v9, v9, v10
if-nez v9, :cond_40a
sget-object v9, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
goto/16 :goto_4b
:cond_40a
move/from16 v0, v17
new-array v0, v0, [B
move-object/from16 v24, v0
move-object/from16 v0, v28
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v9, v0
const/4 v10, 0x0
const/4 v11, 0x0
move-object v0, v9
move v1, v10
move-object/from16 v2, v24
move v3, v11
move/from16 v4, v17
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v0, v24
move-object/from16 v1, v28
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
goto :goto_3f0
.end method
.method private static final extend([BI)[B
.registers 5
const/4 v2, 0x0
array-length v1, p0
if-ne v1, p1, :cond_6
move-object v1, p0
:goto_5
return-object v1
:cond_6
new-array v0, p1, [B
array-length v1, p0
invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v1, v0
goto :goto_5
.end method
.method private finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
.registers 15
const v11, 0x3b9ac9ff
const v10, -0x3b9ac9ff
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v5, 0x0
iget v6, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-eqz v6, :cond_1b
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v6, v6
iget v7, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-le v6, v7, :cond_1b
invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
:cond_1b
if-eqz p2, :cond_3c
iget v6, p1, Lcom/ibm/icu/math/MathContext;->form:I
if-eqz v6, :cond_3c
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v6
sub-int v2, v1, v9
:goto_26
if-lt v2, v9, :cond_2e
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v6, v6, v2
if-eqz v6, :cond_78
:cond_2e
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v6, v6
if-ge v1, v6, :cond_3c
new-array v4, v1, [B
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
:cond_3c
iput-byte v8, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v0, v6
const/4 v2, 0x0
:goto_42
if-lez v0, :cond_c9
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v6, v6, v2
if-eqz v6, :cond_c3
if-lez v2, :cond_5d
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v6, v6
sub-int/2addr v6, v2
new-array v4, v6, [B
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v7, v7
sub-int/2addr v7, v2
invoke-static {v6, v2, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
:cond_5d
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v7, v7
add-int v3, v6, v7
if-lez v3, :cond_83
iget v6, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-le v3, v6, :cond_73
iget v6, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-eqz v6, :cond_73
iget v6, p1, Lcom/ibm/icu/math/MathContext;->form:I
int-to-byte v6, v6
iput-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
:cond_73
sub-int v6, v3, v9
if-gt v6, v11, :cond_8b
:goto_77
:cond_77
return-object p0
:cond_78
add-int/lit8 v1, v1, -0x1
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v6, v6, 0x1
iput v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v2, v2, -0x1
goto :goto_26
:cond_83
const/4 v6, -0x5
if-ge v3, v6, :cond_8b
iget v6, p1, Lcom/ibm/icu/math/MathContext;->form:I
int-to-byte v6, v6
iput-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
:cond_8b
add-int/lit8 v3, v3, -0x1
if-ge v3, v10, :cond_bf
move v6, v9
:goto_90
if-le v3, v11, :cond_c1
move v7, v9
:goto_93
or-int/2addr v6, v7
if-eqz v6, :cond_77
iget-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
const/4 v7, 0x2
if-ne v6, v7, :cond_a6
rem-int/lit8 v5, v3, 0x3
if-gez v5, :cond_a1
add-int/lit8 v5, v5, 0x3
:cond_a1
sub-int/2addr v3, v5
if-lt v3, v10, :cond_a6
if-le v3, v11, :cond_77
:cond_a6
new-instance v6, Ljava/lang/ArithmeticException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Exponent Overflow: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v6
:cond_bf
move v6, v8
goto :goto_90
:cond_c1
move v7, v8
goto :goto_93
:cond_c3
add-int/lit8 v0, v0, -0x1
add-int/lit8 v2, v2, 0x1
goto/16 :goto_42
:cond_c9
iput-byte v8, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget v6, p1, Lcom/ibm/icu/math/MathContext;->form:I
if-eqz v6, :cond_d8
iput v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_d1
:goto_d1
sget-object v6, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
iget-object v6, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
goto :goto_77
:cond_d8
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-lez v6, :cond_df
iput v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_d1
:cond_df
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ge v6, v10, :cond_d1
new-instance v6, Ljava/lang/ArithmeticException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Exponent Overflow: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v6
.end method
.method private intcheck(II)I
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I
move-result v0
if-ge v0, p1, :cond_28
move v1, v3
:goto_9
if-le v0, p2, :cond_c
move v2, v3
:cond_c
or-int/2addr v1, v2
if-eqz v1, :cond_2a
new-instance v1, Ljava/lang/ArithmeticException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Conversion overflow: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v1
:cond_28
move v1, v2
goto :goto_9
:cond_2a
return v0
.end method
.method private layout()[C
.registers 24
const/4 v12, 0x0
const/16 v17, 0x0
const/4 v11, 0x0
const/16 v18, 0x0
const/4 v10, 0x0
const/16 v16, 0x0
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v19, v0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v19, v0
move/from16 v0, v19
new-array v0, v0, [C
move-object v9, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v19, v0
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
const/4 v12, 0x0
:goto_25
if-lez v5, :cond_3d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v19, v0
aget-byte v19, v19, v12
add-int/lit8 v19, v19, 0x30
move/from16 v0, v19
int-to-char v0, v0
move/from16 v19, v0
aput-char v19, v9, v12
add-int/lit8 v5, v5, -0x1
add-int/lit8 v12, v12, 0x1
goto :goto_25
:cond_3d
move-object/from16 v0, p0
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->form:B
move/from16 v19, v0
if-eqz v19, :cond_15f
new-instance v17, Ljava/lang/StringBuffer;
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
add-int/lit8 v19, v19, 0xf
move-object/from16 v0, v17
move/from16 v1, v19
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
move-object/from16 v0, p0
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v19, v0
const/16 v20, -0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_6b
const/16 v19, 0x2d
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_6b
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v19, v0
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
add-int v19, v19, v20
const/16 v20, 0x1
sub-int v11, v19, v20
move-object/from16 v0, p0
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->form:B
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_fe
const/16 v19, 0x0
aget-char v19, v9, v19
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-le v0, v1, :cond_be
const/16 v19, 0x2e
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v19
const/16 v20, 0x1
move-object v0, v9
array-length v0, v0
move/from16 v21, v0
const/16 v22, 0x1
sub-int v21, v21, v22
move-object/from16 v0, v19
move-object v1, v9
move/from16 v2, v20
move/from16 v3, v21
invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
:goto_be
:cond_be
if-eqz v11, :cond_dc
if-gez v11, :cond_15b
const/16 v10, 0x2d
neg-int v11, v11
:goto_c5
const/16 v19, 0x45
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v19
move-object/from16 v0, v19
move v1, v10
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v19
move-object/from16 v0, v19
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
:cond_dc
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I
move-result v19
move/from16 v0, v19
new-array v0, v0, [C
move-object/from16 v16, v0
const/16 v19, 0x0
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I
move-result v20
const/16 v21, 0x0
move-object/from16 v0, v17
move/from16 v1, v19
move/from16 v2, v20
move-object/from16 v3, v16
move/from16 v4, v21
invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->getChars(Ljava/lang/StringBuffer;II[CI)V
move-object/from16 v19, v16
:goto_fd
return-object v19
:cond_fe
rem-int/lit8 v18, v11, 0x3
if-gez v18, :cond_104
add-int/lit8 v18, v18, 0x3
:cond_104
sub-int v11, v11, v18
add-int/lit8 v18, v18, 0x1
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
move/from16 v0, v18
move/from16 v1, v19
if-lt v0, v1, :cond_136
const/16 v19, 0x0
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
move-object/from16 v0, v17
move-object v1, v9
move/from16 v2, v19
move/from16 v3, v20
invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
sub-int v6, v18, v19
:goto_128
if-lez v6, :cond_be
const/16 v19, 0x30
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v6, v6, -0x1
goto :goto_128
:cond_136
const/16 v19, 0x0
move-object/from16 v0, v17
move-object v1, v9
move/from16 v2, v19
move/from16 v3, v18
invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
move-result-object v19
const/16 v20, 0x2e
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v19
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
sub-int v20, v20, v18
move-object/from16 v0, v19
move-object v1, v9
move/from16 v2, v18
move/from16 v3, v20
invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
goto/16 :goto_be
:cond_15b
const/16 v10, 0x2b
goto/16 :goto_c5
:cond_15f
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v19, v0
if-nez v19, :cond_19c
move-object/from16 v0, p0
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v19, v0
if-ltz v19, :cond_172
move-object/from16 v19, v9
goto :goto_fd
:cond_172
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
add-int/lit8 v19, v19, 0x1
move/from16 v0, v19
new-array v0, v0, [C
move-object/from16 v16, v0
const/16 v19, 0x0
const/16 v20, 0x2d
aput-char v20, v16, v19
const/16 v19, 0x0
const/16 v20, 0x1
move-object v0, v9
array-length v0, v0
move/from16 v21, v0
move-object v0, v9
move/from16 v1, v19
move-object/from16 v2, v16
move/from16 v3, v20
move/from16 v4, v21
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v19, v16
goto/16 :goto_fd
:cond_19c
move-object/from16 v0, p0
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v19, v0
const/16 v20, -0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_1f0
const/16 v19, 0x1
move/from16 v15, v19
:goto_1ae
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v19, v0
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
add-int v14, v19, v20
const/16 v19, 0x1
move v0, v14
move/from16 v1, v19
if-ge v0, v1, :cond_20f
add-int/lit8 v19, v15, 0x2
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v20, v0
sub-int v13, v19, v20
move v0, v13
new-array v0, v0, [C
move-object/from16 v16, v0
if-eqz v15, :cond_1d8
const/16 v19, 0x0
const/16 v20, 0x2d
aput-char v20, v16, v19
:cond_1d8
const/16 v19, 0x30
aput-char v19, v16, v15
add-int/lit8 v19, v15, 0x1
const/16 v20, 0x2e
aput-char v20, v16, v19
neg-int v7, v14
add-int/lit8 v12, v15, 0x2
:goto_1e5
if-lez v7, :cond_1f5
const/16 v19, 0x30
aput-char v19, v16, v12
add-int/lit8 v7, v7, -0x1
add-int/lit8 v12, v12, 0x1
goto :goto_1e5
:cond_1f0
const/16 v19, 0x0
move/from16 v15, v19
goto :goto_1ae
:cond_1f5
const/16 v19, 0x0
add-int/lit8 v20, v15, 0x2
sub-int v20, v20, v14
move-object v0, v9
array-length v0, v0
move/from16 v21, v0
move-object v0, v9
move/from16 v1, v19
move-object/from16 v2, v16
move/from16 v3, v20
move/from16 v4, v21
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v19, v16
goto/16 :goto_fd
:cond_20f
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
move v0, v14
move/from16 v1, v19
if-le v0, v1, :cond_253
add-int v13, v15, v14
move v0, v13
new-array v0, v0, [C
move-object/from16 v16, v0
if-eqz v15, :cond_227
const/16 v19, 0x0
const/16 v20, 0x2d
aput-char v20, v16, v19
:cond_227
const/16 v19, 0x0
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
move-object v0, v9
move/from16 v1, v19
move-object/from16 v2, v16
move v3, v15
move/from16 v4, v20
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
sub-int v8, v14, v19
move-object v0, v9
array-length v0, v0
move/from16 v19, v0
add-int v12, v15, v19
:goto_244
if-lez v8, :cond_24f
const/16 v19, 0x30
aput-char v19, v16, v12
add-int/lit8 v8, v8, -0x1
add-int/lit8 v12, v12, 0x1
goto :goto_244
:cond_24f
move-object/from16 v19, v16
goto/16 :goto_fd
:cond_253
add-int/lit8 v19, v15, 0x1
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
add-int v13, v19, v20
move v0, v13
new-array v0, v0, [C
move-object/from16 v16, v0
if-eqz v15, :cond_268
const/16 v19, 0x0
const/16 v20, 0x2d
aput-char v20, v16, v19
:cond_268
const/16 v19, 0x0
move-object v0, v9
move/from16 v1, v19
move-object/from16 v2, v16
move v3, v15
move v4, v14
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int v19, v15, v14
const/16 v20, 0x2e
aput-char v20, v16, v19
add-int v19, v15, v14
add-int/lit8 v19, v19, 0x1
move-object v0, v9
array-length v0, v0
move/from16 v20, v0
sub-int v20, v20, v14
move-object v0, v9
move v1, v14
move-object/from16 v2, v16
move/from16 v3, v19
move/from16 v4, v20
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v19, v16
goto/16 :goto_fd
.end method
.method private round(II)Lcom/ibm/icu/math/BigDecimal;
.registers 15
const/4 v3, 0x1
const/4 v1, 0x5
const/4 v11, 0x0
const/4 v5, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v0, v0
sub-int v6, v0, p1
if-gtz v6, :cond_e
:cond_d
return-object p0
:cond_e
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v0, v6
iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-byte v10, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
if-lez p1, :cond_5d
new-array v0, p1, [B
iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v9, v11, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v5, 0x1
aget-byte v7, v9, p1
:goto_25
const/4 v4, 0x0
const/4 v0, 0x4
if-ne p2, v0, :cond_6d
if-lt v7, v1, :cond_2c
move v4, v10
:goto_2c
:cond_2c
if-eqz v4, :cond_3b
iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-nez v0, :cond_f4
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
int-to-byte v0, v4
iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
:goto_3b
:cond_3b
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
const v1, 0x3b9ac9ff
if-le v0, v1, :cond_d
new-instance v0, Ljava/lang/ArithmeticException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Exponent Overflow: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5d
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-byte v11, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v5, 0x0
if-nez p1, :cond_6b
aget-byte v7, v9, v11
goto :goto_25
:cond_6b
const/4 v7, 0x0
goto :goto_25
:cond_6d
const/4 v0, 0x7
if-ne p2, v0, :cond_7e
invoke-static {v9, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/ArithmeticException;
const-string v1, "Rounding necessary"
invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7e
if-ne p2, v1, :cond_90
if-le v7, v1, :cond_84
move v4, v10
goto :goto_2c
:cond_84
if-ne v7, v1, :cond_2c
add-int/lit8 v0, p1, 0x1
invoke-static {v9, v0}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2c
move v4, v10
goto :goto_2c
:cond_90
const/4 v0, 0x6
if-ne p2, v0, :cond_b2
if-le v7, v1, :cond_97
move v4, v10
goto :goto_2c
:cond_97
if-ne v7, v1, :cond_2c
add-int/lit8 v0, p1, 0x1
invoke-static {v9, v0}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_a3
move v4, v10
goto :goto_2c
:cond_a3
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v1
sub-int/2addr v1, v3
aget-byte v0, v0, v1
rem-int/lit8 v0, v0, 0x2
if-ne v0, v3, :cond_2c
move v4, v10
goto/16 :goto_2c
:cond_b2
if-eq p2, v3, :cond_2c
if-nez p2, :cond_bf
invoke-static {v9, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2c
move v4, v10
goto/16 :goto_2c
:cond_bf
const/4 v0, 0x2
if-ne p2, v0, :cond_cd
if-lez v10, :cond_2c
invoke-static {v9, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2c
move v4, v10
goto/16 :goto_2c
:cond_cd
const/4 v0, 0x3
if-ne p2, v0, :cond_db
if-gez v10, :cond_2c
invoke-static {v9, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2c
move v4, v10
goto/16 :goto_2c
:cond_db
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad round value: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f4
iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v1, -0x1
if-ne v0, v1, :cond_fa
neg-int v4, v4
:cond_fa
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v1
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
iget-object v2, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static/range {v0 .. v5}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B
move-result-object v8
array-length v0, v8
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v1
if-le v0, v1, :cond_11d
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v1
invoke-static {v8, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto/16 :goto_3b
:cond_11d
iput-object v8, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
goto/16 :goto_3b
.end method
.method private round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 4
iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I
iget v1, p1, Lcom/ibm/icu/math/MathContext;->roundingMode:I
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public static valueOf(D)Lcom/ibm/icu/math/BigDecimal;
.registers 4
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
new-instance v1, Ljava/lang/Double;
invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static valueOf(J)Lcom/ibm/icu/math/BigDecimal;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->valueOf(JI)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public static valueOf(JI)Lcom/ibm/icu/math/BigDecimal;
.registers 8
const/4 v0, 0x0
const-wide/16 v2, 0x0
cmp-long v2, p0, v2
if-nez v2, :cond_d
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
:goto_9
if-nez p2, :cond_25
move-object v1, v0
:goto_c
return-object v1
:cond_d
const-wide/16 v2, 0x1
cmp-long v2, p0, v2
if-nez v2, :cond_16
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
goto :goto_9
:cond_16
const-wide/16 v2, 0xa
cmp-long v2, p0, v2
if-nez v2, :cond_1f
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;
goto :goto_9
:cond_1f
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v0, p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
goto :goto_9
:cond_25
if-gez p2, :cond_40
new-instance v2, Ljava/lang/NumberFormatException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Negative scale: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v2
:cond_40
invoke-static {v0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
neg-int v2, p2
iput v2, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object v1, v0
goto :goto_c
.end method
.method public abs()Lcom/ibm/icu/math/BigDecimal;
.registers 2
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->abs(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public abs(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 4
iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v1, -0x1
if-ne v0, v1, :cond_a
invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
:goto_9
return-object v0
:cond_a
invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
goto :goto_9
.end method
.method public add(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 25
const/16 v16, 0x0
const/16 v20, 0x0
const/4 v7, 0x0
const/16 v19, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
move-object/from16 v0, p2
iget-boolean v0, v0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
move v8, v0
if-eqz v8, :cond_21
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move v8, v0
move-object/from16 v0, p0
move-object/from16 v1, p1
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_21
move-object/from16 v15, p0
iget-byte v8, v15, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-nez v8, :cond_33
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->form:I
move v8, v0
if-eqz v8, :cond_33
invoke-virtual/range {p1 .. p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
:goto_32
return-object v8
:cond_33
move-object/from16 v0, p1
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v8, v0
if-nez v8, :cond_49
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->form:I
move v8, v0
if-eqz v8, :cond_49
move-object v0, v15
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
goto :goto_32
:cond_49
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move/from16 v17, v0
if-lez v17, :cond_7a
iget-object v8, v15, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v8, v8
move v0, v8
move/from16 v1, v17
if-le v0, v1, :cond_64
invoke-static {v15}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
move-object v0, v8
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v15
:cond_64
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v8, v0
array-length v8, v8
move v0, v8
move/from16 v1, v17
if-le v0, v1, :cond_7a
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
move-object v0, v8
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object p1
:cond_7a
new-instance v18, Lcom/ibm/icu/math/BigDecimal;
invoke-direct/range {v18 .. v18}, Lcom/ibm/icu/math/BigDecimal;-><init>()V
iget-object v3, v15, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v8, v15, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v8
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v5, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v8, v0
array-length v6, v8
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v21, v0
move v0, v8
move/from16 v1, v21
if-ne v0, v1, :cond_e3
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:goto_a3
:cond_a3
iget-byte v8, v15, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-nez v8, :cond_208
const/4 v8, 0x1
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
:goto_ad
iget-byte v8, v15, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/16 v17, -0x1
move v0, v8
move/from16 v1, v17
if-ne v0, v1, :cond_211
const/4 v8, 0x1
:goto_b7
move-object/from16 v0, p1
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v17, v0
const/16 v21, -0x1
move/from16 v0, v17
move/from16 v1, v21
if-ne v0, v1, :cond_214
const/16 v17, 0x1
:goto_c7
move v0, v8
move/from16 v1, v17
if-ne v0, v1, :cond_218
const/4 v7, 0x1
:cond_cd
:goto_cd
const/4 v8, 0x0
invoke-static/range {v3 .. v8}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B
move-result-object v8
move-object v0, v8
move-object/from16 v1, v18
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/4 v8, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p2
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
goto/16 :goto_32
:cond_e3
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v16, v0
move v0, v8
move/from16 v1, v16
if-le v0, v1, :cond_178
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v8, v4
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v16, v0
sub-int v16, v8, v16
add-int v8, v6, v17
add-int/lit8 v8, v8, 0x1
move/from16 v0, v16
move v1, v8
if-lt v0, v1, :cond_146
if-lez v17, :cond_146
move-object v0, v3
move-object/from16 v1, v18
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-byte v8, v15, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v0, v4
move/from16 v1, v17
if-ge v0, v1, :cond_13a
iget-object v8, v15, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v0, v8
move/from16 v1, v17
invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v8
move-object v0, v8
move-object/from16 v1, v18
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
sub-int v17, v17, v4
sub-int v8, v8, v17
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_13a
const/4 v8, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p2
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
goto/16 :goto_32
:cond_146
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v8, v17, 0x1
move/from16 v0, v16
move v1, v8
if-le v0, v1, :cond_16f
if-lez v17, :cond_16f
sub-int v8, v16, v17
const/16 v16, 0x1
sub-int v20, v8, v16
sub-int v6, v6, v20
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
add-int v8, v8, v20
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v16, v17, 0x1
:cond_16f
move/from16 v0, v16
move v1, v4
if-le v0, v1, :cond_a3
move/from16 v4, v16
goto/16 :goto_a3
:cond_178
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
add-int/2addr v8, v6
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v16, v0
sub-int v16, v8, v16
add-int v8, v4, v17
add-int/lit8 v8, v8, 0x1
move/from16 v0, v16
move v1, v8
if-lt v0, v1, :cond_1d9
if-lez v17, :cond_1d9
move-object v0, v5
move-object/from16 v1, v18
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object/from16 v0, p1
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v8, v0
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v0, v6
move/from16 v1, v17
if-ge v0, v1, :cond_1cd
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v8, v0
move-object v0, v8
move/from16 v1, v17
invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v8
move-object v0, v8
move-object/from16 v1, v18
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
sub-int v17, v17, v6
sub-int v8, v8, v17
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_1cd
const/4 v8, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p2
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v8
goto/16 :goto_32
:cond_1d9
iget v8, v15, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v8, v17, 0x1
move/from16 v0, v16
move v1, v8
if-le v0, v1, :cond_1ff
if-lez v17, :cond_1ff
sub-int v8, v16, v17
const/16 v16, 0x1
sub-int v20, v8, v16
sub-int v4, v4, v20
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v8, v0
add-int v8, v8, v20
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/lit8 v16, v17, 0x1
:cond_1ff
move/from16 v0, v16
move v1, v6
if-le v0, v1, :cond_a3
move/from16 v6, v16
goto/16 :goto_a3
:cond_208
iget-byte v8, v15, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto/16 :goto_ad
:cond_211
const/4 v8, 0x0
goto/16 :goto_b7
:cond_214
const/16 v17, 0x0
goto/16 :goto_c7
:cond_218
const/4 v7, -0x1
move-object/from16 v0, p1
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v8, v0
if-eqz v8, :cond_cd
if-ge v4, v6, :cond_248
const/4 v8, 0x1
:goto_223
move-object v0, v15
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v17, v0
if-nez v17, :cond_24a
const/16 v17, 0x1
:goto_22c
or-int v8, v8, v17
if-eqz v8, :cond_24d
move-object/from16 v19, v3
move-object v3, v5
move-object/from16 v5, v19
move/from16 v20, v4
move v4, v6
move/from16 v6, v20
move-object/from16 v0, v18
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v8, v0
neg-int v8, v8
int-to-byte v8, v8
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto/16 :goto_cd
:cond_248
const/4 v8, 0x0
goto :goto_223
:cond_24a
const/16 v17, 0x0
goto :goto_22c
:cond_24d
if-gt v4, v6, :cond_cd
const/4 v13, 0x0
const/4 v14, 0x0
array-length v8, v3
const/4 v11, 0x1
sub-int v11, v8, v11
array-length v8, v5
const/4 v12, 0x1
sub-int v12, v8, v12
:goto_259
if-gt v13, v11, :cond_27d
aget-byte v9, v3, v13
:goto_25d
if-gt v14, v12, :cond_28c
aget-byte v10, v5, v14
:goto_261
if-eq v9, v10, :cond_28e
if-ge v9, v10, :cond_cd
move-object/from16 v19, v3
move-object v3, v5
move-object/from16 v5, v19
move/from16 v20, v4
move v4, v6
move/from16 v6, v20
move-object/from16 v0, v18
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v8, v0
neg-int v8, v8
int-to-byte v8, v8
move v0, v8
move-object/from16 v1, v18
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto/16 :goto_cd
:cond_27d
if-le v14, v12, :cond_28a
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->form:I
move v8, v0
if-eqz v8, :cond_cd
sget-object v8, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
goto/16 :goto_32
:cond_28a
const/4 v9, 0x0
goto :goto_25d
:cond_28c
const/4 v10, 0x0
goto :goto_261
:cond_28e
add-int/lit8 v13, v13, 0x1
add-int/lit8 v14, v14, 0x1
goto :goto_259
.end method
.method public byteValueExact()B
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I
move-result v0
const/16 v1, 0x7f
if-le v0, v1, :cond_30
move v1, v4
:goto_b
const/16 v2, -0x80
if-ge v0, v2, :cond_32
move v2, v4
:goto_10
or-int/2addr v1, v2
if-eqz v1, :cond_34
new-instance v1, Ljava/lang/ArithmeticException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Conversion overflow: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v1
:cond_30
move v1, v3
goto :goto_b
:cond_32
move v2, v3
goto :goto_10
:cond_34
int-to-byte v1, v0
return v1
.end method
.method public compareTo(Lcom/ibm/icu/math/BigDecimal;)I
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
move-result v0
return v0
.end method
.method public compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v3, 0x0
const/4 v1, 0x0
iget-boolean v4, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v4, :cond_d
iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-direct {p0, p1, v4}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_d
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget-byte v5, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-ne v4, v5, :cond_2b
move v4, v8
:goto_14
iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ne v5, v6, :cond_2d
move v5, v8
:goto_1b
and-int/2addr v4, v5
if-eqz v4, :cond_6f
iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v3, v4
iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
if-ge v3, v4, :cond_2f
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int v4, v4
int-to-byte v4, v4
:goto_2a
return v4
:cond_2b
move v4, v7
goto :goto_14
:cond_2d
move v5, v7
goto :goto_1b
:cond_2f
iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
if-le v3, v4, :cond_37
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_2a
:cond_37
iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I
if-gt v3, v4, :cond_57
move v4, v8
:goto_3c
iget v5, p2, Lcom/ibm/icu/math/MathContext;->digits:I
if-nez v5, :cond_59
move v5, v8
:goto_41
or-int/2addr v4, v5
if-eqz v4, :cond_7f
move v0, v3
const/4 v1, 0x0
:goto_46
if-lez v0, :cond_6d
iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v4, v4, v1
iget-object v5, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v5, v5, v1
if-ge v4, v5, :cond_5b
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int v4, v4
int-to-byte v4, v4
goto :goto_2a
:cond_57
move v4, v7
goto :goto_3c
:cond_59
move v5, v7
goto :goto_41
:cond_5b
iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v4, v4, v1
iget-object v5, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v5, v5, v1
if-le v4, v5, :cond_68
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_2a
:cond_68
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v1, 0x1
goto :goto_46
:cond_6d
move v4, v7
goto :goto_2a
:cond_6f
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget-byte v5, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-ge v4, v5, :cond_77
const/4 v4, -0x1
goto :goto_2a
:cond_77
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget-byte v5, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-le v4, v5, :cond_7f
move v4, v8
goto :goto_2a
:cond_7f
invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v2
iget-byte v4, v2, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int v4, v4
int-to-byte v4, v4
iput-byte v4, v2, Lcom/ibm/icu/math/BigDecimal;->ind:B
invoke-virtual {p0, v2, p2}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
iget-byte v4, v4, Lcom/ibm/icu/math/BigDecimal;->ind:B
goto :goto_2a
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/ibm/icu/math/BigDecimal;
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
move-result v0
return v0
.end method
.method public divide(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x44
sget-object v1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/4 v2, -0x1
invoke-direct {p0, v0, p1, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
.registers 6
const/4 v1, 0x0
new-instance v0, Lcom/ibm/icu/math/MathContext;
invoke-direct {v0, v1, v1, v1, p2}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
const/16 v1, 0x44
const/4 v2, -0x1
invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public divide(Lcom/ibm/icu/math/BigDecimal;II)Lcom/ibm/icu/math/BigDecimal;
.registers 8
const/4 v1, 0x0
if-gez p2, :cond_1c
new-instance v1, Ljava/lang/ArithmeticException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Negative scale: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1c
new-instance v0, Lcom/ibm/icu/math/MathContext;
invoke-direct {v0, v1, v1, v1, p3}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
const/16 v1, 0x44
invoke-direct {p0, v1, p1, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public divide(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x44
const/4 v1, -0x1
invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public divideInteger(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x49
sget-object v1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/4 v2, 0x0
invoke-direct {p0, v0, p1, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public divideInteger(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x49
const/4 v1, 0x0
invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public doubleValue()D
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 14
const/4 v11, 0x1
const/4 v10, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
if-nez p1, :cond_9
move v7, v10
:goto_8
return v7
:cond_9
instance-of v7, p1, Lcom/ibm/icu/math/BigDecimal;
if-nez v7, :cond_f
move v7, v10
goto :goto_8
:cond_f
move-object v0, p1
check-cast v0, Lcom/ibm/icu/math/BigDecimal;
move-object v6, v0
iget-byte v7, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget-byte v8, v6, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-eq v7, v8, :cond_1b
move v7, v10
goto :goto_8
:cond_1b
iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v7, v7
iget-object v8, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v8, v8
if-ne v7, v8, :cond_48
move v7, v11
:goto_24
iget v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget v9, v6, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ne v8, v9, :cond_4a
move v8, v11
:goto_2b
and-int/2addr v7, v8
iget-byte v8, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
iget-byte v9, v6, Lcom/ibm/icu/math/BigDecimal;->form:B
if-ne v8, v9, :cond_4c
move v8, v11
:goto_33
and-int/2addr v7, v8
if-eqz v7, :cond_53
iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v7
const/4 v3, 0x0
:goto_3a
if-lez v1, :cond_72
iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v7, v7, v3
iget-object v8, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v8, v8, v3
if-eq v7, v8, :cond_4e
move v7, v10
goto :goto_8
:cond_48
move v7, v10
goto :goto_24
:cond_4a
move v8, v10
goto :goto_2b
:cond_4c
move v8, v10
goto :goto_33
:cond_4e
add-int/lit8 v1, v1, -0x1
add-int/lit8 v3, v3, 0x1
goto :goto_3a
:cond_53
invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v4
invoke-direct {v6}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v5
array-length v7, v4
array-length v8, v5
if-eq v7, v8, :cond_61
move v7, v10
goto :goto_8
:cond_61
array-length v2, v4
const/4 v3, 0x0
:goto_63
if-lez v2, :cond_72
aget-char v7, v4, v3
aget-char v8, v5, v3
if-eq v7, v8, :cond_6d
move v7, v10
goto :goto_8
:cond_6d
add-int/lit8 v2, v2, -0x1
add-int/lit8 v3, v3, 0x1
goto :goto_63
:cond_72
move v7, v11
goto :goto_8
.end method
.method public floatValue()F
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
return v0
.end method
.method public format(II)Ljava/lang/String;
.registers 10
const/4 v3, -0x1
const/4 v5, 0x1
const/4 v6, 0x4
move-object v0, p0
move v1, p1
move v2, p2
move v4, v3
invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public format(IIIIII)Ljava/lang/String;
.registers 35
const/4 v15, 0x0
const/16 v23, 0x0
const/4 v14, 0x0
const/16 v18, 0x0
const/4 v12, 0x0
const/16 v16, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
const/16 v17, 0x0
const/4 v13, 0x0
const/16 v22, 0x0
const/16 v24, -0x1
move/from16 v0, p1
move/from16 v1, v24
if-ge v0, v1, :cond_12b
const/16 v24, 0x1
:goto_1c
if-nez p1, :cond_12f
const/16 v25, 0x1
:goto_20
or-int v24, v24, v25
if-eqz v24, :cond_37
const-string v24, "format"
const/16 v25, 0x1
invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_37
const/16 v24, -0x1
move/from16 v0, p2
move/from16 v1, v24
if-ge v0, v1, :cond_52
const-string v24, "format"
const/16 v25, 0x2
invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_52
const/16 v24, -0x1
move/from16 v0, p3
move/from16 v1, v24
if-ge v0, v1, :cond_133
const/16 v24, 0x1
:goto_5c
if-nez p3, :cond_137
const/16 v25, 0x1
:goto_60
or-int v24, v24, v25
if-eqz v24, :cond_77
const-string v24, "format"
const/16 v25, 0x3
invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_77
const/16 v24, -0x1
move/from16 v0, p4
move/from16 v1, v24
if-ge v0, v1, :cond_92
const-string v24, "format"
const/16 v25, 0x4
invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_92
const/16 v24, 0x1
move/from16 v0, p5
move/from16 v1, v24
if-ne v0, v1, :cond_13b
:goto_9a
:cond_9a
const/16 v24, 0x4
move/from16 v0, p6
move/from16 v1, v24
if-eq v0, v1, :cond_ac
const/16 v24, -0x1
move/from16 v0, p6
move/from16 v1, v24
if-ne v0, v1, :cond_164
const/16 p6, 0x4
:cond_ac
:goto_ac
invoke-static/range {p0 .. p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v19
const/16 v24, -0x1
move/from16 v0, p4
move/from16 v1, v24
if-ne v0, v1, :cond_193
const/16 v24, 0x0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
:goto_c0
if-ltz p2, :cond_db
:goto_c2
:cond_c2
move-object/from16 v0, v19
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->form:B
move/from16 v24, v0
if-nez v24, :cond_1e8
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
move/from16 v0, v24
neg-int v0, v0
move/from16 v23, v0
:goto_d5
move/from16 v0, v23
move/from16 v1, p2
if-ne v0, v1, :cond_249
:cond_db
:goto_db
invoke-direct/range {v19 .. v19}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v11
if-lez p1, :cond_32c
array-length v6, v11
const/16 v21, 0x0
:goto_e4
if-lez v6, :cond_f0
aget-char v24, v11, v21
const/16 v25, 0x2e
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_309
:cond_f0
move/from16 v0, v21
move/from16 v1, p1
if-le v0, v1, :cond_109
const-string v24, "format"
const/16 v25, 0x1
invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_109
move/from16 v0, v21
move/from16 v1, p1
if-ge v0, v1, :cond_32c
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
add-int v24, v24, p1
sub-int v24, v24, v21
move/from16 v0, v24
new-array v0, v0, [C
move-object/from16 v17, v0
sub-int v7, p1, v21
const/4 v13, 0x0
:goto_120
if-lez v7, :cond_319
const/16 v24, 0x20
aput-char v24, v17, v13
add-int/lit8 v7, v7, -0x1
add-int/lit8 v13, v13, 0x1
goto :goto_120
:cond_12b
const/16 v24, 0x0
goto/16 :goto_1c
:cond_12f
const/16 v25, 0x0
goto/16 :goto_20
:cond_133
const/16 v24, 0x0
goto/16 :goto_5c
:cond_137
const/16 v25, 0x0
goto/16 :goto_60
:cond_13b
const/16 v24, 0x2
move/from16 v0, p5
move/from16 v1, v24
if-eq v0, v1, :cond_9a
const/16 v24, -0x1
move/from16 v0, p5
move/from16 v1, v24
if-ne v0, v1, :cond_14f
const/16 p5, 0x1
goto/16 :goto_9a
:cond_14f
const-string v24, "format"
const/16 v25, 0x5
invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
goto/16 :goto_9a
:cond_164
:try_start_164
new-instance v24, Lcom/ibm/icu/math/MathContext;
const/16 v25, 0x9
const/16 v26, 0x1
const/16 v27, 0x0
move-object/from16 v0, v24
move/from16 v1, v25
move/from16 v2, v26
move/from16 v3, v27
move/from16 v4, p6
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
:try_end_179
.catch Ljava/lang/IllegalArgumentException; {:try_start_164 .. :try_end_179} :catch_17b
goto/16 :goto_ac
:catch_17b
move-exception v24
move-object/from16 v5, v24
const-string v24, "format"
const/16 v25, 0x6
invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
goto/16 :goto_ac
:cond_193
move-object/from16 v0, v19
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move/from16 v24, v0
if-nez v24, :cond_1a5
const/16 v24, 0x0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
goto/16 :goto_c0
:cond_1a5
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v25, v0
move-object/from16 v0, v25
array-length v0, v0
move/from16 v25, v0
add-int v15, v24, v25
move v0, v15
move/from16 v1, p4
if-le v0, v1, :cond_1ca
move/from16 v0, p5
int-to-byte v0, v0
move/from16 v24, v0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
goto/16 :goto_c0
:cond_1ca
const/16 v24, -0x5
move v0, v15
move/from16 v1, v24
if-ge v0, v1, :cond_1de
move/from16 v0, p5
int-to-byte v0, v0
move/from16 v24, v0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
goto/16 :goto_c0
:cond_1de
const/16 v24, 0x0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->form:B
goto/16 :goto_c0
:cond_1e8
move-object/from16 v0, v19
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->form:B
move/from16 v24, v0
const/16 v25, 0x1
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_207
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v24, v0
const/16 v25, 0x1
sub-int v23, v24, v25
goto/16 :goto_d5
:cond_207
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v25, v0
move-object/from16 v0, v25
array-length v0, v0
move/from16 v25, v0
add-int v24, v24, v25
const/16 v25, 0x1
sub-int v24, v24, v25
rem-int/lit8 v14, v24, 0x3
if-gez v14, :cond_224
add-int/lit8 v14, v14, 0x3
:cond_224
add-int/lit8 v14, v14, 0x1
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v24, v0
move v0, v14
move/from16 v1, v24
if-lt v0, v1, :cond_23a
const/16 v23, 0x0
goto/16 :goto_d5
:cond_23a
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v24, v0
sub-int v23, v24, v14
goto/16 :goto_d5
:cond_249
move/from16 v0, v23
move/from16 v1, p2
if-ge v0, v1, :cond_2ac
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v25, v0
move-object/from16 v0, v25
array-length v0, v0
move/from16 v25, v0
add-int v25, v25, p2
sub-int v25, v25, v23
invoke-static/range {v24 .. v25}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, v19
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
sub-int v25, p2, v23
sub-int v24, v24, v25
move/from16 v0, v24
move-object/from16 v1, v19
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
const v25, -0x3b9ac9ff
move/from16 v0, v24
move/from16 v1, v25
if-ge v0, v1, :cond_db
new-instance v24, Ljava/lang/ArithmeticException;
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "Exponent Overflow: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v26, v0
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-direct/range {v24 .. v25}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v24
:cond_2ac
sub-int v12, v23, p2
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v24, v0
move v0, v12
move/from16 v1, v24
if-le v0, v1, :cond_2de
sget-object v24, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
move-object/from16 v0, v24
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object/from16 v1, v19
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/16 v24, 0x0
move/from16 v0, v24
move-object/from16 v1, v19
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/16 v24, 0x0
move/from16 v0, v24
move-object/from16 v1, v19
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto/16 :goto_c2
:cond_2de
move-object/from16 v0, v19
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v24, v0
sub-int v16, v24, v12
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v20, v0
move-object/from16 v0, v19
move/from16 v1, v16
move/from16 v2, p6
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;
move-object/from16 v0, v19
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move/from16 v24, v0
sub-int v24, v24, v20
move/from16 v0, v24
move v1, v12
if-ne v0, v1, :cond_c2
goto/16 :goto_db
:cond_309
aget-char v24, v11, v21
const/16 v25, 0x45
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_f0
add-int/lit8 v6, v6, -0x1
add-int/lit8 v21, v21, 0x1
goto/16 :goto_e4
:cond_319
const/16 v24, 0x0
move-object v0, v11
array-length v0, v0
move/from16 v25, v0
move-object v0, v11
move/from16 v1, v24
move-object/from16 v2, v17
move v3, v13
move/from16 v4, v25
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v11, v17
:cond_32c
if-lez p3, :cond_383
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
const/16 v25, 0x1
sub-int v8, v24, v25
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
const/16 v25, 0x1
sub-int v21, v24, v25
:goto_33e
if-lez v8, :cond_34a
aget-char v24, v11, v21
const/16 v25, 0x45
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_37c
:cond_34a
if-nez v21, :cond_38c
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
add-int v24, v24, p3
add-int/lit8 v24, v24, 0x2
move/from16 v0, v24
new-array v0, v0, [C
move-object/from16 v17, v0
const/16 v24, 0x0
const/16 v25, 0x0
move-object v0, v11
array-length v0, v0
move/from16 v26, v0
move-object v0, v11
move/from16 v1, v24
move-object/from16 v2, v17
move/from16 v3, v25
move/from16 v4, v26
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v9, p3, 0x2
array-length v13, v11
:goto_371
if-lez v9, :cond_381
const/16 v24, 0x20
aput-char v24, v17, v13
add-int/lit8 v9, v9, -0x1
add-int/lit8 v13, v13, 0x1
goto :goto_371
:cond_37c
add-int/lit8 v8, v8, -0x1
add-int/lit8 v21, v21, -0x1
goto :goto_33e
:cond_381
move-object/from16 v11, v17
:goto_383
:cond_383
new-instance v24, Ljava/lang/String;
move-object/from16 v0, v24
move-object v1, v11
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
return-object v24
:cond_38c
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
sub-int v24, v24, v21
const/16 v25, 0x2
sub-int v22, v24, v25
move/from16 v0, v22
move/from16 v1, p3
if-le v0, v1, :cond_3af
const-string v24, "format"
const/16 v25, 0x3
invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
move-object/from16 v3, v26
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V
:cond_3af
move/from16 v0, v22
move/from16 v1, p3
if-ge v0, v1, :cond_383
move-object v0, v11
array-length v0, v0
move/from16 v24, v0
add-int v24, v24, p3
sub-int v24, v24, v22
move/from16 v0, v24
new-array v0, v0, [C
move-object/from16 v17, v0
const/16 v24, 0x0
const/16 v25, 0x0
add-int/lit8 v26, v21, 0x2
move-object v0, v11
move/from16 v1, v24
move-object/from16 v2, v17
move/from16 v3, v25
move/from16 v4, v26
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sub-int v10, p3, v22
add-int/lit8 v13, v21, 0x2
:goto_3d9
if-lez v10, :cond_3e4
const/16 v24, 0x30
aput-char v24, v17, v13
add-int/lit8 v10, v10, -0x1
add-int/lit8 v13, v13, 0x1
goto :goto_3d9
:cond_3e4
add-int/lit8 v24, v21, 0x2
move-object v0, v11
move/from16 v1, v24
move-object/from16 v2, v17
move v3, v13
move/from16 v4, v22
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v11, v17
goto :goto_383
.end method
.method public hashCode()I
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public intValue()I
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
move-result v0
return v0
.end method
.method public intValueExact()I
.registers 12
const/16 v10, 0x9
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v5, 0x0
const/4 v1, 0x0
const/4 v4, 0x0
iget-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-nez v6, :cond_d
move v6, v8
:goto_c
return v6
:cond_d
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v6, v6
sub-int v2, v6, v9
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-gez v6, :cond_57
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v2, v6
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
add-int/lit8 v7, v2, 0x1
invoke-static {v6, v7}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v6
if-nez v6, :cond_40
new-instance v6, Ljava/lang/ArithmeticException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Decimal part non-zero: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v6
:cond_40
if-gez v2, :cond_44
move v6, v8
goto :goto_c
:cond_44
const/4 v5, 0x0
:goto_45
const/4 v3, 0x0
add-int v0, v2, v5
const/4 v1, 0x0
:goto_49
if-gt v1, v0, :cond_7c
mul-int/lit8 v3, v3, 0xa
if-gt v1, v2, :cond_54
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v6, v6, v1
add-int/2addr v3, v6
:cond_54
add-int/lit8 v1, v1, 0x1
goto :goto_49
:cond_57
iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v6, v2
if-le v6, v10, :cond_79
new-instance v6, Ljava/lang/ArithmeticException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Conversion overflow: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v6
:cond_79
iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_45
:cond_7c
add-int v6, v2, v5
if-ne v6, v10, :cond_bb
const v6, 0x3b9aca00
div-int v4, v3, v6
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v6, v6, v8
if-eq v4, v6, :cond_bb
const/high16 v6, -0x8000
if-ne v3, v6, :cond_9e
iget-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v7, -0x1
if-ne v6, v7, :cond_9e
iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v6, v6, v8
const/4 v7, 0x2
if-ne v6, v7, :cond_9e
move v6, v3
goto/16 :goto_c
:cond_9e
new-instance v6, Ljava/lang/ArithmeticException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Conversion overflow: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v6
:cond_bb
iget-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-ne v6, v9, :cond_c2
move v6, v3
goto/16 :goto_c
:cond_c2
neg-int v6, v3
goto/16 :goto_c
.end method
.method public longValue()J
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public longValueExact()J
.registers 13
const/4 v1, 0x0
const/4 v8, 0x0
const/4 v2, 0x0
const-wide/16 v6, 0x0
iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-nez v9, :cond_c
const-wide/16 v9, 0x0
:goto_b
return-wide v9
:cond_c
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v9, v9
const/4 v10, 0x1
sub-int v3, v9, v10
iget v9, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-gez v9, :cond_5f
iget v9, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v3, v9
if-gez v3, :cond_41
const/4 v1, 0x0
:goto_1c
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v9, v1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v9
if-nez v9, :cond_44
new-instance v9, Ljava/lang/ArithmeticException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Decimal part non-zero: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_41
add-int/lit8 v1, v3, 0x1
goto :goto_1c
:cond_44
if-gez v3, :cond_49
const-wide/16 v9, 0x0
goto :goto_b
:cond_49
const/4 v8, 0x0
:goto_4a
const-wide/16 v4, 0x0
add-int v0, v3, v8
const/4 v2, 0x0
:goto_4f
if-gt v2, v0, :cond_89
const-wide/16 v9, 0xa
mul-long/2addr v4, v9
if-gt v2, v3, :cond_5c
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
aget-byte v9, v9, v2
int-to-long v9, v9
add-long/2addr v4, v9
:cond_5c
add-int/lit8 v2, v2, 0x1
goto :goto_4f
:cond_5f
iget v9, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
iget-object v10, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v10, v10
add-int/2addr v9, v10
const/16 v10, 0x12
if-le v9, v10, :cond_86
new-instance v9, Ljava/lang/ArithmeticException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Conversion overflow: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_86
iget v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_4a
:cond_89
add-int v9, v3, v8
const/16 v10, 0x12
if-ne v9, v10, :cond_d4
const-wide v9, 0xde0b6b3a7640000L
div-long v6, v4, v9
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/4 v10, 0x0
aget-byte v9, v9, v10
int-to-long v9, v9
cmp-long v9, v6, v9
if-eqz v9, :cond_d4
const-wide/high16 v9, -0x8000
cmp-long v9, v4, v9
if-nez v9, :cond_b7
iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v10, -0x1
if-ne v9, v10, :cond_b7
iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
const/4 v10, 0x0
aget-byte v9, v9, v10
const/16 v10, 0x9
if-ne v9, v10, :cond_b7
move-wide v9, v4
goto/16 :goto_b
:cond_b7
new-instance v9, Ljava/lang/ArithmeticException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Conversion overflow: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_d4
iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v10, 0x1
if-ne v9, v10, :cond_dc
move-wide v9, v4
goto/16 :goto_b
:cond_dc
neg-long v9, v4
goto/16 :goto_b
.end method
.method public max(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->max(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public max(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
move-result v0
if-ltz v0, :cond_b
invoke-virtual {p0, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
goto :goto_a
.end method
.method public min(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->min(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public min(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
move-result v0
if-gtz v0, :cond_b
invoke-virtual {p0, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
goto :goto_a
.end method
.method public movePointLeft(I)Lcom/ibm/icu/math/BigDecimal;
.registers 5
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
sub-int/2addr v1, p1
iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
sget-object v1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public movePointRight(I)Lcom/ibm/icu/math/BigDecimal;
.registers 5
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v1, p1
iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
sget-object v1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public multiply(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 20
const/4 v12, 0x0
const/4 v5, 0x0
const/4 v10, 0x0
const/4 v13, 0x0
const/4 v7, 0x0
move-object/from16 v0, p2
iget-boolean v0, v0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
move v4, v0
if-eqz v4, :cond_19
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move v4, v0
move-object/from16 v0, p0
move-object/from16 v1, p1
move v2, v4
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_19
move-object/from16 v11, p0
const/4 v14, 0x0
move-object/from16 v0, p2
iget v0, v0, Lcom/ibm/icu/math/MathContext;->digits:I
move v15, v0
if-lez v15, :cond_87
iget-object v4, v11, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
if-le v4, v15, :cond_33
invoke-static {v11}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v11
:cond_33
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v4, v0
array-length v4, v4
if-le v4, v15, :cond_46
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object p1
:goto_46
:cond_46
iget-object v4, v11, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v5, v0
array-length v5, v5
if-ge v4, v5, :cond_9c
iget-object v12, v11, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v5, v0
:goto_58
array-length v4, v12
array-length v6, v5
add-int/2addr v4, v6
const/4 v6, 0x1
sub-int v6, v4, v6
const/4 v4, 0x0
aget-byte v4, v12, v4
const/4 v8, 0x0
aget-byte v8, v5, v8
mul-int/2addr v4, v8
const/16 v8, 0x9
if-le v4, v8, :cond_a4
add-int/lit8 v10, v6, 0x1
:goto_6b
new-instance v16, Lcom/ibm/icu/math/BigDecimal;
invoke-direct/range {v16 .. v16}, Lcom/ibm/icu/math/BigDecimal;-><init>()V
new-array v3, v10, [B
array-length v9, v12
const/4 v13, 0x0
:goto_74
if-lez v9, :cond_a6
aget-byte v7, v12, v13
if-eqz v7, :cond_80
array-length v4, v3
const/4 v8, 0x1
invoke-static/range {v3 .. v8}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B
move-result-object v3
:cond_80
add-int/lit8 v6, v6, -0x1
add-int/lit8 v9, v9, -0x1
add-int/lit8 v13, v13, 0x1
goto :goto_74
:cond_87
iget v4, v11, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-lez v4, :cond_8e
iget v4, v11, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v14, v4
:cond_8e
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v4, v0
if-lez v4, :cond_46
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v4, v0
add-int/2addr v14, v4
goto :goto_46
:cond_9c
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
move-object v12, v0
iget-object v5, v11, Lcom/ibm/icu/math/BigDecimal;->mant:[B
goto :goto_58
:cond_a4
move v10, v6
goto :goto_6b
:cond_a6
iget-byte v4, v11, Lcom/ibm/icu/math/BigDecimal;->ind:B
move-object/from16 v0, p1
iget-byte v0, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
move v5, v0
mul-int/2addr v4, v5
int-to-byte v4, v4
move v0, v4
move-object/from16 v1, v16
iput-byte v0, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B
iget v4, v11, Lcom/ibm/icu/math/BigDecimal;->exp:I
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
move v5, v0
add-int/2addr v4, v5
sub-int/2addr v4, v14
move v0, v4
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-nez v14, :cond_d4
move-object v0, v3
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
:goto_c9
const/4 v4, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p2
move v2, v4
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
return-object v4
:cond_d4
array-length v4, v3
add-int/2addr v4, v14
invoke-static {v3, v4}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v4
move-object v0, v4
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
goto :goto_c9
.end method
.method public negate()Lcom/ibm/icu/math/BigDecimal;
.registers 2
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
iget-boolean v1, p1, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v1, :cond_c
const/4 v1, 0x0
check-cast v1, Lcom/ibm/icu/math/BigDecimal;
iget v2, p1, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-direct {p0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_c
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
iget-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int v1, v1
int-to-byte v1, v1
iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public plus()Lcom/ibm/icu/math/BigDecimal;
.registers 2
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 4
iget-boolean v0, p1, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v0, :cond_c
const/4 v0, 0x0
check-cast v0, Lcom/ibm/icu/math/BigDecimal;
iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_c
iget v0, p1, Lcom/ibm/icu/math/MathContext;->form:I
if-nez v0, :cond_23
iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
if-nez v0, :cond_23
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v0, v0
iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-gt v0, v1, :cond_1d
move-object v0, p0
:goto_1c
return-object v0
:cond_1d
iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I
if-nez v0, :cond_23
move-object v0, p0
goto :goto_1c
:cond_23
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
goto :goto_1c
.end method
.method public pow(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->pow(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public pow(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 15
const/4 v7, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
iget-boolean v9, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v9, :cond_c
iget v9, p2, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-direct {p0, p1, v9}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_c
const v9, -0x3b9ac9ff
const v10, 0x3b9ac9ff
invoke-direct {p1, v9, v10}, Lcom/ibm/icu/math/BigDecimal;->intcheck(II)I
move-result v3
move-object v2, p0
iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I
if-nez v4, :cond_4e
iget-byte v9, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B
const/4 v10, -0x1
if-ne v9, v10, :cond_3d
new-instance v9, Ljava/lang/ArithmeticException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Negative power: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_3d
const/4 v7, 0x0
:goto_3e
new-instance v8, Lcom/ibm/icu/math/MathContext;
iget v9, p2, Lcom/ibm/icu/math/MathContext;->form:I
const/4 v10, 0x0
iget v11, p2, Lcom/ibm/icu/math/MathContext;->roundingMode:I
invoke-direct {v8, v7, v9, v10, v11}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
sget-object v5, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
if-nez v3, :cond_8c
move-object v9, v5
:goto_4d
return-object v9
:cond_4e
iget-object v9, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v9, v9
iget v10, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v9, v10
if-le v9, v4, :cond_73
new-instance v9, Ljava/lang/ArithmeticException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Too many digits: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v9
:cond_73
iget-object v9, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v9, v9
if-le v9, v4, :cond_80
invoke-static {v2}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
invoke-direct {v9, p2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v2
:cond_80
iget-object v9, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v9, v9
iget v10, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int v0, v9, v10
add-int v9, v4, v0
add-int/lit8 v7, v9, 0x1
goto :goto_3e
:cond_8c
if-gez v3, :cond_8f
neg-int v3, v3
:cond_8f
const/4 v6, 0x0
const/4 v1, 0x1
:goto_91
add-int/2addr v3, v3
if-gez v3, :cond_99
const/4 v6, 0x1
invoke-virtual {v5, v2, v8}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v5
:cond_99
const/16 v9, 0x1f
if-ne v1, v9, :cond_ad
iget-byte v9, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B
if-gez v9, :cond_a7
sget-object v9, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;
invoke-virtual {v9, v5, v8}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v5
:cond_a7
const/4 v9, 0x1
invoke-direct {v5, p2, v9}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
move-result-object v9
goto :goto_4d
:cond_ad
if-nez v6, :cond_b2
:goto_af
add-int/lit8 v1, v1, 0x1
goto :goto_91
:cond_b2
invoke-virtual {v5, v5, v8}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v5
goto :goto_af
.end method
.method public remainder(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x52
sget-object v1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
const/4 v2, -0x1
invoke-direct {p0, v0, p1, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public remainder(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
const/16 v0, 0x52
const/4 v1, -0x1
invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public scale()I
.registers 2
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ltz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
neg-int v0, v0
goto :goto_5
.end method
.method public setScale(I)Lcom/ibm/icu/math/BigDecimal;
.registers 3
const/4 v0, 0x7
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->setScale(II)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public setScale(II)Lcom/ibm/icu/math/BigDecimal;
.registers 10
const/4 v2, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I
move-result v1
if-ne v1, p1, :cond_e
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
if-nez v4, :cond_e
move-object v4, p0
:goto_d
return-object v4
:cond_e
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
if-gt v1, p1, :cond_31
if-nez v1, :cond_2e
iget v4, v3, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int v2, v4, p1
:goto_1a
iget-object v4, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v5, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v5, v5
add-int/2addr v5, v2
invoke-static {v4, v5}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v4
iput-object v4, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
neg-int v4, p1
iput v4, v3, Lcom/ibm/icu/math/BigDecimal;->exp:I
:cond_29
:goto_29
const/4 v4, 0x0
iput-byte v4, v3, Lcom/ibm/icu/math/BigDecimal;->form:B
move-object v4, v3
goto :goto_d
:cond_2e
sub-int v2, p1, v1
goto :goto_1a
:cond_31
if-gez p1, :cond_4c
new-instance v4, Ljava/lang/ArithmeticException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Negative scale: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v4
:cond_4c
iget-object v4, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
sub-int v5, v1, p1
sub-int v0, v4, v5
invoke-direct {v3, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
iget v4, v3, Lcom/ibm/icu/math/BigDecimal;->exp:I
neg-int v5, p1
if-eq v4, v5, :cond_29
iget-object v4, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v5, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v5, v5
add-int/lit8 v5, v5, 0x1
invoke-static {v4, v5}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B
move-result-object v4
iput-object v4, v3, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget v4, v3, Lcom/ibm/icu/math/BigDecimal;->exp:I
const/4 v5, 0x1
sub-int/2addr v4, v5
iput v4, v3, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_29
.end method
.method public shortValueExact()S
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I
move-result v0
const/16 v1, 0x7fff
if-le v0, v1, :cond_30
move v1, v4
:goto_b
const/16 v2, -0x8000
if-ge v0, v2, :cond_32
move v2, v4
:goto_10
or-int/2addr v1, v2
if-eqz v1, :cond_34
new-instance v1, Ljava/lang/ArithmeticException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Conversion overflow: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v1
:cond_30
move v1, v3
goto :goto_b
:cond_32
move v2, v3
goto :goto_10
:cond_34
int-to-short v1, v0
return v1
.end method
.method public signum()I
.registers 2
iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B
return v0
.end method
.method public subtract(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
.registers 3
sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->subtract(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public subtract(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
.registers 5
iget-boolean v1, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v1, :cond_9
iget v1, p2, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-direct {p0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
:cond_9
invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
iget-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
neg-int v1, v1
int-to-byte v1, v1
iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v1
return-object v1
.end method
.method public toBigDecimal()Ljava/math/BigDecimal;
.registers 4
new-instance v0, Ljava/math/BigDecimal;
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I
move-result v2
invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V
return-object v0
.end method
.method public toBigInteger()Ljava/math/BigInteger;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ltz v3, :cond_22
move v3, v6
:goto_a
iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->form:B
if-nez v4, :cond_24
move v4, v6
:goto_f
and-int/2addr v3, v4
if-eqz v3, :cond_26
move-object v2, p0
:goto_13
new-instance v3, Ljava/math/BigInteger;
new-instance v4, Ljava/lang/String;
invoke-direct {v2}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
return-object v3
:cond_22
move v3, v5
goto :goto_a
:cond_24
move v4, v5
goto :goto_f
:cond_26
iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ltz v3, :cond_31
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v2
iput-byte v5, v2, Lcom/ibm/icu/math/BigDecimal;->form:B
goto :goto_13
:cond_31
iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
neg-int v3, v3
iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v4, v4
if-lt v3, v4, :cond_3c
sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;
goto :goto_13
:cond_3c
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v2
iget-object v3, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v3, v3
iget v4, v2, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int v0, v3, v4
new-array v1, v0, [B
iget-object v3, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iput-byte v5, v2, Lcom/ibm/icu/math/BigDecimal;->form:B
iput v5, v2, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_13
.end method
.method public toBigIntegerExact()Ljava/math/BigInteger;
.registers 4
iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-gez v0, :cond_2f
iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B
array-length v1, v1
iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
add-int/2addr v1, v2
invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/ArithmeticException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Decimal part non-zero: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public toCharArray()[C
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
return-object v0
.end method
.method public unscaledValue()Ljava/math/BigInteger;
.registers 3
const/4 v0, 0x0
iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I
if-ltz v1, :cond_b
move-object v0, p0
:goto_6
invoke-virtual {v0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v1
return-object v1
:cond_b
invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v0
const/4 v1, 0x0
iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I
goto :goto_6
.end method