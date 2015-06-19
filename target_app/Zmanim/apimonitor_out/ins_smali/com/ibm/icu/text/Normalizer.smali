.class public final Lcom/ibm/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"
.implements Ljava/lang/Cloneable;
.field public static final COMPARE_CODE_POINT_ORDER:I = 0x8000
.field public static final COMPARE_IGNORE_CASE:I = 0x10000
.field public static final COMPARE_NORM_OPTIONS_SHIFT:I = 0x14
.field private static final COMPAT_BIT:I = 0x1
.field public static final COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field private static final COMPOSE_BIT:I = 0x4
.field public static final COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final DECOMP:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field private static final DECOMP_BIT:I = 0x2
.field public static final DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final DONE:I = -0x1
.field public static final FCD:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final FOLD_CASE_DEFAULT:I = 0x0
.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1
.field public static final IGNORE_HANGUL:I = 0x1
.field public static final INPUT_IS_FCD:I = 0x20000
.field private static final MAX_BUF_SIZE_COMPOSE:I = 0x2
.field private static final MAX_BUF_SIZE_DECOMPOSE:I = 0x3
.field public static final MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult; = null
.field public static final NFC:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final NFD:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final NFKC:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final NFKD:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult; = null
.field public static final NONE:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final NO_OP:Lcom/ibm/icu/text/Normalizer$Mode; = null
.field public static final UNICODE_3_2:I = 0x20
.field public static final YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.field private buffer:[C
.field private bufferLimit:I
.field private bufferPos:I
.field private bufferStart:I
.field private currentIndex:I
.field private mode:Lcom/ibm/icu/text/Normalizer$Mode;
.field private nextIndex:I
.field private options:I
.field private text:Lcom/ibm/icu/text/UCharacterIterator;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ibm/icu/text/Normalizer$Mode;
invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$NFDMode;
invoke-direct {v0, v4, v2}, Lcom/ibm/icu/text/Normalizer$NFDMode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$NFKDMode;
const/4 v1, 0x3
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$NFKDMode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$NFCMode;
const/4 v1, 0x4
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$NFCMode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$NFKCMode;
const/4 v1, 0x5
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$NFKCMode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$FCDMode;
const/4 v1, 0x6
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$FCDMode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO_OP:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->DECOMP:Lcom/ibm/icu/text/Normalizer$Mode;
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;
sput-object v0, Lcom/ibm/icu/text/Normalizer;->DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
const/4 v1, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
invoke-direct {v0, v4, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
sput-object v0, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$Mode;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v1, 0x64
new-array v1, v1, [C
iput-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iput v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iput v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iput v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
sget-object v1, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
iput-object v1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput v2, p0, Lcom/ibm/icu/text/Normalizer;->options:I
:try_start_16
invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;
iput-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I
:try_end_22
.catch Ljava/lang/CloneNotSupportedException; {:try_start_16 .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v1
move-object v0, v1
new-instance v1, Ljava/lang/IllegalStateException;
invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x64
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->options:I
invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I
return-void
.end method
.method public constructor <init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/Normalizer$Mode;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x64
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->options:I
invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/CharacterIterator;
invoke-static {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I
return-void
.end method
.method static synthetic access$1000(Ljava/lang/String;I)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/text/Normalizer;->makeFCD(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1200(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/text/Normalizer;->getPrevNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
move-result-wide v0
return-wide v0
.end method
.method static synthetic access$1300(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/text/Normalizer;->getNextNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
move-result-wide v0
return-wide v0
.end method
.method private clearBuffer()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
return-void
.end method
.method public static compare(III)I
.registers 5
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p2}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static compare(ILjava/lang/String;I)I
.registers 4
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
.registers 10
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
move v4, v1
move v6, p2
invoke-static/range {v0 .. v6}, Lcom/ibm/icu/text/Normalizer;->compare([CII[CIII)I
move-result v0
return v0
.end method
.method public static compare([CII[CIII)I
.registers 8
invoke-static/range {p0 .. p6}, Lcom/ibm/icu/text/Normalizer;->internalCompare([CII[CIII)I
move-result v0
return v0
.end method
.method public static compare([C[CI)I
.registers 10
const/4 v1, 0x0
array-length v2, p0
array-length v5, p1
move-object v0, p0
move-object v3, p1
move v4, v1
move v6, p2
invoke-static/range {v0 .. v6}, Lcom/ibm/icu/text/Normalizer;->compare([CII[CIII)I
move-result v0
return v0
.end method
.method public static compose([CII[CIIZI)I
.registers 16
invoke-static {p7}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v7
and-int/lit16 p7, p7, -0x3100
if-eqz p6, :cond_a
or-int/lit16 p7, p7, 0x1000
:cond_a
move-object v0, p0
move v1, p1
move v2, p2
move-object v3, p3
move v4, p4
move v5, p5
move v6, p7
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/NormalizerImpl;->compose([CII[CIIILcom/ibm/icu/text/UnicodeSet;)I
move-result p0
sub-int p1, p5, p4
if-gt p0, p1, :cond_1a
return p0
:cond_1a
new-instance p1, Ljava/lang/IndexOutOfBoundsException;
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object p0
invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw p1
.end method
.method public static compose([C[CZI)I
.registers 13
const/4 v1, 0x0
invoke-static {p3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v7
and-int/lit16 p3, p3, -0x3100
if-eqz p2, :cond_b
or-int/lit16 p3, p3, 0x1000
:cond_b
array-length v2, p0
array-length v5, p1
move-object v0, p0
move-object v3, p1
move v4, v1
move v6, p3
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/NormalizerImpl;->compose([CII[CIIILcom/ibm/icu/text/UnicodeSet;)I
move-result v8
array-length v0, p1
if-gt v8, v0, :cond_19
return v8
:cond_19
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static compose(Ljava/lang/String;Z)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static compose(Ljava/lang/String;ZI)Ljava/lang/String;
.registers 12
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
mul-int/lit8 v2, v2, 0x2
new-array v3, v2, [C
const/4 v8, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-static {p2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v7
and-int/lit16 p2, p2, -0x3100
if-eqz p1, :cond_18
or-int/lit16 p2, p2, 0x1000
:goto_18
:cond_18
array-length v2, v0
array-length v5, v3
move v4, v1
move v6, p2
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/NormalizerImpl;->compose([CII[CIIILcom/ibm/icu/text/UnicodeSet;)I
move-result v8
array-length v2, v3
if-gt v8, v2, :cond_29
new-instance v2, Ljava/lang/String;
invoke-direct {v2, v3, v1, v8}, Ljava/lang/String;-><init>([CII)V
return-object v2
:cond_29
new-array v3, v8, [C
goto :goto_18
.end method
.method public static concatenate([CII[CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
.registers 32
if-nez p6, :cond_8
new-instance p0, Ljava/lang/IllegalArgumentException;
invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw p0
:cond_8
move-object/from16 v0, p3
move-object/from16 v1, p6
if-ne v0, v1, :cond_22
move/from16 v0, p4
move/from16 v1, p8
if-ge v0, v1, :cond_22
move/from16 v0, p7
move/from16 v1, p5
if-ge v0, v1, :cond_22
new-instance p0, Ljava/lang/IllegalArgumentException;
const-string p1, "overlapping right and dst ranges"
invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw p0
:cond_22
invoke-static/range {p0 .. p2}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result p1
move-object v0, v5
move/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
const/16 p1, 0x64
move/from16 v0, p1
new-array v0, v0, [C
move-object v6, v0
const/4 v7, 0x0
array-length v8, v6
const/4 v10, 0x0
const/4 v11, 0x0
move-object/from16 v9, p9
move/from16 v12, p10
invoke-static/range {v5 .. v12}, Lcom/ibm/icu/text/Normalizer;->previous(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
move-result v7
invoke-virtual {v5}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result p1
move-object v0, v6
array-length v0, v0
move/from16 p2, v0
move v0, v7
move/from16 v1, p2
if-le v0, v1, :cond_6d
move-object v0, v6
array-length v0, v0
move/from16 p2, v0
mul-int/lit8 p2, p2, 0x2
move/from16 v0, p2
new-array v0, v0, [C
move-object/from16 p2, v0
move-object/from16 v6, p2
const/16 p2, 0x0
const/16 p2, 0x0
move-object/from16 v0, p0
move/from16 v1, p1
move-object v2, v6
move/from16 v3, p2
move v4, v7
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_6d
invoke-static/range {p3 .. p5}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v5
move-object v0, v6
array-length v0, v0
move/from16 p2, v0
sub-int v8, p2, v7
const/4 v10, 0x0
const/4 v11, 0x0
move-object/from16 v9, p9
move/from16 v12, p10
invoke-static/range {v5 .. v12}, Lcom/ibm/icu/text/Normalizer;->next(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
move-result v5
move-object v0, v6
array-length v0, v0
move/from16 p2, v0
move v0, v7
move/from16 v1, p2
if-le v0, v1, :cond_a3
move-object v0, v6
array-length v0, v0
move/from16 p2, v0
mul-int/lit8 p2, p2, 0x2
move/from16 v0, p2
new-array v0, v0, [C
move-object/from16 p2, v0
move-object/from16 v6, p2
const/16 p2, 0x0
move-object/from16 v0, p3
move v1, v5
move-object v2, v6
move v3, v7
move v4, v5
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_a3
add-int/2addr v7, v5
move-object/from16 v0, p0
move-object/from16 v1, p6
if-eq v0, v1, :cond_c4
if-lez p1, :cond_c4
if-lez p8, :cond_c4
const/16 p2, 0x0
const/4 v8, 0x0
move/from16 v0, p1
move/from16 v1, p8
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v9
move-object/from16 v0, p0
move/from16 v1, p2
move-object/from16 v2, p6
move v3, v8
move v4, v9
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_c4
move/from16 v12, p1
move/from16 v0, p8
move v1, v12
if-le v0, v1, :cond_104
const/4 v9, 0x0
move-object v8, v6
move v10, v7
move-object/from16 v11, p6
move/from16 v13, p8
move-object/from16 v14, p9
move/from16 v15, p10
invoke-static/range {v8 .. v15}, Lcom/ibm/icu/text/Normalizer;->normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result p0
add-int v12, v12, p0
:goto_dc
add-int p4, p4, v5
sub-int p0, p5, p4
if-lez p0, :cond_fa
move/from16 v0, p8
move v1, v12
if-le v0, v1, :cond_fa
move/from16 v0, p0
move v1, v12
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result p1
move-object/from16 v0, p3
move/from16 v1, p4
move-object/from16 v2, p6
move v3, v12
move/from16 v4, p1
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_fa
add-int v12, v12, p0
sub-int p0, p8, p7
move v0, v12
move/from16 v1, p0
if-gt v0, v1, :cond_118
return v12
:cond_104
const/4 v14, 0x0
const/16 v16, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
move-object v13, v6
move v15, v7
move-object/from16 v19, p9
move/from16 v20, p10
invoke-static/range {v13 .. v20}, Lcom/ibm/icu/text/Normalizer;->normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result p0
add-int v12, v12, p0
goto :goto_dc
:cond_118
new-instance p0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object p1
invoke-direct/range {p0 .. p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw p0
.end method
.method public static concatenate(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
.registers 16
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x3
new-array v6, v0, [C
:goto_e
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
array-length v8, v6
move v4, v1
move v7, v1
move-object v9, p2
move v10, p3
invoke-static/range {v0 .. v10}, Lcom/ibm/icu/text/Normalizer;->concatenate([CII[CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result v11
array-length v0, v6
if-gt v11, v0, :cond_30
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v6, v1, v11}, Ljava/lang/String;-><init>([CII)V
return-object v0
:cond_30
new-array v6, v11, [C
goto :goto_e
.end method
.method public static concatenate([C[CLcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
.registers 16
const/4 v1, 0x0
array-length v0, p0
array-length v2, p1
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x3
new-array v6, v0, [C
:goto_8
array-length v2, p0
array-length v5, p1
array-length v8, v6
move-object v0, p0
move-object v3, p1
move v4, v1
move v7, v1
move-object v9, p2
move v10, p3
invoke-static/range {v0 .. v10}, Lcom/ibm/icu/text/Normalizer;->concatenate([CII[CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result v11
array-length v0, v6
if-gt v11, v0, :cond_1e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v6, v1, v11}, Ljava/lang/String;-><init>([CII)V
return-object v0
:cond_1e
new-array v6, v11, [C
goto :goto_8
.end method
.method public static decompose([CII[CIIZI)I
.registers 17
const/4 v0, 0x1
new-array v7, v0, [I
invoke-static/range {p7 .. p7}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v8
move-object v0, p0
move v1, p1
move v2, p2
move-object v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-static/range {v0 .. v8}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose([CII[CIIZ[ILcom/ibm/icu/text/UnicodeSet;)I
move-result p0
sub-int p1, p5, p4
if-gt p0, p1, :cond_17
return p0
:cond_17
new-instance p1, Ljava/lang/IndexOutOfBoundsException;
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object p0
invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw p1
.end method
.method public static decompose([C[CZI)I
.registers 14
const/4 v1, 0x0
const/4 v0, 0x1
new-array v7, v0, [I
invoke-static {p3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v8
array-length v2, p0
array-length v5, p1
move-object v0, p0
move-object v3, p1
move v4, v1
move v6, p2
invoke-static/range {v0 .. v8}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose([CII[CIIZ[ILcom/ibm/icu/text/UnicodeSet;)I
move-result v9
array-length v0, p1
if-gt v9, v0, :cond_16
return v9
:cond_16
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static decompose(Ljava/lang/String;Z)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static decompose(Ljava/lang/String;ZI)Ljava/lang/String;
.registers 13
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
mul-int/lit8 v0, v0, 0x3
new-array v3, v0, [C
const/4 v0, 0x1
new-array v7, v0, [I
const/4 v9, 0x0
invoke-static {p2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v8
:goto_11
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
array-length v5, v3
move v4, v1
move v6, p1
invoke-static/range {v0 .. v8}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose([CII[CIIZ[ILcom/ibm/icu/text/UnicodeSet;)I
move-result v9
array-length v0, v3
if-gt v9, v0, :cond_29
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v3, v1, v9}, Ljava/lang/String;-><init>([CII)V
return-object v0
:cond_29
new-array v3, v9, [C
goto :goto_11
.end method
.method private static findNextIterationBoundary(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$IsNextBoundary;II[C)I
.registers 15
const/4 v9, 0x2
const/4 v8, -0x1
const/4 v7, 0x1
const/4 v6, 0x0
new-array v2, v9, [I
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v4
if-ne v4, v8, :cond_f
move v4, v6
:goto_e
return v4
:cond_f
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result v4
aput v4, v2, v6
aget v4, v2, v6
int-to-char v4, v4
aput-char v4, p4, v6
const/4 v0, 0x1
aget v4, v2, v6
int-to-char v4, v4
invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v4
if-eqz v4, :cond_3f
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v4
if-eq v4, v8, :cond_3f
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result v4
aput v4, v2, v7
int-to-char v4, v4
invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v4
if-eqz v4, :cond_55
add-int/lit8 v1, v0, 0x1
aget v4, v2, v7
int-to-char v4, v4
aput-char v4, p4, v0
move v0, v1
:goto_3f
:cond_3f
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v4
if-eq v4, v8, :cond_53
invoke-interface {p1, p0, p2, p3, v2}, Lcom/ibm/icu/text/Normalizer$IsNextBoundary;->isNextBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[I)Z
move-result v4
if-eqz v4, :cond_5b
aget v4, v2, v7
if-nez v4, :cond_59
move v4, v8
:goto_50
invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
:cond_53
move v4, v0
goto :goto_e
:cond_55
invoke-virtual {p0, v8}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
goto :goto_3f
:cond_59
const/4 v4, -0x2
goto :goto_50
:cond_5b
aget v4, v2, v7
if-nez v4, :cond_77
move v4, v7
:goto_60
add-int/2addr v4, v0
array-length v5, p4
if-gt v4, v5, :cond_79
add-int/lit8 v1, v0, 0x1
aget v4, v2, v6
int-to-char v4, v4
aput-char v4, p4, v0
aget v4, v2, v7
if-eqz v4, :cond_95
add-int/lit8 v0, v1, 0x1
aget v4, v2, v7
int-to-char v4, v4
aput-char v4, p4, v1
goto :goto_3f
:cond_77
move v4, v9
goto :goto_60
:cond_79
array-length v4, p4
mul-int/lit8 v4, v4, 0x2
new-array v3, v4, [C
invoke-static {p4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object p4, v3
add-int/lit8 v1, v0, 0x1
aget v4, v2, v6
int-to-char v4, v4
aput-char v4, p4, v0
aget v4, v2, v7
if-eqz v4, :cond_95
add-int/lit8 v0, v1, 0x1
aget v4, v2, v7
int-to-char v4, v4
aput-char v4, p4, v1
goto :goto_3f
:cond_95
move v0, v1
goto :goto_3f
.end method
.method private static findPreviousIterationBoundary(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;II[C[I)I
.registers 16
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
new-array v0, v9, [C
array-length v3, p4
aput v3, p5, v7
aput-char v7, v0, v7
:cond_a
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v3
if-lez v3, :cond_57
aget-char v3, v0, v7
const/4 v4, -0x1
if-eq v3, v4, :cond_57
invoke-interface {p1, p0, p2, p3, v0}, Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;->isPrevBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[C)Z
move-result v1
aget v3, p5, v7
aget-char v4, v0, v8
if-nez v4, :cond_5c
move v4, v8
:goto_20
if-ge v3, v4, :cond_3f
array-length v3, p4
mul-int/lit8 v3, v3, 0x2
new-array v2, v3, [C
aget v3, p5, v7
array-length v4, v2
array-length v5, p4
aget v6, p5, v7
sub-int/2addr v5, v6
sub-int/2addr v4, v5
array-length v5, p4
aget v6, p5, v7
sub-int/2addr v5, v6
invoke-static {p4, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aget v3, p5, v7
array-length v4, v2
array-length v5, p4
sub-int/2addr v4, v5
add-int/2addr v3, v4
aput v3, p5, v7
move-object p4, v2
:cond_3f
aget v3, p5, v7
sub-int/2addr v3, v8
aput v3, p5, v7
aget-char v4, v0, v7
aput-char v4, p4, v3
aget-char v3, v0, v8
if-eqz v3, :cond_55
aget v3, p5, v7
sub-int/2addr v3, v8
aput v3, p5, v7
aget-char v4, v0, v8
aput-char v4, p4, v3
:cond_55
if-eqz v1, :cond_a
:cond_57
array-length v3, p4
aget v4, p5, v7
sub-int/2addr v3, v4
return v3
:cond_5c
move v4, v9
goto :goto_20
.end method
.method private getCodePointAt(I)I
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v0, v0, p1
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v0, v0, p1
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v0
if-eqz v0, :cond_36
add-int/lit8 v0, p1, 0x1
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-ge v0, v1, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
add-int/lit8 v1, p1, 0x1
aget-char v0, v0, v1
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v0, v0, p1
iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
add-int/lit8 v2, p1, 0x1
aget-char v1, v1, v2
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v0
:goto_35
return v0
:cond_36
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v0, v0, p1
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v0
if-eqz v0, :cond_5d
if-lez p1, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
sub-int v1, p1, v2
aget-char v0, v0, v1
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
sub-int v1, p1, v2
aget-char v0, v0, v1
iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v1, v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v0
goto :goto_35
:cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
aget-char v0, v0, p1
goto :goto_35
.end method
.method public static getFC_NFKC_Closure(I[C)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFC_NFKC_Closure(I[C)I
move-result v0
return v0
.end method
.method public static getFC_NFKC_Closure(I)Ljava/lang/String;
.registers 5
const/16 v2, 0xa
new-array v0, v2, [C
:goto_4
invoke-static {p0, v0}, Lcom/ibm/icu/text/Normalizer;->getFC_NFKC_Closure(I[C)I
move-result v1
array-length v2, v0
if-gt v1, v2, :cond_12
new-instance v2, Ljava/lang/String;
const/4 v3, 0x0
invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V
return-object v2
:cond_12
new-array v0, v1, [C
goto :goto_4
.end method
.method private static getNextNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
.registers 11
const-wide/16 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result v2
aput v2, p3, v3
aput v3, p3, v4
aget v2, p3, v3
if-ge v2, p1, :cond_12
move-wide v2, v5
:goto_11
return-wide v2
:cond_12
aget v2, p3, v3
int-to-char v2, v2
invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J
move-result-wide v0
aget v2, p3, v3
int-to-char v2, v2
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v2
if-eqz v2, :cond_4b
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_49
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v2
aput v2, p3, v4
int-to-char v2, v2
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v2
if-eqz v2, :cond_49
invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
int-to-long v2, p2
and-long/2addr v2, v0
cmp-long v2, v2, v5
if-nez v2, :cond_41
move-wide v2, v5
goto :goto_11
:cond_41
aget v2, p3, v4
int-to-char v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J
move-result-wide v2
goto :goto_11
:cond_49
move-wide v2, v5
goto :goto_11
:cond_4b
move-wide v2, v0
goto :goto_11
.end method
.method private static getPrevNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
.registers 12
const/4 v4, 0x1
const-wide/16 v6, 0x0
const/4 v5, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_e
move-wide v3, v6
:goto_d
return-wide v3
:cond_e
int-to-char v3, v0
aput-char v3, p3, v5
aput-char v5, p3, v4
aget-char v3, p3, v5
if-ge v3, p1, :cond_19
move-wide v3, v6
goto :goto_d
:cond_19
aget-char v3, p3, v5
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z
move-result v3
if-nez v3, :cond_28
aget-char v3, p3, v5
invoke-static {v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J
move-result-wide v3
goto :goto_d
:cond_28
aget-char v3, p3, v5
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v3
if-nez v3, :cond_36
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v3
if-nez v3, :cond_3f
:cond_36
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v3
int-to-char v3, v3
aput-char v3, p3, v4
move-wide v3, v6
goto :goto_d
:cond_3f
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v3
int-to-char v3, v3
aput-char v3, p3, v4
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v3
if-eqz v3, :cond_61
aget-char v3, p3, v4
invoke-static {v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J
move-result-wide v1
int-to-long v3, p2
and-long/2addr v3, v1
cmp-long v3, v3, v6
if-nez v3, :cond_5a
move-wide v3, v6
goto :goto_d
:cond_5a
aget-char v3, p3, v5
invoke-static {v1, v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J
move-result-wide v3
goto :goto_d
:cond_61
invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
move-wide v3, v6
goto :goto_d
.end method
.method static getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;
.registers 1
invoke-static {}, Lcom/ibm/icu/impl/NormalizerImpl;->getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;
move-result-object v0
return-object v0
.end method
.method private static internalCompare([CII[CIII)I
.registers 33
const/16 v2, 0x12c
new-array v12, v2, [C
const/16 v2, 0x12c
move v0, v2
new-array v0, v0, [C
move-object/from16 v22, v0
if-eqz p0, :cond_23
if-ltz p1, :cond_23
if-ltz p2, :cond_23
if-eqz p3, :cond_23
if-ltz p4, :cond_23
if-ltz p5, :cond_23
move/from16 v0, p2
move/from16 v1, p1
if-lt v0, v1, :cond_23
move/from16 v0, p5
move/from16 v1, p4
if-ge v0, v1, :cond_29
:cond_23
new-instance p0, Ljava/lang/IllegalArgumentException;
invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw p0
:cond_29
shr-int/lit8 v2, p6, 0x14
invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v7
const/high16 v2, 0x8
or-int p6, p6, v2
const/4 v2, 0x0
and-int/lit8 v2, p6, 0x1
if-lez v2, :cond_e4
sget-object v2, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
const v3, -0x20001
and-int p6, p6, v3
:goto_3f
const/high16 v3, 0x2
and-int v3, v3, p6
if-nez v3, :cond_df
sget-object v8, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
const/4 v6, 0x1
move-object/from16 v3, p0
move/from16 v4, p1
move/from16 v5, p2
invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v3
if-ne v8, v3, :cond_e8
const/4 v3, 0x1
move v8, v3
:goto_56
sget-object v9, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
const/4 v6, 0x1
move-object/from16 v3, p3
move/from16 v4, p4
move/from16 v5, p5
invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v3
if-ne v9, v3, :cond_ec
const/4 v3, 0x1
:goto_66
if-nez v8, :cond_a3
const/4 v10, 0x0
move-object/from16 v0, p0
array-length v0, v0
move v11, v0
const/4 v13, 0x0
array-length v14, v12
move-object v8, v2
move-object/from16 v9, p0
move-object v15, v7
invoke-virtual/range {v8 .. v15}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result p1
move-object v0, v12
array-length v0, v0
move/from16 p2, v0
move/from16 v0, p1
move/from16 v1, p2
if-le v0, v1, :cond_ef
move/from16 v0, p1
new-array v0, v0, [C
move-object/from16 v17, v0
const/4 v15, 0x0
move-object/from16 v0, p0
array-length v0, v0
move/from16 v16, v0
const/16 v18, 0x0
move-object/from16 v0, v17
array-length v0, v0
move/from16 v19, v0
move-object v13, v2
move-object/from16 v14, p0
move-object/from16 v20, v7
invoke-virtual/range {v13 .. v20}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result p1
move-object/from16 p0, v17
:goto_9f
move/from16 p2, p1
const/16 p1, 0x0
:cond_a3
if-nez v3, :cond_df
const/16 v23, 0x0
move-object/from16 v0, v22
array-length v0, v0
move/from16 v24, v0
move-object/from16 v18, v2
move-object/from16 v19, p3
move/from16 v20, p4
move/from16 v21, p5
move-object/from16 v25, v7
invoke-virtual/range {v18 .. v25}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result v3
move-object/from16 v0, v22
array-length v0, v0
move v4, v0
if-le v3, v4, :cond_f2
move v0, v3
new-array v0, v0, [C
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, v17
array-length v0, v0
move/from16 v19, v0
move-object v13, v2
move-object/from16 v14, p3
move/from16 v15, p4
move/from16 v16, p5
move-object/from16 v20, v7
invoke-virtual/range {v13 .. v20}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result p4
move-object/from16 p3, v17
:goto_db
move/from16 p5, p4
const/16 p4, 0x0
:cond_df
invoke-static/range {p0 .. p6}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpEquivFold([CII[CIII)I
move-result p0
return p0
:cond_e4
sget-object v2, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;
goto/16 :goto_3f
:cond_e8
const/4 v3, 0x0
move v8, v3
goto/16 :goto_56
:cond_ec
const/4 v3, 0x0
goto/16 :goto_66
:cond_ef
move-object/from16 p0, v12
goto :goto_9f
:cond_f2
move-object/from16 p3, v22
move/from16 p4, v3
goto :goto_db
.end method
.method public static isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;)Z
.registers 3
invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer$Mode;->isNFSkippable(I)Z
move-result v0
return v0
.end method
.method public static isNormalized(ILcom/ibm/icu/text/Normalizer$Mode;I)Z
.registers 4
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z
move-result v0
return v0
.end method
.method public static isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z
.registers 9
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-static {p2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v5
move-object v0, p1
move v4, v2
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-ne v0, v1, :cond_19
const/4 v0, 0x1
:goto_18
return v0
:cond_19
move v0, v2
goto :goto_18
.end method
.method public static isNormalized([CIILcom/ibm/icu/text/Normalizer$Mode;I)Z
.registers 11
const/4 v4, 0x0
invoke-static {p4}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v5
move-object v0, p3
move-object v1, p0
move v2, p1
move v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-ne v0, v1, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
move v0, v4
goto :goto_12
.end method
.method private static makeFCD(Ljava/lang/String;I)Ljava/lang/String;
.registers 10
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
mul-int/lit8 v0, v2, 0x3
new-array v3, v0, [C
const/4 v7, 0x0
invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v6
:goto_e
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v5, v3
move v4, v1
invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->makeFCD([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result v7
array-length v0, v3
if-gt v7, v0, :cond_21
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v3, v1, v7}, Ljava/lang/String;-><init>([CII)V
return-object v0
:cond_21
new-array v3, v7, [C
goto :goto_e
.end method
.method private static next(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
.registers 17
sub-int v0, p3, p2
const/4 v2, 0x0
if-eqz p6, :cond_9
const/4 v1, 0x0
const/4 v3, 0x0
aput-boolean v3, p6, v1
:cond_9
invoke-virtual {p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getMinC()I
move-result v1
int-to-char v5, v1
invoke-virtual {p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getMask()I
move-result v4
invoke-virtual {p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getNextBoundary()Lcom/ibm/icu/text/Normalizer$IsNextBoundary;
move-result-object v3
if-nez v3, :cond_4c
const/4 p3, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result p2
const/4 p4, -0x1
if-eq p2, p4, :cond_89
const/4 p4, 0x1
int-to-char p3, p2
invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result p3
if-eqz p3, :cond_4a
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result p3
const/4 p5, -0x1
if-eq p3, p5, :cond_4a
int-to-char p5, p3
invoke-static {p5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result p5
if-eqz p5, :cond_46
const/4 p0, 0x2
if-lt v0, p0, :cond_4a
const/4 p0, 0x1
int-to-char p3, p3
aput-char p3, p1, p0
const/4 p0, 0x2
:goto_3e
if-lez v0, :cond_44
const/4 p3, 0x0
int-to-char p2, p2
aput-char p2, p1, p3
:goto_44
:cond_44
move p1, p0
:goto_45
return p1
:cond_46
const/4 p3, -0x1
invoke-virtual {p0, p3}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
:cond_4a
move p0, p4
goto :goto_3e
:cond_4c
const/16 v1, 0x64
new-array v1, v1, [C
const/4 v6, 0x1
new-array v8, v6, [I
invoke-static {p0, v3, v5, v4, v1}, Lcom/ibm/icu/text/Normalizer;->findNextIterationBoundary(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$IsNextBoundary;II[C)I
move-result v3
if-lez v3, :cond_87
if-eqz p5, :cond_7d
const/4 p0, 0x0
aget v2, v8, p0
move-object v0, p4
move-object v4, p1
move v5, p2
move v6, p3
move/from16 v7, p7
invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIII)I
move-result p0
if-eqz p6, :cond_79
const/4 p3, 0x0
if-ne p0, v3, :cond_76
const/4 p4, 0x0
aget p4, v8, p4
invoke-static {v1, p4, p1, p2, p0}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([CI[CII)Z
move-result p1
if-eqz p1, :cond_7b
:cond_76
const/4 p1, 0x1
:goto_77
aput-boolean p1, p6, p3
:cond_79
:goto_79
move p1, p0
goto :goto_45
:cond_7b
const/4 p1, 0x0
goto :goto_77
:cond_7d
if-lez v0, :cond_87
const/4 p0, 0x0
invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I
move-result p3
invoke-static {v1, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_87
move p0, v2
goto :goto_79
:cond_89
move p0, p3
goto :goto_44
.end method
.method private nextNormalize()Z
.registers 9
const/4 v5, 0x1
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iget v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
array-length v3, v3
iget-object v4, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
const/4 v6, 0x0
iget v7, p0, Lcom/ibm/icu/text/Normalizer;->options:I
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->next(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-lez v0, :cond_31
move v0, v5
:goto_30
return v0
:cond_31
const/4 v0, 0x0
goto :goto_30
.end method
.method public static normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
.registers 16
move-object v0, p6
move-object v1, p0
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
move v6, p5
move v7, p7
invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIII)I
move-result p0
sub-int p1, p5, p4
if-gt p0, p1, :cond_11
return p0
:cond_11
new-instance p1, Ljava/lang/IndexOutOfBoundsException;
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object p0
invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw p1
.end method
.method public static normalize([C[CLcom/ibm/icu/text/Normalizer$Mode;I)I
.registers 13
const/4 v1, 0x0
array-length v2, p0
array-length v5, p1
move-object v0, p0
move-object v3, p1
move v4, v1
move-object v6, p2
move v7, p3
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result v8
array-length v0, p1
if-gt v8, v0, :cond_10
return v8
:cond_10
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static normalize(ILcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p1, v1}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalize(ILcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
.registers 4
invoke-virtual {p1, p0, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static previous(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
.registers 27
sub-int v11, p3, p2
const/4 v12, 0x0
if-eqz p6, :cond_9
const/4 v5, 0x0
const/4 v6, 0x0
aput-boolean v6, p6, v5
:cond_9
invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getMinC()I
move-result v5
int-to-char v7, v5
invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getMask()I
move-result v8
invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getPrevBoundary()Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;
move-result-object v6
if-nez v6, :cond_78
const/16 p3, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result p2
if-ltz p2, :cond_ef
const/16 p4, 0x1
move/from16 v0, p2
int-to-char v0, v0
move/from16 p3, v0
invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result p3
if-eqz p3, :cond_73
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result p3
const/16 p5, -0x1
move/from16 v0, p3
move/from16 v1, p5
if-eq v0, v1, :cond_73
move/from16 v0, p3
int-to-char v0, v0
move/from16 p5, v0
invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result p5
if-eqz p5, :cond_6a
const/16 p0, 0x2
move v0, v11
move/from16 v1, p0
if-lt v0, v1, :cond_eb
const/16 p0, 0x1
move/from16 v0, p2
int-to-char v0, v0
move/from16 p2, v0
aput-char p2, p1, p0
const/16 p0, 0x2
move/from16 p2, p0
:goto_58
move/from16 p0, p3
:goto_5a
if-lez v11, :cond_65
const/16 p3, 0x0
move/from16 v0, p0
int-to-char v0, v0
move/from16 p4, v0
aput-char p4, p1, p3
:cond_65
move/from16 p1, p2
:goto_67
move/from16 p0, p1
:goto_69
return p1
:cond_6a
const/16 p3, 0x1
move-object/from16 v0, p0
move/from16 v1, p3
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I
:cond_73
move/from16 p0, p2
move/from16 p2, p4
goto :goto_5a
:cond_78
const/16 v5, 0x64
new-array v9, v5, [C
const/4 v5, 0x1
new-array v10, v5, [I
move-object/from16 v5, p0
invoke-static/range {v5 .. v10}, Lcom/ibm/icu/text/Normalizer;->findPreviousIterationBoundary(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;II[C[I)I
move-result p0
if-lez p0, :cond_e2
if-eqz p5, :cond_c9
const/16 p5, 0x0
aget v12, v10, p5
const/16 p5, 0x0
aget p5, v10, p5
add-int v13, p5, p0
move-object v11, v9
move-object/from16 v14, p1
move/from16 v15, p2
move/from16 v16, p3
move-object/from16 v17, p4
move/from16 v18, p7
invoke-static/range {v11 .. v18}, Lcom/ibm/icu/text/Normalizer;->normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
move-result p4
if-eqz p6, :cond_e8
const/16 p5, 0x0
move/from16 v0, p4
move/from16 v1, p0
if-ne v0, v1, :cond_bd
const/16 p0, 0x0
move-object v0, v9
move/from16 v1, p0
move-object/from16 v2, p1
move/from16 v3, p2
move/from16 v4, p3
invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([CI[CII)Z
move-result p0
if-eqz p0, :cond_c6
:cond_bd
const/16 p0, 0x1
:goto_bf
aput-boolean p0, p6, p5
move/from16 p0, p4
:goto_c3
move/from16 p1, p0
goto :goto_69
:cond_c6
const/16 p0, 0x0
goto :goto_bf
:cond_c9
if-lez v11, :cond_e2
const/16 p2, 0x0
aget p2, v10, p2
const/16 p3, 0x0
move/from16 v0, p0
move v1, v11
if-ge v0, v1, :cond_e5
:goto_d6
move-object v0, v9
move/from16 v1, p2
move-object/from16 v2, p1
move/from16 v3, p3
move/from16 v4, p0
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_e2
move/from16 p0, v12
goto :goto_c3
:cond_e5
move/from16 p0, v11
goto :goto_d6
:cond_e8
move/from16 p0, p4
goto :goto_c3
:cond_eb
move/from16 p2, p4
goto/16 :goto_58
:cond_ef
move/from16 p0, p2
move/from16 p1, p3
goto/16 :goto_67
.end method
.method private previousNormalize()Z
.registers 9
const/4 v5, 0x1
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iget v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferStart:I
iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
array-length v3, v3
iget-object v4, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
const/4 v6, 0x0
iget v7, p0, Lcom/ibm/icu/text/Normalizer;->options:I
invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->previous(Lcom/ibm/icu/text/UCharacterIterator;[CIILcom/ibm/icu/text/Normalizer$Mode;Z[ZI)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-lez v0, :cond_35
move v0, v5
:goto_34
return v0
:cond_35
const/4 v0, 0x0
goto :goto_34
.end method
.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.registers 8
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x1
const/4 v5, 0x0
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
return-object v0
.end method
.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.registers 9
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x1
invoke-static {p2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v5
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
return-object v0
.end method
.method public static quickCheck([CIILcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.registers 11
const/4 v4, 0x1
invoke-static {p4}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v5
move-object v0, p3
move-object v1, p0
move v2, p1
move v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
return-object v0
.end method
.method public static quickCheck([CLcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.registers 9
const/4 v2, 0x0
array-length v3, p0
const/4 v4, 0x1
invoke-static {p2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v5
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/Normalizer$Mode;->quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
return-object v0
.end method
.method public clone()Ljava/lang/Object;
.registers 8
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/Normalizer;
iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/UCharacterIterator;
iput-object v2, v0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
array-length v2, v2
new-array v2, v2, [C
iput-object v2, v0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
const/4 v3, 0x0
iget-object v4, v0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
const/4 v5, 0x0
iget-object v6, p0, Lcom/ibm/icu/text/Normalizer;->buffer:[C
array-length v6, v6
invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_27
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28
:cond_27
return-object v0
:catch_28
move-exception v2
move-object v1, v2
new-instance v2, Ljava/lang/IllegalStateException;
invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public current()I
.registers 3
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-lt v0, v1, :cond_c
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->nextNormalize()Z
move-result v0
if-eqz v0, :cond_13
:cond_c
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
invoke-direct {p0, v0}, Lcom/ibm/icu/text/Normalizer;->getCodePointAt(I)I
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, -0x1
goto :goto_12
.end method
.method public endIndex()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v0
return v0
.end method
.method public first()I
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->next()I
move-result v0
return v0
.end method
.method public getBeginIndex()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getEndIndex()I
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->endIndex()I
move-result v0
return v0
.end method
.method public getIndex()I
.registers 3
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-ge v0, v1, :cond_9
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
goto :goto_8
.end method
.method public getLength()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v0
return v0
.end method
.method public getMode()Lcom/ibm/icu/text/Normalizer$Mode;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
return-object v0
.end method
.method public getOption(I)I
.registers 3
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I
and-int/2addr v0, p1
if-eqz v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getText([C)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText([C)I
move-result v0
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public last()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToLimit()V
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->previous()I
move-result v0
return v0
.end method
.method public next()I
.registers 4
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
iget v2, p0, Lcom/ibm/icu/text/Normalizer;->bufferLimit:I
if-lt v1, v2, :cond_c
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->nextNormalize()Z
move-result v1
if-eqz v1, :cond_21
:cond_c
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
invoke-direct {p0, v1}, Lcom/ibm/icu/text/Normalizer;->getCodePointAt(I)I
move-result v0
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
const v2, 0xffff
if-le v0, v2, :cond_1f
const/4 v2, 0x2
:goto_1a
add-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
move v1, v0
:goto_1e
return v1
:cond_1f
const/4 v2, 0x1
goto :goto_1a
:cond_21
const/4 v1, -0x1
goto :goto_1e
.end method
.method public previous()I
.registers 5
const/4 v3, 0x1
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
if-gtz v1, :cond_b
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->previousNormalize()Z
move-result v1
if-eqz v1, :cond_21
:cond_b
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
sub-int/2addr v1, v3
invoke-direct {p0, v1}, Lcom/ibm/icu/text/Normalizer;->getCodePointAt(I)I
move-result v0
iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
const v2, 0xffff
if-le v0, v2, :cond_1f
const/4 v2, 0x2
:goto_1a
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I
move v1, v0
:goto_1e
return v1
:cond_1f
move v2, v3
goto :goto_1a
:cond_21
const/4 v1, -0x1
goto :goto_1e
.end method
.method public reset()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iput v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V
return-void
.end method
.method public setIndex(I)I
.registers 3
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Normalizer;->setIndexOnly(I)V
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->current()I
move-result v0
return v0
.end method
.method public setIndexOnly(I)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
iput p1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
iput p1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V
return-void
.end method
.method public setMode(Lcom/ibm/icu/text/Normalizer$Mode;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;
return-void
.end method
.method public setOption(IZ)V
.registers 5
if-eqz p2, :cond_8
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I
or-int/2addr v0, p1
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I
:goto_7
return-void
:cond_8
iget v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I
xor-int/lit8 v1, p1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I
goto :goto_7
.end method
.method public setText(Lcom/ibm/icu/text/UCharacterIterator;)V
.registers 6
:try_start_0
invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;
if-nez v1, :cond_1a
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Could not create a new UCharacterIterator"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:catch_10
:try_end_10
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_10
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Could not clone the UCharacterIterator"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:try_start_1a
:cond_1a
iput-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
:try_end_1f
.catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_1f} :catch_10
return-void
.end method
.method public setText(Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
if-nez v0, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not create a new UCharacterIterator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
return-void
.end method
.method public setText(Ljava/lang/StringBuffer;)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
if-nez v0, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not create a new UCharacterIterator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
return-void
.end method
.method public setText(Ljava/text/CharacterIterator;)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
if-nez v0, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not create a new UCharacterIterator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
return-void
.end method
.method public setText([C)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([C)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
if-nez v0, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not create a new UCharacterIterator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V
return-void
.end method
.method public startIndex()I
.registers 2
const/4 v0, 0x0
return v0
.end method