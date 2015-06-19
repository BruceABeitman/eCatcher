.class final Lcom/ibm/icu/text/CollationParsedRuleBuilder;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field private static final CE_BASIC_STRENGTH_LIMIT_:I = 0x3
.field private static final CE_CONTRACTION_TAG_:I = 0x2
.field private static final CE_EXPANSION_TAG_:I = 0x1
.field private static final CE_IMPLICIT_TAG_:I = 0xa
.field private static final CE_LONG_PRIMARY_TAG_:I = 0xc
.field private static final CE_NOT_FOUND_:I = -0x10000000
.field private static final CE_NOT_FOUND_TAG_:I = 0x0
.field private static final CE_SPEC_PROC_TAG_:I = 0xb
.field private static final CE_STRENGTH_LIMIT_:I = 0x10
.field private static final CE_SURROGATE_TAG_:I = 0x5
.field private static final CONTRACTION_TABLE_NEW_ELEMENT_:I = 0xffffff
.field static final INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA; = null
.field private static final INV_UCA_VERSION_MISMATCH_:Ljava/lang/String; = "UCA versions of UCA and inverse UCA should match"
.field private static final LOWER_CASE_:I = 0x0
.field private static final MIXED_CASE_:I = 0x40
.field private static final STRENGTH_MASK_:[I = null
.field private static final UCA_NOT_INSTANTIATED_:Ljava/lang/String; = "UCA is not instantiated!"
.field private static final UNSAFECP_TABLE_MASK_:I = 0x1fff
.field private static final UNSAFECP_TABLE_SIZE_:I = 0x420
.field private static final UPPER_CASE_:I = 0x80
.field private static buildCMTabFlag:Z
.field private m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
.field private m_utilCEBuffer_:[I
.field private m_utilCanIter_:Lcom/ibm/icu/text/CanonicalIterator;
.field private m_utilCharBuffer_:[C
.field private m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
.field private m_utilCountBuffer_:[I
.field private m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
.field private m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
.field private m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
.field private m_utilIntBuffer_:[I
.field private m_utilLongBuffer_:[J
.field private m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;
.field private m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
.field private m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
.field private m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/ibm/icu/text/CollatorReader;->getInverseUCA()Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
:try_end_4
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_35
move-result-object v0
:goto_5
if-eqz v0, :cond_1f
sget-object v1, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
if-eqz v1, :cond_1f
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
sget-object v2, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v1, v2}, Lcom/ibm/icu/util/VersionInfo;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_27
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "UCA versions of UCA and inverse UCA should match"
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1f
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "UCA is not instantiated!"
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_27
sput-object v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
const/4 v1, 0x3
new-array v1, v1, [I
fill-array-data v1, :array_38
sput-object v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->STRENGTH_MASK_:[I
const/4 v1, 0x0
sput-boolean v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->buildCMTabFlag:Z
return-void
:catch_35
move-exception v1
goto :goto_5
nop
:array_38
.array-data 0x4
0x0t 0x0t 0xfft 0xfft
0x0t 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method constructor <init>(Ljava/lang/String;)V
.registers 10
const/4 v7, 0x5
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v3, [Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;-><init>()V
aput-object v1, v0, v4
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;-><init>()V
aput-object v1, v0, v5
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;-><init>()V
aput-object v1, v0, v6
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
new-array v0, v3, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
const/16 v0, 0x10
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
new-instance v0, Lcom/ibm/icu/text/CollationRuleParser$Token;
invoke-direct {v0}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
const/4 v0, 0x6
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCountBuffer_:[I
new-array v0, v7, [J
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
new-array v0, v7, [Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v4
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v5
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v6
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v3
const/4 v1, 0x4
new-instance v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v2, v0, v1
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
new-array v0, v7, [Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v4
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v5
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v6
new-instance v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v1, v0, v3
const/4 v1, 0x4
new-instance v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v2, v0, v1
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/16 v0, 0x100
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCharBuffer_:[C
new-instance v0, Lcom/ibm/icu/text/CanonicalIterator;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCanIter_:Lcom/ibm/icu/text/CanonicalIterator;
new-instance v0, Ljava/lang/StringBuffer;
const-string v1, ""
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
new-instance v0, Lcom/ibm/icu/text/CollationRuleParser;
invoke-direct {v0, p1}, Lcom/ibm/icu/text/CollationRuleParser;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
invoke-virtual {v0}, Lcom/ibm/icu/text/CollationRuleParser;->assembleTokenList()I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
return-void
.end method
.method private static final ContrEndCPSet([BC)V
.registers 7
move v0, p1
const/16 v1, 0x2100
if-lt v0, v1, :cond_9
and-int/lit16 v1, v0, 0x1fff
add-int/lit16 v0, v1, 0x100
:cond_9
shr-int/lit8 v1, v0, 0x3
aget-byte v2, p0, v1
const/4 v3, 0x1
and-int/lit8 v4, v0, 0x7
shl-int/2addr v3, v4
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, p0, v1
return-void
.end method
.method static synthetic access$000()[I
.registers 1
sget-object v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->STRENGTH_MASK_:[I
return-object v0
.end method
.method static synthetic access$100(III)I
.registers 4
invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
move-result v0
return v0
.end method
.method static synthetic access$200(I)I
.registers 2
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v0
return v0
.end method
.method static synthetic access$300(I)Z
.registers 2
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isSpecial(I)Z
move-result v0
return v0
.end method
.method private static addAContractionElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
.registers 3
new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
invoke-direct {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;-><init>()V
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method private addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
.registers 16
const/4 v8, 0x5
const/4 v12, 0x2
const/4 v11, 0x1
const/4 v10, 0x0
iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;
iput v10, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
if-ne v6, v11, :cond_158
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v10
iput v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:cond_12
:goto_12
const/4 v5, 0x0
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-ne v6, v12, :cond_202
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v6
if-eqz v6, :cond_202
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v6
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-static {v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v5
:goto_37
:cond_37
if-eqz v5, :cond_51
invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v6
if-eqz v6, :cond_51
const v0, -0x2ffffff
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
if-eqz v6, :cond_212
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
move-result v6
shl-int/lit8 v6, v6, 0x4
or-int/2addr v0, v6
:goto_4f
iput v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:cond_51
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
if-eqz v6, :cond_fb
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
sub-int/2addr v6, v7
if-lez v6, :cond_fb
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-boolean v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_caseBit_:Z
iput-boolean v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_caseBit_:Z
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iput v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iput v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-boolean v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_variableTop_:Z
iput-boolean v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_variableTop_:Z
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iput v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-static {v7, v10}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v7
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput-object v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput v10, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
if-eqz v6, :cond_fb
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
invoke-virtual {v6, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
if-eqz v4, :cond_21f
iget v6, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-direct {p0, p1, v6, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addPrefix(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
move-result v6
iput v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:goto_c6
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v6, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
iget v8, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
sub-int/2addr v7, v8
if-ne v6, v7, :cond_ef
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v6, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget v8, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v9, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
invoke-virtual {v6, v10, v7, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v6
if-nez v6, :cond_fb
:cond_ef
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement2_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {p0, p1, v7, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addPrefix(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
move-result v7
iput v7, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:cond_fb
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v6, v7
if-le v6, v11, :cond_23a
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v6, v7
if-ne v6, v12, :cond_129
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v6
if-eqz v6, :cond_129
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v6
if-nez v6, :cond_23a
:cond_129
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCanIter_:Lcom/ibm/icu/text/CanonicalIterator;
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6, v7}, Lcom/ibm/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCanIter_:Lcom/ibm/icu/text/CanonicalIterator;
invoke-virtual {v6}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;
move-result-object v3
:goto_136
if-eqz v3, :cond_237
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_237
sget-object v6, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {v3, v6, v10}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v6
sget-object v7, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-eq v6, v7, :cond_151
iput-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-static {p1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_151
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCanIter_:Lcom/ibm/icu/text/CanonicalIterator;
invoke-virtual {v6}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;
move-result-object v3
goto :goto_136
:cond_158
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
if-ne v6, v12, :cond_19c
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v11
invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v6
if-eqz v6, :cond_19c
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v11
const v7, 0xffff3f
and-int/2addr v6, v7
if-nez v6, :cond_19c
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v10
shr-int/lit8 v6, v6, 0x8
and-int/lit16 v6, v6, 0xff
if-ne v6, v8, :cond_19c
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v10
and-int/lit16 v6, v6, 0xff
if-ne v6, v8, :cond_19c
const/high16 v6, -0x400
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v7, v7, v10
shr-int/lit8 v7, v7, 0x8
const v8, 0xffff00
and-int/2addr v7, v8
or-int/2addr v6, v7
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v7, v7, v11
shr-int/lit8 v7, v7, 0x18
and-int/lit16 v7, v7, 0xff
or-int/2addr v6, v7
iput v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
goto/16 :goto_12
:cond_19c
const/high16 v6, -0xf00
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v7, v7, v10
invoke-static {v1, v7}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
move-result v7
shl-int/lit8 v7, v7, 0x4
const v8, 0xfffff0
and-int/2addr v7, v8
or-int v0, v6, v7
const/4 v2, 0x1
:goto_1af
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
if-ge v2, v6, :cond_1bd
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v2
invoke-static {v1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
add-int/lit8 v2, v2, 0x1
goto :goto_1af
:cond_1bd
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
const/16 v7, 0xf
if-gt v6, v7, :cond_1fe
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
or-int/2addr v0, v6
:goto_1c6
iput v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
sub-int/2addr v7, v11
aget v6, v6, v7
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
int-to-byte v7, v7
iget-object v8, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;
invoke-static {v6, v7, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isJamo(C)Z
move-result v6
if-eqz v6, :cond_12
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
iput-boolean v11, v6, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v6
iget-object v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v8, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
sub-int/2addr v8, v11
aget v7, v7, v8
iget v8, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
int-to-byte v8, v8
iget-object v9, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;
invoke-static {v6, v7, v8, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxJamoExpansion(CIBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;)I
goto/16 :goto_12
:cond_1fe
invoke-static {v1, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
goto :goto_1c6
:cond_202
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-ne v6, v11, :cond_37
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C
move-result v5
goto/16 :goto_37
:cond_212
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v6, v6, v10
invoke-static {v1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
move-result v6
shl-int/lit8 v6, v6, 0x4
or-int/2addr v0, v6
goto/16 :goto_4f
:cond_21f
const/high16 v6, -0x1000
invoke-direct {p0, p1, v6, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addPrefix(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
move-result v6
iput v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
new-instance v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v4, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
iget-object v6, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v6, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
invoke-virtual {v6, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_c6
:cond_237
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:goto_239
return v6
:cond_23a
invoke-static {p1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
move-result v6
goto :goto_239
.end method
.method private static addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
.registers 11
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
const/4 v1, 0x2
iput v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
iget-object v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
const/4 v2, 0x1
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isSupplementary(I)Z
move-result v3
if-eqz v3, :cond_14
const/4 v2, 0x2
:cond_14
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_f1
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
iget v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int v4, v3, v4
const/4 v3, 0x1
:goto_27
if-ge v3, v4, :cond_49
iget-object v5, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
add-int/2addr v6, v3
invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v5
if-nez v5, :cond_46
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
iget-object v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v7, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
add-int/2addr v7, v3
invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v5, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
:cond_46
add-int/lit8 v3, v3, 0x1
goto :goto_27
:cond_49
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x1
sub-int/2addr v4, v5
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v3
if-nez v3, :cond_70
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v5, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
const/4 v6, 0x1
sub-int/2addr v5, v6
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v3, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->ContrEndCPSet([BC)V
:cond_70
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isJamo(C)Z
move-result v3
if-eqz v3, :cond_83
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
const/4 v4, 0x1
iput-boolean v4, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
:cond_83
iget v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
add-int/2addr v3, v2
iput v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContraction(I)Z
move-result v3
if-nez v3, :cond_bd
const v3, 0xffffff
const/4 v4, 0x0
invoke-static {v0, v3, v4, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
move-result v3
const/high16 v4, -0x1000
invoke-static {v0, p2, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v4
iget-object v5, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v0, v3, v5, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
const v4, 0xffff
invoke-static {v0, v3, v4, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
const/4 p1, 0x2
invoke-static {p1, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result p1
:goto_b2
iget v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v0, v2
iput v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iget-object p0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
:goto_bc
return p1
:cond_bd
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v0, p1, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
move-result v4
if-lez v4, :cond_df
invoke-static {v0, p1, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
move-result v3
invoke-static {v0, p2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v3
iget-object v5, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v0, p1, v4, v5, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IICI)I
goto :goto_b2
:cond_df
const/high16 v3, -0x1000
invoke-static {v0, p2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v3
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v5, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v0, p1, v4, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->insertContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
goto :goto_b2
:cond_f1
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContraction(I)Z
move-result v2
if-nez v2, :cond_ff
iget-object p0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
iget p2, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-virtual {p0, v1, p2}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
goto :goto_bc
:cond_ff
const/4 p0, 0x0
iget v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v0, p1, p0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->changeContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
const p0, 0xffff
iget p2, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v0, p1, p0, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->changeContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
goto :goto_bc
.end method
.method private static addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
.registers 7
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
if-nez v0, :cond_13
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAContractionElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
const/4 v2, 0x1
sub-int p1, v1, v2
:cond_13
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
new-instance v2, Ljava/lang/Integer;
invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
invoke-static {v1, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v1
return v1
.end method
.method private static final addExpansion(Ljava/util/Vector;I)I
.registers 4
new-instance v0, Ljava/lang/Integer;
invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Ljava/util/Vector;->size()I
move-result v0
const/4 v1, 0x1
sub-int/2addr v0, v1
return v0
.end method
.method private addFCD4AccentedContractions(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationElementIterator;Ljava/lang/String;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
.registers 12
const/4 v5, 0x0
invoke-static {p3, v5}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v2
invoke-static {p3, v5}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
iput-object v2, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iput v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
invoke-virtual {v4, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
if-nez v3, :cond_40
iput-object v1, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
const/4 v4, 0x0
iput-object v4, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iput v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
invoke-virtual {p2, v2}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
iput v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
:goto_2b
const/4 v4, -0x1
if-eq v0, v4, :cond_3d
iget-object v4, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v5, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
add-int/lit8 v6, v5, 0x1
iput v6, p4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v0, v4, v5
invoke-virtual {p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
goto :goto_2b
:cond_3d
invoke-direct {p0, p1, p4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_40
return-void
.end method
.method private addMultiCMontractions(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationElementIterator;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;[C[IICILjava/lang/String;)I
.registers 29
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
move-object v6, v0
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [C
move-object v8, v0
const/16 v16, 0x0
aput-char p7, v8, v16
invoke-static/range {p7 .. p7}, Lcom/ibm/icu/lang/UCharacter;->getCombiningClass(I)I
move-result v16
move/from16 v0, v16
and-int/lit16 v0, v0, 0xff
move v4, v0
new-instance v7, Ljava/lang/String;
invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
move/from16 v13, p6
const/4 v11, 0x0
:goto_21
move v0, v11
move/from16 v1, p6
if-ge v0, v1, :cond_16f
const/4 v10, 0x0
:cond_27
if-nez v10, :cond_fd
new-instance v16, Ljava/lang/String;
const/16 v17, 0x1
move-object/from16 v0, v16
move-object/from16 v1, p4
move v2, v11
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
const/16 v17, 0x0
invoke-static/range {v16 .. v17}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v12
new-instance v15, Ljava/lang/StringBuffer;
invoke-direct {v15, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
move-object v0, v6
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
move-object/from16 v16, v0
aget-char v16, v16, p8
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v12
:goto_50
const/16 v16, 0x0
move-object v0, v12
move/from16 v1, v16
invoke-static {v0, v1}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v16
const/16 v17, 0x1
move/from16 v0, v16
move/from16 v1, v17
if-ne v0, v1, :cond_15b
move-object v0, v15
move/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v16
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, v16
move-object v1, v7
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
if-nez v14, :cond_110
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v5
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
:goto_db
const/16 v16, -0x1
move v0, v5
move/from16 v1, v16
if-eq v0, v1, :cond_13c
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
move-object/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move/from16 v17, v0
add-int/lit8 v18, v17, 0x1
move/from16 v0, v18
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v5, v16, v17
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v5
goto :goto_db
:cond_fd
new-instance v15, Ljava/lang/StringBuffer;
move-object v0, v15
move-object/from16 v1, p9
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
aget-char v16, p4, v11
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v12
goto/16 :goto_50
:cond_110
move-object v0, v9
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
const/16 v16, 0x1
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
move-object/from16 v16, v0
const/16 v17, 0x0
move-object v0, v14
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
move/from16 v18, v0
aput v18, v16, v17
:cond_13c
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p3
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMapCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
const/16 v16, 0x0
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v16
aput-char v16, p4, v13
aput v4, p5, v13
add-int/lit8 v13, v13, 0x1
:cond_15b
add-int/lit8 v10, v10, 0x1
const/16 v16, 0x2
move v0, v10
move/from16 v1, v16
if-ge v0, v1, :cond_16b
aget v16, p5, v11
move/from16 v0, v16
move v1, v4
if-eq v0, v1, :cond_27
:cond_16b
add-int/lit8 v11, v11, 0x1
goto/16 :goto_21
:cond_16f
return v13
.end method
.method private addPrefix(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
.registers 24
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
move-object v6, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object v12, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move v13, v0
const/16 v16, 0xb
move/from16 v0, v16
move-object v1, v6
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v16
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
sub-int v15, v16, v17
const/4 v9, 0x1
:goto_29
if-ge v9, v15, :cond_52
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
add-int v17, v17, v9
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v16
if-nez v16, :cond_4f
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
move-object/from16 v16, v0
move-object/from16 v0, v16
move v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
:cond_4f
add-int/lit8 v9, v9, 0x1
goto :goto_29
:cond_52
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I
move-result v18
invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
const/4 v9, 0x0
:goto_68
if-ge v9, v15, :cond_93
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v16
sub-int v16, v16, v9
const/16 v17, 0x1
sub-int v11, v16, v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v9, v9, 0x1
goto :goto_68
:cond_93
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilStringBuffer_:Ljava/lang/StringBuffer;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
const/16 v16, 0x0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v16
if-nez v16, :cond_d2
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
move-object/from16 v16, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C
move-result v17
invoke-static/range {v16 .. v17}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
:cond_d2
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v16, v0
move/from16 v0, v16
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
const/16 v18, 0x1
sub-int v17, v17, v18
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v16
if-nez v16, :cond_129
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B
move-object/from16 v16, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
move-result v18
const/16 v19, 0x1
sub-int v18, v18, v19
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C
move-result v17
invoke-static/range {v16 .. v17}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->ContrEndCPSet([BC)V
:cond_129
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isJamo(C)Z
move-result v16
if-eqz v16, :cond_14d
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object/from16 v16, v0
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, v16
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
:cond_14d
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isPrefix(I)Z
move-result v16
if-nez v16, :cond_1a6
const v16, 0xffffff
const/16 v17, 0x0
move-object v0, v6
move/from16 v1, v16
move/from16 v2, v17
move/from16 v3, p2
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
move-result v8
const/high16 v16, -0x1000
move-object v0, v6
move-object/from16 v1, p3
move/from16 v2, v16
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v10
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v16
move-object v0, v6
move v1, v8
move/from16 v2, v16
move v3, v10
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
const v16, 0xffff
move-object v0, v6
move v1, v8
move/from16 v2, v16
move/from16 v3, p2
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
const/16 v16, 0xb
move/from16 v0, v16
move v1, v8
invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result p2
:goto_19b
move-object v0, v12
move-object/from16 v1, p3
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move v0, v13
move-object/from16 v1, p3
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
return p2
:cond_1a6
move-object/from16 v0, p3
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v5
move-object v0, v6
move/from16 v1, p2
move v2, v5
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
move-result v14
if-lez v14, :cond_1da
move-object v0, v6
move/from16 v1, p2
move v2, v14
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
move-result v7
move-object v0, v6
move-object/from16 v1, p3
move v2, v7
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v10
move-object v0, v6
move/from16 v1, p2
move v2, v14
move v3, v5
move v4, v10
invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IICI)I
goto :goto_19b
:cond_1da
const/high16 v16, -0x1000
move-object v0, v6
move-object/from16 v1, p3
move/from16 v2, v16
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-object/from16 v0, p3
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
move/from16 v16, v0
move-object v0, v6
move/from16 v1, p2
move v2, v5
move/from16 v3, v16
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->insertContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
goto :goto_19b
.end method
.method private addTailCanonicalClosures(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationElementIterator;CC)V
.registers 32
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
move-object v5, v0
if-nez v5, :cond_8
:cond_7
return-void
:cond_8
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->index:[I
move-object/from16 v22, v0
invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C
move-result v5
move v0, v5
and-int/lit16 v0, v0, 0xff
move/from16 v16, v0
const/16 v24, 0x0
const/16 v5, 0x100
new-array v9, v5, [C
const/16 v5, 0x100
new-array v10, v5, [I
const/4 v11, 0x0
new-instance v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>()V
if-lez v16, :cond_34
const/4 v5, 0x1
sub-int v5, v16, v5
aget v24, v22, v5
:cond_34
const/4 v13, 0x0
:goto_35
move v0, v13
move/from16 v1, v24
if-ge v0, v1, :cond_7
new-instance v21, Ljava/lang/StringBuffer;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V
move-object/from16 v0, v21
move/from16 v1, p4
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v5
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
move-object v6, v0
aget-char v6, v6, v13
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-static {v5, v6}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_188
const/4 v5, 0x0
move-object/from16 v0, v19
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
aput-char v5, v9, v11
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
move-object v5, v0
aget-char v5, v5, v13
invoke-static {v5}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C
move-result v5
and-int/lit16 v5, v5, 0xff
aput v5, v10, v11
add-int/lit8 v11, v11, 0x1
new-instance v20, Ljava/lang/StringBuffer;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V
const/16 v23, 0x0
:goto_83
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
move/from16 v0, v23
move v1, v5
if-ge v0, v1, :cond_cb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
move v0, v5
move/from16 v1, p5
if-ne v0, v1, :cond_b6
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->cPoints:[C
move-object v5, v0
aget-char v5, v5, v13
move-object/from16 v0, v20
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_b3
add-int/lit8 v23, v23, 0x1
goto :goto_83
:cond_b6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
move-object/from16 v0, v20
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_b3
:cond_cb
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-static {v5, v6}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v19
new-instance v15, Ljava/lang/StringBuffer;
move-object v0, v15
move-object/from16 v1, v19
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
move-object v0, v15
move/from16 v1, p5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object/from16 v0, v20
move/from16 v1, p5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/4 v5, 0x0
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
const/4 v5, 0x0
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
move-object v5, v0
invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v25
check-cast v25, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v0, v19
move-object v1, v8
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v0, v19
move-object v1, v8
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
if-nez v25, :cond_13c
const/4 v5, 0x0
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
const/4 v5, 0x0
iput-object v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v17
const/4 v5, 0x0
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
:goto_127
const/4 v5, -0x1
move/from16 v0, v17
move v1, v5
if-eq v0, v1, :cond_154
iget-object v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v6, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
add-int/lit8 v7, v6, 0x1
iput v7, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v17, v5, v6
invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v17
goto :goto_127
:cond_13c
move-object/from16 v0, v19
move-object v1, v8
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/4 v5, 0x0
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
const/4 v5, 0x0
iput-object v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
const/4 v5, 0x1
iput v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget-object v5, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
const/4 v6, 0x0
move-object/from16 v0, v25
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
move v7, v0
aput v7, v5, v6
:cond_154
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMapCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
move-object/from16 v0, p1
move-object v1, v8
invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v5
const/4 v6, 0x2
if-le v5, v6, :cond_175
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p3
move-object/from16 v3, v19
move-object v4, v8
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addFCD4AccentedContractions(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationElementIterator;Ljava/lang/String;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
:cond_175
const/4 v5, 0x1
if-le v11, v5, :cond_188
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v14
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v7, p3
move/from16 v12, p5
invoke-direct/range {v5 .. v14}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addMultiCMontractions(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationElementIterator;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;[C[IICILjava/lang/String;)I
move-result v11
:cond_188
add-int/lit8 v13, v13, 0x1
goto/16 :goto_35
.end method
.method private allocateWeights(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
.registers 28
const/4 v4, 0x4
sub-int v4, p4, v4
add-int/lit8 v8, v4, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x0
const-wide/16 v6, 0x1
aput-wide v6, v4, v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x1
int-to-long v6, v8
aput-wide v6, v4, v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v6, v0
const/4 v7, 0x1
aget-wide v6, v6, v7
int-to-long v9, v8
mul-long/2addr v6, v9
aput-wide v6, v4, v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v6, v0
const/4 v7, 0x2
aget-wide v6, v6, v7
int-to-long v9, v8
mul-long/2addr v6, v9
aput-wide v6, v4, v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v6, v0
const/4 v7, 0x3
aget-wide v6, v6, v7
int-to-long v9, v8
mul-long/2addr v6, v9
aput-wide v6, v4, v5
move-object/from16 v4, p0
move/from16 v5, p1
move/from16 v6, p2
move/from16 v7, p4
move-object/from16 v9, p5
invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightRanges(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
move-result v21
if-gtz v21, :cond_60
const/4 v4, 0x0
:goto_5f
return v4
:cond_60
const-wide/16 v14, 0x0
const/4 v13, 0x0
:goto_63
move v0, v13
move/from16 v1, v21
if-ge v0, v1, :cond_7f
aget-object v4, p5, v13
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
int-to-long v4, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v6, v0
const/4 v7, 0x4
aget-object v9, p5, v13
iget v9, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
sub-int/2addr v7, v9
aget-wide v6, v6, v7
mul-long/2addr v4, v6
add-long/2addr v14, v4
add-int/lit8 v13, v13, 0x1
goto :goto_63
:cond_7f
move/from16 v0, p3
int-to-long v0, v0
move-wide v4, v0
cmp-long v4, v14, v4
if-gez v4, :cond_89
const/4 v4, 0x0
goto :goto_5f
:cond_89
const/4 v13, 0x0
:goto_8a
move v0, v13
move/from16 v1, v21
if-ge v0, v1, :cond_a2
aget-object v4, p5, v13
aget-object v5, p5, v13
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
aget-object v4, p5, v13
aget-object v5, p5, v13
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
add-int/lit8 v13, v13, 0x1
goto :goto_8a
:cond_a2
const/4 v4, 0x0
aget-object v4, p5, v4
move-object v0, v4
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
move/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCountBuffer_:[I
move-object v4, v0
const/4 v5, 0x0
invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V
const/4 v13, 0x0
:goto_b4
move v0, v13
move/from16 v1, v21
if-ge v0, v1, :cond_ce
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCountBuffer_:[I
move-object v4, v0
aget-object v5, p5, v13
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
aget v6, v4, v5
aget-object v7, p5, v13
iget v7, v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
add-int/2addr v6, v7
aput v6, v4, v5
add-int/lit8 v13, v13, 0x1
goto :goto_b4
:cond_ce
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCountBuffer_:[I
move-object v4, v0
aget v4, v4, v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCountBuffer_:[I
move-object v5, v0
add-int/lit8 v6, v16, 0x1
aget v5, v5, v6
add-int/2addr v4, v5
move/from16 v0, p3
move v1, v4
if-gt v0, v1, :cond_113
const-wide/16 v14, 0x0
const/16 v21, 0x0
:cond_e8
aget-object v4, p5, v21
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
int-to-long v4, v4
add-long/2addr v14, v4
add-int/lit8 v21, v21, 0x1
move/from16 v0, p3
int-to-long v0, v0
move-wide v4, v0
cmp-long v4, v4, v14
if-gtz v4, :cond_e8
:goto_f8
const/4 v4, 0x1
move/from16 v0, v21
move v1, v4
if-le v0, v1, :cond_107
const/4 v4, 0x0
move-object/from16 v0, p5
move v1, v4
move/from16 v2, v21
invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V
:cond_107
const/4 v4, 0x0
aget-object v4, p5, v4
move/from16 v0, p4
move-object v1, v4
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
move/from16 v4, v21
goto/16 :goto_5f
:cond_113
const/4 v4, 0x0
aget-object v4, p5, v4
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
mul-int/2addr v4, v8
move/from16 v0, p3
move v1, v4
if-gt v0, v1, :cond_211
const/16 v21, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLongBuffer_:[J
move-object v4, v0
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
sub-int v5, v16, v5
aget-wide v19, v4, v5
int-to-long v4, v8
mul-long v17, v19, v4
move/from16 v0, p3
int-to-long v0, v0
move-wide v4, v0
add-long v4, v4, v17
const-wide/16 v6, 0x1
sub-long/2addr v4, v6
div-long v4, v4, v17
long-to-int v12, v4
const/4 v4, 0x0
aget-object v4, p5, v4
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
sub-int v11, v4, v12
const/4 v4, 0x1
if-ge v11, v4, :cond_152
const/4 v4, 0x0
move-object/from16 v0, p5
move v1, v4
move/from16 v2, p4
move v3, v8
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->lengthenRange([Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;III)I
goto :goto_f8
:cond_152
const/16 v21, 0x2
const/4 v4, 0x1
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
const/4 v4, 0x1
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
const/4 v4, 0x1
aget-object v4, p5, v4
move/from16 v0, v16
move-object v1, v4
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
const/4 v4, 0x0
aget-object v4, p5, v4
iget v13, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
const/4 v4, 0x0
aget-object v4, p5, v4
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
invoke-static {v4, v13}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v4
add-int/2addr v4, v11
const/4 v5, 0x1
sub-int v10, v4, v5
move v0, v10
move/from16 v1, p4
if-gt v0, v1, :cond_1f5
const/4 v4, 0x0
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
invoke-static {v5, v13, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightByte(III)I
move-result v5
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
:goto_195
shl-int/lit8 v4, p4, 0x18
shl-int/lit8 v5, p4, 0x10
or-int/2addr v4, v5
shl-int/lit8 v5, p4, 0x8
or-int/2addr v4, v5
or-int v10, v4, p4
const/4 v4, 0x0
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
invoke-static {v5, v13}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->truncateWeight(II)I
move-result v5
shl-int/lit8 v6, v13, 0x3
ushr-int v6, v10, v6
const/4 v7, 0x4
sub-int v7, v7, v16
shl-int/lit8 v7, v7, 0x3
shl-int v7, v10, v7
and-int/2addr v6, v7
or-int/2addr v5, v6
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
const/4 v4, 0x1
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
move v0, v5
move/from16 v1, v16
move/from16 v2, p4
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeight(III)I
move-result v5
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
const/4 v4, 0x0
aget-object v4, p5, v4
iput v11, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
const/4 v4, 0x1
aget-object v4, p5, v4
iput v12, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
const/4 v4, 0x0
aget-object v4, p5, v4
int-to-long v5, v11
mul-long v5, v5, v19
long-to-int v5, v5
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
const/4 v4, 0x1
aget-object v4, p5, v4
int-to-long v5, v12
mul-long v5, v5, v19
long-to-int v5, v5
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
const/4 v4, 0x1
move-object/from16 v0, p5
move v1, v4
move/from16 v2, p4
move v3, v8
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->lengthenRange([Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;III)I
goto/16 :goto_f8
:cond_1f5
const/4 v4, 0x0
aget-object v4, p5, v4
const/4 v5, 0x0
aget-object v5, p5, v5
iget v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
const/4 v6, 0x1
sub-int v6, v13, v6
move v0, v5
move v1, v6
move/from16 v2, p4
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeight(III)I
move-result v5
sub-int v6, v10, v8
invoke-static {v5, v13, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightByte(III)I
move-result v5
iput v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
goto :goto_195
:cond_211
const/4 v13, 0x0
:goto_212
aget-object v4, p5, v13
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
move v0, v4
move/from16 v1, v16
if-ne v0, v1, :cond_a2
move-object/from16 v0, p5
move v1, v13
move/from16 v2, p4
move v3, v8
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->lengthenRange([Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;III)I
add-int/lit8 v13, v13, 0x1
goto :goto_212
.end method
.method private assembleTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;)V
.registers 15
const/16 v11, 0x420
const/4 v10, 0x1
const/4 v9, 0x0
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
iget-object v2, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;
iput v9, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
invoke-direct {p0, v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)I
move-result v1
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;
iget-boolean v8, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
invoke-static {v4, v5, v7, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getMaxExpansionJamo(Lcom/ibm/icu/impl/IntTrieBuilder;Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;Z)V
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;
invoke-static {p2, v7}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setAttributes(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationRuleParser$OptionSet;)V
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v6
new-array v7, v6, [I
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
const/4 v3, 0x0
:goto_27
if-ge v3, v6, :cond_3a
iget-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v8
aput v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_27
:cond_3a
if-eqz v1, :cond_61
new-array v7, v1, [C
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
iget-object v7, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
iget-object v8, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
invoke-virtual {v7, v9, v1, v8, v9}, Ljava/lang/StringBuffer;->getChars(II[CI)V
new-array v7, v1, [I
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
const/4 v3, 0x0
:goto_4c
if-ge v3, v1, :cond_61
iget-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
iget-object v8, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v8
aput v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_4c
:cond_61
invoke-static {}, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;->getInstance()Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;
move-result-object v7
invoke-virtual {v4, p1, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->serialize(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;Lcom/ibm/icu/impl/Trie$DataManipulate;)Lcom/ibm/icu/impl/IntTrie;
move-result-object v7
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
iput v9, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
iget-object v7, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v7}, Ljava/util/Vector;->size()I
move-result v6
sub-int v7, v6, v10
new-array v7, v7, [I
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
const/4 v3, 0x1
:goto_7a
if-ge v3, v6, :cond_91
iget-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
sub-int v8, v3, v10
iget-object v9, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v9
aput v9, v7, v8
add-int/lit8 v3, v3, 0x1
goto :goto_7a
:cond_91
sub-int v7, v6, v10
new-array v7, v7, [B
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
const/4 v3, 0x1
:goto_98
if-ge v3, v6, :cond_af
iget-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
sub-int v8, v3, v10
iget-object v9, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Byte;
invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B
move-result v9
aput-byte v9, v7, v8
add-int/lit8 v3, v3, 0x1
goto :goto_98
:cond_af
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPAddCCNZ(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
const/4 v3, 0x0
:goto_b3
if-ge v3, v11, :cond_c6
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
aget-byte v8, v7, v3
sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
aget-byte v9, v9, v3
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_b3
:cond_c6
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
const/4 v3, 0x0
:goto_cb
if-ge v3, v11, :cond_de
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B
aget-byte v8, v7, v3
sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
aget-byte v9, v9, v3
or-int/2addr v8, v9
int-to-byte v8, v8
aput-byte v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_cb
:cond_de
iget-object v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B
iput-object v7, p2, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
return-void
.end method
.method private canonicalClosure(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
.registers 21
new-instance v16, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;
move-object/from16 v0, v16
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object v3, v0
move-object/from16 v0, p0
move-object/from16 v1, v16
move-object v2, v3
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->assembleTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;)V
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object v3, v0
const-string v4, ""
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v6
invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getTypeIterator()Lcom/ibm/icu/util/RangeValueIterator;
move-result-object v18
new-instance v10, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v10}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:goto_2a
move-object/from16 v0, v18
move-object v1, v10
invoke-interface {v0, v1}, Lcom/ibm/icu/util/RangeValueIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v3
if-eqz v3, :cond_46
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object v5, v0
iget v7, v10, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
iget v8, v10, Lcom/ibm/icu/util/RangeValueIterator$Element;->limit:I
iget v9, v10, Lcom/ibm/icu/util/RangeValueIterator$Element;->value:I
move-object/from16 v3, p0
move-object/from16 v4, p1
invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->enumCategoryRangeClosureCategory(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationElementIterator;III)Z
goto :goto_2a
:cond_46
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
move-object v3, v0
move-object v0, v3
move-object/from16 v1, p1
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
const/4 v3, 0x0
move-object v0, v3
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
const/4 v12, 0x0
:goto_57
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object v3, v0
iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I
if-ge v12, v3, :cond_18b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object v3, v0
iget-object v3, v3, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
aget-object v3, v3, v12
move-object v0, v3
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->clear()V
:goto_76
if-eqz v17, :cond_187
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
const/4 v4, 0x0
iput v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
const/4 v4, 0x0
iput v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move v3, v0
if-eqz v3, :cond_131
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move v3, v0
shr-int/lit8 v15, v3, 0x18
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move v3, v0
const v4, 0xffffff
and-int v14, v3, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object v4, v0
iget-object v4, v4, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
add-int v5, v14, v15
invoke-virtual {v4, v14, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move v3, v0
shr-int/lit8 v3, v3, 0x18
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move v4, v0
shr-int/lit8 v4, v4, 0x18
sub-int v15, v3, v4
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move v3, v0
const v4, 0xffffff
and-int/2addr v3, v4
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move v4, v0
shr-int/lit8 v4, v4, 0x18
add-int v14, v3, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object v4, v0
iget-object v4, v4, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
add-int v5, v14, v15
invoke-virtual {v4, v14, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
:goto_ea
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v4, v0
iget-object v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/4 v8, 0x0
move v7, v8
const/4 v13, 0x0
:goto_fb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v4, v0
iget v4, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v3, v4
if-ge v13, v3, :cond_16f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C
move-result v11
and-int/lit16 v3, v11, 0xff
if-nez v3, :cond_15f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C
move-result v7
:goto_12e
:cond_12e
add-int/lit8 v13, v13, 0x1
goto :goto_fb
:cond_131
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
const/4 v4, 0x0
iput-object v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move v3, v0
const v4, 0xffffff
and-int v14, v3, v4
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move v3, v0
ushr-int/lit8 v15, v3, 0x18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object v4, v0
iget-object v4, v4, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
add-int v5, v14, v15
invoke-virtual {v4, v14, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
goto :goto_ea
:cond_15f
if-eqz v7, :cond_12e
if-nez v8, :cond_12e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v3, v0
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C
move-result v8
goto :goto_12e
:cond_16f
if-eqz v7, :cond_17f
if-eqz v8, :cond_17f
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object v5, v0
move-object/from16 v3, p0
move-object/from16 v4, p1
invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addTailCanonicalClosures(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationElementIterator;CC)V
:cond_17f
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
goto/16 :goto_76
:cond_187
add-int/lit8 v12, v12, 0x1
goto/16 :goto_57
:cond_18b
return-void
.end method
.method private static final changeContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
.registers 8
const/high16 v3, -0x1000
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v1
if-nez v1, :cond_a
const/4 v2, 0x0
:goto_9
return v2
:cond_a
const/4 v0, 0x0
:cond_b
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
if-le p2, v2, :cond_1f
add-int/lit8 v0, v0, 0x1
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I
move-result v2
if-le v0, v2, :cond_b
move v2, v3
goto :goto_9
:cond_1f
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
if-ne p2, v2, :cond_36
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
new-instance v3, Ljava/lang/Integer;
invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
const v2, 0xffffff
and-int/2addr v2, p1
goto :goto_9
:cond_36
move v2, v3
goto :goto_9
.end method
.method private static final changeLastCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
.registers 7
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
iget-object v2, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
const/4 v3, 0x1
sub-int/2addr v2, v3
new-instance v3, Ljava/lang/Integer;
invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
const v2, 0xffffff
and-int/2addr v2, p1
invoke-static {v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v1
goto :goto_7
.end method
.method private static final constructSpecialCE(II)I
.registers 4
const/high16 v0, -0x1000
shl-int/lit8 v1, p0, 0x18
or-int/2addr v0, v1
const v1, 0xffffff
and-int/2addr v1, p1
or-int/2addr v0, v1
return v0
.end method
.method private constructTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)I
.registers 25
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I
move-result v17
if-nez v17, :cond_f
const/16 v18, 0x0
:goto_e
return v18
:cond_f
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V
const/4 v15, 0x0
const/4 v12, 0x0
:goto_1a
move v0, v12
move/from16 v1, v17
if-ge v0, v1, :cond_4e
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;
move-object/from16 v18, v0
new-instance v19, Ljava/lang/Integer;
move-object/from16 v0, v19
move v1, v15
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v12
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I
move-result v18
add-int v15, v15, v18
add-int/lit8 v12, v12, 0x1
goto :goto_1a
:cond_4e
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I
move-result v20
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
move-object v11, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;
move-object v4, v0
const/4 v12, 0x0
:goto_77
move v0, v12
move/from16 v1, v17
if-ge v0, v1, :cond_15b
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v12
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-object v0, v5
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I
move-result v16
const/4 v7, 0x0
const/16 v8, 0xff
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v14
move-object v0, v5
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v18
move-object v0, v4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
const/4 v13, 0x1
:goto_ad
move v0, v13
move/from16 v1, v16
if-ge v0, v1, :cond_ea
move-object v0, v5
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v10
invoke-static {v10}, Lcom/ibm/icu/lang/UCharacter;->getCombiningClass(I)I
move-result v18
move/from16 v0, v18
and-int/lit16 v0, v0, 0xff
move/from16 v18, v0
move/from16 v0, v18
int-to-char v0, v0
move v6, v0
if-le v6, v7, :cond_cf
move v7, v6
:cond_cf
if-ge v6, v8, :cond_d2
move v8, v6
:cond_d2
invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object v0, v5
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v13
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v18
move-object v0, v4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
add-int/lit8 v13, v13, 0x1
goto :goto_ad
:cond_ea
if-ne v8, v7, :cond_154
const/16 v18, 0x1
:goto_ee
or-int v18, v18, v7
move/from16 v0, v18
int-to-char v0, v0
move/from16 v18, v0
move-object v0, v11
move v1, v14
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
const/4 v13, 0x0
:goto_fd
move v0, v13
move/from16 v1, v16
if-ge v0, v1, :cond_157
add-int v18, v14, v13
move-object v0, v4
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I
move-result v18
invoke-static/range {v18 .. v18}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v18
if-eqz v18, :cond_151
add-int v18, v14, v13
move-object v0, v4
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I
move-result v9
add-int v18, v14, v13
new-instance v19, Ljava/lang/Integer;
invoke-static {v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v20
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;
move-object/from16 v21, v0
invoke-static {v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getContractionOffset(I)I
move-result v22
invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I
move-result v21
invoke-static/range {v20 .. v21}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v20
invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V
move-object v0, v4
move/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_151
add-int/lit8 v13, v13, 0x1
goto :goto_fd
:cond_154
const/16 v18, 0x0
goto :goto_ee
:cond_157
add-int/lit8 v12, v12, 0x1
goto/16 :goto_77
:cond_15b
const/4 v12, 0x0
:goto_15c
const v18, 0x10ffff
move v0, v12
move/from16 v1, v18
if-gt v0, v1, :cond_1a3
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v12
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v3
invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v18
if-eqz v18, :cond_1a0
invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v18
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;
move-object/from16 v19, v0
invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getContractionOffset(I)I
move-result v20
invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I
move-result v19
invoke-static/range {v18 .. v19}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v3
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
move-object/from16 v18, v0
move-object/from16 v0, v18
move v1, v12
move v2, v3
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
:cond_1a0
add-int/lit8 v12, v12, 0x1
goto :goto_15c
:cond_1a3
move/from16 v18, v15
goto/16 :goto_e
.end method
.method private copyRangeFromUCA(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;II)V
.registers 13
const/4 v8, -0x1
const/high16 v7, -0x1000
const/4 v6, 0x0
const/4 v1, 0x0
move v1, p2
:goto_6
if-gt v1, p3, :cond_65
iget-object v2, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v0
if-eq v0, v7, :cond_1e
invoke-static {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v2
if-eqz v2, :cond_62
iget-object v2, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
invoke-static {v2, v0, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
move-result v2
if-ne v2, v7, :cond_62
:cond_1e
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput v6, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput v6, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v3, 0x0
iput-object v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
:goto_44
:cond_44
if-eq v0, v8, :cond_5d
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
if-eq v0, v8, :cond_44
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v2, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v4, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
add-int/lit8 v5, v4, 0x1
iput v5, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v0, v2, v4
goto :goto_44
:cond_5d
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {p0, p1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_62
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_65
return-void
.end method
.method private static final countBytes(I)I
.registers 4
const/4 v0, -0x1
const/4 v1, 0x0
:goto_2
if-eqz v0, :cond_d
and-int v2, p0, v0
if-eqz v2, :cond_a
add-int/lit8 v1, v1, 0x1
:cond_a
ushr-int/lit8 v0, v0, 0x8
goto :goto_2
:cond_d
return v1
.end method
.method private createElements(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
.registers 24
move-object/from16 v0, p2
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->clear()V
:goto_e
if-eqz v15, :cond_2ef
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I
move/from16 v16, v0
if-eqz v16, :cond_108
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I
move/from16 v16, v0
ushr-int/lit8 v10, v16, 0x18
move v4, v10
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I
move/from16 v16, v0
const v17, 0xffffff
and-int v5, v16, v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
or-int v17, v4, v5
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
:goto_4f
:cond_4f
if-lez v10, :cond_10f
move v4, v10
:goto_52
if-lez v4, :cond_b7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
shl-int/lit8 v17, v4, 0x18
or-int v17, v17, v5
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/ibm/icu/text/CollationRuleParser$Token;
if-eqz v6, :cond_f0
move-object v0, v6
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
move/from16 v16, v0
const v17, -0x21524111
move/from16 v0, v16
move/from16 v1, v17
if-eq v0, v1, :cond_f0
iget v11, v6, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
const/4 v9, 0x0
:goto_8f
if-ge v9, v11, :cond_a9
move-object v0, v15
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCE_:[I
move-object/from16 v16, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
move/from16 v17, v0
add-int v17, v17, v9
move-object v0, v6
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
move-object/from16 v18, v0
aget v18, v18, v9
aput v18, v16, v17
add-int/lit8 v9, v9, 0x1
goto :goto_8f
:cond_a9
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
move/from16 v16, v0
add-int v16, v16, v11
move/from16 v0, v16
move-object v1, v15
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
add-int/2addr v5, v4
sub-int/2addr v10, v4
:cond_b7
if-nez v4, :cond_4f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
move-object/from16 v17, v0
add-int/lit8 v18, v5, 0x1
move-object/from16 v0, v17
move v1, v5
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
:goto_d9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v13
const/16 v16, -0x1
move v0, v13
move/from16 v1, v16
if-ne v0, v1, :cond_f4
add-int/lit8 v5, v5, 0x1
add-int/lit8 v10, v10, -0x1
goto/16 :goto_4f
:cond_f0
add-int/lit8 v4, v4, -0x1
goto/16 :goto_52
:cond_f4
move-object v0, v15
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCE_:[I
move-object/from16 v16, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
move/from16 v17, v0
add-int/lit8 v18, v17, 0x1
move/from16 v0, v18
move-object v1, v15
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
aput v13, v16, v17
goto :goto_d9
:cond_108
const/16 v16, 0x0
move/from16 v0, v16
move-object v1, v15
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
:cond_10f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
move/from16 v17, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
move/from16 v18, v0
add-int v17, v17, v18
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move-object v0, v15
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
move-object/from16 v18, v0
const/16 v19, 0x0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
move/from16 v20, v0
invoke-static/range {v16 .. v20}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v15
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCE_:[I
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
move-object/from16 v18, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
move/from16 v19, v0
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
move/from16 v20, v0
invoke-static/range {v16 .. v20}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move/from16 v16, v0
if-eqz v16, :cond_282
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move/from16 v16, v0
shr-int/lit8 v14, v16, 0x18
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move/from16 v16, v0
const v17, 0xffffff
and-int v12, v16, v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
move-object/from16 v17, v0
add-int v18, v12, v14
move-object/from16 v0, v17
move v1, v12
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move/from16 v16, v0
shr-int/lit8 v16, v16, 0x18
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move/from16 v17, v0
shr-int/lit8 v17, v17, 0x18
sub-int v14, v16, v17
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move/from16 v16, v0
const v17, 0xffffff
and-int v16, v16, v17
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I
move/from16 v17, v0
shr-int/lit8 v17, v17, 0x18
add-int v12, v16, v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
move-object/from16 v17, v0
add-int v18, v12, v14
move-object/from16 v0, v17
move v1, v12
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
:goto_201
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/4 v3, 0x0
const/4 v8, 0x0
:goto_21b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move/from16 v17, v0
sub-int v16, v16, v17
move v0, v8
move/from16 v1, v16
if-ge v0, v1, :cond_265
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
move v1, v8
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isJamo(C)Z
move-result v16
if-eqz v16, :cond_2c6
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;
move-object/from16 v16, v0
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, v16
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
:cond_265
sget-boolean v16, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->buildCMTabFlag:Z
if-nez v16, :cond_26f
if-eqz v3, :cond_26f
const/16 v16, 0x1
sput-boolean v16, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->buildCMTabFlag:Z
:cond_26f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
iget-object v15, v15, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
goto/16 :goto_e
:cond_282
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move/from16 v16, v0
const v17, 0xffffff
and-int v12, v16, v17
move-object v0, v15
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
move/from16 v16, v0
ushr-int/lit8 v14, v16, 0x18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;
move-object/from16 v17, v0
add-int v18, v12, v14
move-object/from16 v0, v17
move v1, v12
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
goto/16 :goto_201
:cond_2c6
sget-boolean v16, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->buildCMTabFlag:Z
if-nez v16, :cond_2e9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
move v1, v8
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C
move-result v7
move v0, v7
and-int/lit16 v0, v0, 0xff
move/from16 v16, v0
if-nez v16, :cond_2ed
const/4 v3, 0x0
:goto_2e9
:cond_2e9
add-int/lit8 v8, v8, 0x1
goto/16 :goto_21b
:cond_2ed
const/4 v3, 0x1
goto :goto_2e9
:cond_2ef
return-void
.end method
.method private static decWeightTrail(II)I
.registers 4
const/4 v0, 0x1
const/4 v1, 0x4
sub-int/2addr v1, p1
shl-int/lit8 v1, v1, 0x3
shl-int/2addr v0, v1
sub-int v0, p0, v0
return v0
.end method
.method private doCE([ILcom/ibm/icu/text/CollationRuleParser$Token;)V
.registers 16
const/16 v12, 0x20
const/4 v11, 0x2
const/4 v9, 0x1
const/4 v10, 0x0
const/4 v2, 0x0
:goto_6
const/4 v7, 0x3
if-ge v2, v7, :cond_16
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v8, p1, v2
invoke-static {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->countBytes(I)I
move-result v8
aput v8, v7, v2
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_16
const/4 v1, 0x0
const/4 v6, 0x0
:goto_18
shl-int/lit8 v7, v1, 0x1
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v8, v8, v10
if-lt v7, v8, :cond_2c
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v7, v7, v9
if-lt v1, v7, :cond_2c
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v7, v7, v11
if-ge v1, v7, :cond_77
:cond_2c
if-lez v1, :cond_75
const/16 v6, 0xc0
:goto_30
shl-int/lit8 v7, v1, 0x1
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v8, v8, v10
if-ge v7, v8, :cond_48
aget v7, p1, v10
add-int/lit8 v8, v1, 0x1
shl-int/lit8 v8, v8, 0x4
sub-int v8, v12, v8
shr-int/2addr v7, v8
const v8, 0xffff
and-int/2addr v7, v8
shl-int/lit8 v7, v7, 0x10
or-int/2addr v6, v7
:cond_48
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v7, v7, v9
if-ge v1, v7, :cond_5c
aget v7, p1, v9
add-int/lit8 v8, v1, 0x1
shl-int/lit8 v8, v8, 0x3
sub-int v8, v12, v8
shr-int/2addr v7, v8
and-int/lit16 v7, v7, 0xff
shl-int/lit8 v7, v7, 0x8
or-int/2addr v6, v7
:cond_5c
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
aget v7, v7, v11
if-ge v1, v7, :cond_6e
aget v7, p1, v11
add-int/lit8 v8, v1, 0x1
shl-int/lit8 v8, v8, 0x3
sub-int v8, v12, v8
shr-int/2addr v7, v8
and-int/lit8 v7, v7, 0x3f
or-int/2addr v6, v7
:cond_6e
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
aput v6, v7, v1
add-int/lit8 v1, v1, 0x1
goto :goto_18
:cond_75
const/4 v6, 0x0
goto :goto_30
:cond_77
if-nez v1, :cond_a7
iput v9, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
aput v10, v7, v10
:goto_7f
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
aget v7, v7, v10
if-eqz v7, :cond_a6
iget v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
and-int/lit16 v4, v7, 0xff
iget v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
ushr-int/lit8 v7, v7, 0x18
if-le v7, v9, :cond_aa
iget v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
ushr-int/lit8 v3, v7, 0x18
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
add-int v8, v4, v3
invoke-virtual {v7, v4, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v5
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
aget v8, v7, v10
invoke-direct {p0, v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCaseBits(Ljava/lang/String;)I
move-result v9
or-int/2addr v8, v9
aput v8, v7, v10
:goto_a6
:cond_a6
return-void
:cond_a7
iput v1, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
goto :goto_7f
:cond_aa
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v7
invoke-direct {p0, v7}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getFirstCE(C)I
move-result v0
iget-object v7, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
aget v8, v7, v10
and-int/lit16 v9, v0, 0xc0
or-int/2addr v8, v9
aput v8, v7, v10
goto :goto_a6
.end method
.method private enumCategoryRangeClosureCategory(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationElementIterator;III)Z
.registers 19
if-eqz p6, :cond_98
const/16 v8, 0x11
move/from16 v0, p6
move v1, v8
if-eq v0, v1, :cond_98
move/from16 v7, p4
:goto_b
move v0, v7
move/from16 v1, p5
if-ge v0, v1, :cond_98
const/4 v8, 0x0
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCharBuffer_:[C
const/4 v10, 0x0
const/16 v11, 0x100
invoke-static {v7, v8, v9, v10, v11}, Lcom/ibm/icu/impl/NormalizerImpl;->getDecomposition(IZ[CII)I
move-result v5
if-lez v5, :cond_94
invoke-static {v7}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/String;
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCharBuffer_:[C
const/4 v9, 0x0
invoke-direct {v4, v8, v9, v5}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->equals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_94
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput-object v4, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v8, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
if-nez v6, :cond_73
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput-object v3, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput-object v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {p3, v4}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
invoke-virtual {p3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
:goto_5d
const/4 v8, -0x1
if-eq v2, v8, :cond_8f
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget v10, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
add-int/lit8 v11, v10, 0x1
iput v11, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v2, v8, v10
invoke-virtual {p3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
goto :goto_5d
:cond_73
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput-object v3, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x0
iput-object v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v9, 0x1
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
const/4 v9, 0x0
iget v10, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
aput v10, v8, v9
:cond_8f
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {p0, p1, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_94
add-int/lit8 v7, v7, 0x1
goto/16 :goto_b
:cond_98
const/4 v8, 0x1
return v8
.end method
.method private static final finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
.registers 12
const/4 v9, 0x1
const/4 v8, 0x0
const/high16 v0, -0x1000
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
if-nez v5, :cond_25
const/4 v3, 0x0
:goto_9
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-ge v3, v5, :cond_25
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v5
if-nez v5, :cond_22
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
invoke-static {v5, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
:cond_22
add-int/lit8 v3, v3, 0x1
goto :goto_9
:cond_25
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
iget v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v5, v6
if-le v5, v9, :cond_43
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-static {v5, v6}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v2
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v0
invoke-static {p0, v0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;ILcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
move-result v0
:goto_42
:cond_42
return v0
:cond_43
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v0
const/high16 v5, -0x1000
if-eq v0, v5, :cond_b1
invoke-static {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v5
if-eqz v5, :cond_72
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isPrefix(I)Z
move-result v5
if-nez v5, :cond_42
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
iget v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v5, v0, v8, v8, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IICI)I
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
iget v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {v5, v0, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->changeLastCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
goto :goto_42
:cond_72
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
iget v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-virtual {v5, v6, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
if-eqz v5, :cond_42
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_42
invoke-static {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v5
const/16 v6, 0xa
if-eq v5, v6, :cond_42
new-instance v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>()V
const/4 v5, 0x0
iput-object v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput-object v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v5, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aput v0, v5, v8
iput v0, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iput v9, v4, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
invoke-static {p0, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->finalizeAddition(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
goto :goto_42
:cond_b1
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
iget-object v6, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
iget v7, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-virtual {v5, v6, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
goto :goto_42
.end method
.method private static findCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
.registers 7
const/high16 v3, -0x1000
if-nez p0, :cond_6
move v2, v3
:goto_5
return v2
:cond_6
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v1
if-nez v1, :cond_e
move v2, v3
goto :goto_5
:cond_e
invoke-static {v1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;C)I
move-result v0
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
if-gt v0, v2, :cond_1c
if-gez v0, :cond_1e
:cond_1c
move v2, v3
goto :goto_5
:cond_1e
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v2
goto :goto_5
.end method
.method private static findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;C)I
.registers 5
const/4 v2, -0x1
const/4 v0, 0x0
:cond_2
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v1
if-le p1, v1, :cond_16
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
if-le v0, v1, :cond_2
move v1, v2
:goto_15
return v1
:cond_16
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v1
if-ne p1, v1, :cond_20
move v1, v0
goto :goto_15
:cond_20
move v1, v2
goto :goto_15
.end method
.method private static findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
.registers 7
const/4 v3, -0x1
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v1
if-nez v1, :cond_9
move v2, v3
:goto_8
return v2
:cond_9
const/4 v0, 0x0
:cond_a
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
if-le p2, v2, :cond_1e
add-int/lit8 v0, v0, 0x1
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I
move-result v2
if-le v0, v2, :cond_a
move v2, v3
goto :goto_8
:cond_1e
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
if-ne p2, v2, :cond_28
move v2, v0
goto :goto_8
:cond_28
move v2, v3
goto :goto_8
.end method
.method private static final getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
.registers 3
const v0, 0xffffff
and-int/2addr p1, v0
if-ne p1, v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-object v0, p0
goto :goto_7
.end method
.method private static final getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
.registers 6
const/high16 v2, -0x1000
const v1, 0xffffff
and-int/2addr p1, v1
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
if-nez v0, :cond_e
move v1, v2
:goto_d
return v1
:cond_e
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
if-gt p2, v1, :cond_19
const/4 v1, -0x1
if-ne p2, v1, :cond_1b
:cond_19
move v1, v2
goto :goto_d
:cond_1b
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v1
goto :goto_d
.end method
.method private getCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;[I[ILcom/ibm/icu/text/CollationRuleParser$Token;I)I
.registers 15
iget v8, p4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
mul-int/lit8 v0, p5, 0x3
add-int/2addr v0, v8
aget v1, p2, v0
mul-int/lit8 v0, p5, 0x3
add-int/2addr v0, v8
aget v2, p3, v0
const/4 v4, 0x0
const/4 v0, 0x2
if-ne v8, v0, :cond_7e
const/16 v4, 0x3f
:goto_12
iget v3, p4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_toInsert_:I
invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-ltz v0, :cond_35
if-lez v8, :cond_35
move v7, v8
:cond_1d
add-int/lit8 v7, v7, -0x1
mul-int/lit8 v0, p5, 0x3
add-int/2addr v0, v7
aget v0, p2, v0
mul-int/lit8 v2, p5, 0x3
add-int/2addr v2, v7
aget v2, p3, v2
if-eq v0, v2, :cond_8f
const/4 v0, 0x1
if-ne v8, v0, :cond_86
const/high16 v0, -0x7a00
if-ge v1, v0, :cond_34
const/high16 v1, -0x7a00
:cond_34
const/4 v2, -0x1
:goto_35
:cond_35
if-nez v1, :cond_39
const/high16 v1, 0x100
:cond_39
const/4 v0, 0x1
if-ne v8, v0, :cond_9a
const/high16 v0, 0x500
invoke-static {v1, v0}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-ltz v0, :cond_b8
const/high16 v0, -0x7a00
invoke-static {v1, v0}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-gez v0, :cond_b8
const/high16 v1, -0x7a00
move v6, v1
:goto_4f
const/high16 v0, 0x500
invoke-static {v2, v0}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-lez v0, :cond_61
const/high16 v0, -0x7a00
invoke-static {v2, v0}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-gez v0, :cond_61
const/high16 v2, -0x7a00
:cond_61
const/high16 v0, 0x500
invoke-static {v6, v0}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v0
if-gez v0, :cond_99
const/high16 v1, 0x300
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->allocateWeights(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->nextWeight(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
move v1, v6
:goto_7d
return v0
:cond_7e
if-nez v8, :cond_83
const/16 v4, 0xfe
goto :goto_12
:cond_83
const/16 v4, 0xff
goto :goto_12
:cond_86
const/high16 v0, 0x500
if-ge v1, v0, :cond_8c
const/high16 v1, 0x500
:cond_8c
const/high16 v2, 0x4000
goto :goto_35
:cond_8f
if-gez v7, :cond_1d
new-instance v0, Ljava/lang/Exception;
const-string v1, "Internal program error"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_99
move v1, v6
:cond_9a
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->allocateWeights(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
if-nez v0, :cond_af
new-instance v0, Ljava/lang/Exception;
const-string v1, "Internal program error"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_af
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->nextWeight(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
goto :goto_7d
:cond_b8
move v6, v1
goto :goto_4f
.end method
.method private static final getCETag(I)I
.registers 2
const/high16 v0, 0xf00
and-int/2addr v0, p0
ushr-int/lit8 v0, v0, 0x18
return v0
.end method
.method private final getCaseBits(Ljava/lang/String;)I
.registers 10
const/16 v7, 0x80
const/4 v4, 0x0
const/4 v2, 0x0
const/4 v5, 0x1
invoke-static {p1, v5}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object p1
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v5, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
const/4 v1, 0x0
:goto_f
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
if-ge v1, v5, :cond_59
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
add-int/lit8 v6, v1, 0x1
invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v3
invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-eqz v5, :cond_34
new-instance v5, Ljava/lang/Exception;
const-string v6, "Internal program error"
invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v5
:cond_34
and-int/lit16 v5, v3, 0xc0
if-ne v5, v7, :cond_3d
add-int/lit8 v4, v4, 0x1
:goto_3a
:cond_3a
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_3d
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z
move-result v5
if-eqz v5, :cond_4a
add-int/lit8 v2, v2, 0x1
goto :goto_3a
:cond_4a
invoke-static {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->toSmallKana(C)C
move-result v5
if-ne v5, v0, :cond_3a
invoke-static {v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->toLargeKana(C)C
move-result v5
if-eq v5, v0, :cond_3a
add-int/lit8 v2, v2, 0x1
goto :goto_3a
:cond_59
if-eqz v4, :cond_60
if-eqz v2, :cond_60
const/16 v5, 0x40
:goto_5f
return v5
:cond_60
if-eqz v4, :cond_64
move v5, v7
goto :goto_5f
:cond_64
const/4 v5, 0x0
goto :goto_5f
.end method
.method private static final getContractionOffset(I)I
.registers 2
const v0, 0xffffff
and-int/2addr v0, p0
return v0
.end method
.method private getFirstCE(C)I
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
return v0
.end method
.method private static getMaxExpansionJamo(Lcom/ibm/icu/impl/IntTrieBuilder;Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;Z)V
.registers 11
const/16 v2, 0x1161
const/16 v0, 0x11a8
const/16 v3, 0x15
const/16 v1, 0x1c
add-int/2addr v3, v2
const/4 v4, 0x1
sub-int v4, v3, v4
add-int/2addr v1, v0
const/4 v3, 0x1
sub-int v3, v1, v3
:goto_10
if-lt v4, v2, :cond_85
invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v1
const/high16 v5, -0x1000
and-int/2addr v5, v1
const/high16 v6, -0x1000
if-eq v5, v6, :cond_21
const/4 v5, 0x2
invoke-static {v1, v5, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
:cond_21
add-int/lit8 v1, v4, -0x1
move v4, v1
goto :goto_10
:goto_25
if-lt v2, v0, :cond_3a
invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v1
const/high16 v3, -0x1000
and-int/2addr v3, v1
const/high16 v4, -0x1000
if-eq v3, v4, :cond_36
const/4 v3, 0x3
invoke-static {v1, v3, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
:cond_36
add-int/lit8 v1, v2, -0x1
move v2, v1
goto :goto_25
:cond_3a
if-eqz p3, :cond_84
iget-object p0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {p0}, Ljava/util/Vector;->size()I
move-result p0
iget-byte p3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
iget-byte v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
add-int/2addr p3, v0
iget-byte v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
add-int/2addr p3, v0
int-to-byte p3, p3
iget-byte v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
iget-byte v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
add-int/2addr v0, v1
int-to-byte v0, v0
:goto_51
if-lez p0, :cond_84
add-int/lit8 p0, p0, -0x1
iget-object v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
invoke-virtual {v1, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_74
iget-object v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v1, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1, v0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
goto :goto_51
:cond_74
iget-object v1, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v1, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1, p3, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
goto :goto_51
:cond_84
return-void
:cond_85
move v2, v3
goto :goto_25
.end method
.method private getNextGenerated(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
.registers 3
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->nextWeight(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
return v0
.end method
.method private getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
.registers 10
const/4 v3, 0x1
const/4 v0, 0x2
if-ne p3, v0, :cond_36
const/16 v0, 0x3f
move v4, v0
:goto_7
const/4 v0, 0x1
if-ne p3, v0, :cond_3a
const/high16 v1, -0x7a00
const/4 v2, -0x1
const/16 v3, 0x79
:goto_f
iget-object v0, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
if-eqz v0, :cond_1d
iget-object v0, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-ne v0, p3, :cond_1d
iget-object v0, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v3, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_toInsert_:I
:cond_1d
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->allocateWeights(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
move-result v0
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
const/high16 v0, 0x500
iput v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
if-nez v0, :cond_41
new-instance v0, Ljava/lang/Exception;
const-string v5, "Internal program error"
invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_36
const/16 v0, 0xff
move v4, v0
goto :goto_7
:cond_3a
const/high16 v1, 0x500
const/high16 v2, 0x4000
const/16 v3, 0x3b
goto :goto_f
:cond_41
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_current_:I
return v0
.end method
.method private static final getWeightByte(II)I
.registers 3
const/4 v0, 0x4
sub-int/2addr v0, p1
shl-int/lit8 v0, v0, 0x3
shr-int v0, p0, v0
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method private getWeightRanges(IIII[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)I
.registers 18
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->lengthOfWeight(I)I
move-result v2
invoke-static {p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->lengthOfWeight(I)I
move-result v6
invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v8
if-ltz v8, :cond_10
const/4 v8, 0x0
:goto_f
return v8
:cond_10
if-ge v2, v6, :cond_1a
invoke-static {p2, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->truncateWeight(II)I
move-result v8
if-ne p1, v8, :cond_1a
const/4 v8, 0x0
goto :goto_f
:cond_1a
const/4 v1, 0x0
:goto_1b
const/4 v8, 0x5
if-ge v1, v8, :cond_2f
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-virtual {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->clear()V
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-virtual {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->clear()V
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_2f
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-virtual {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->clear()V
move v7, p1
move v1, v2
:goto_36
const/4 v8, 0x2
if-lt v1, v8, :cond_72
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-virtual {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->clear()V
invoke-static {v7, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v5
if-ge v5, p3, :cond_68
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-static {v7, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeightTrail(II)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-static {v7, v1, p3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightTrail(III)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iput v1, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
sub-int v9, p3, v5
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
:cond_68
const/4 v8, 0x1
sub-int v8, v1, v8
invoke-static {v7, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->truncateWeight(II)I
move-result v7
add-int/lit8 v1, v1, -0x1
goto :goto_36
:cond_72
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/4 v9, 0x1
invoke-static {v7, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeightTrail(II)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
move v7, p2
move v1, v6
:goto_7d
const/4 v8, 0x2
if-lt v1, v8, :cond_b5
invoke-static {v7, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v5
const/4 v8, 0x4
if-le v5, v8, :cond_ab
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
const/4 v9, 0x4
invoke-static {v7, v1, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightTrail(III)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-static {v7, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->decWeightTrail(II)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iput v1, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
const/4 v9, 0x4
sub-int v9, v5, v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
:cond_ab
const/4 v8, 0x1
sub-int v8, v1, v8
invoke-static {v7, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->truncateWeight(II)I
move-result v7
add-int/lit8 v1, v1, -0x1
goto :goto_7d
:cond_b5
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/4 v9, 0x1
invoke-static {v7, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->decWeightTrail(II)I
move-result v9
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/4 v9, 0x1
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v9, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
invoke-static {v8, v9}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v8
if-ltz v8, :cond_125
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v9, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v10, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v10, v10, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
sub-int/2addr v9, v10
ushr-int/lit8 v9, v9, 0x18
add-int/lit8 v9, v9, 0x1
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
:cond_e2
const/4 v3, 0x0
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
if-lez v8, :cond_f4
const/4 v8, 0x0
new-instance v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget-object v10, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v9, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)V
aput-object v9, p5, v8
const/4 v3, 0x1
:cond_f4
const/4 v1, 0x2
:goto_f5
const/4 v8, 0x4
if-gt v1, v8, :cond_1a4
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
if-lez v8, :cond_10d
new-instance v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v9, v9, v1
invoke-direct {v8, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)V
aput-object v8, p5, v3
add-int/lit8 v3, v3, 0x1
:cond_10d
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
if-lez v8, :cond_122
new-instance v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v9, v9, v1
invoke-direct {v8, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)V
aput-object v8, p5, v3
add-int/lit8 v3, v3, 0x1
:cond_122
add-int/lit8 v1, v1, 0x1
goto :goto_f5
:cond_125
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilWeightRange_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
const/4 v1, 0x4
:goto_12b
const/4 v8, 0x2
if-lt v1, v8, :cond_e2
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
if-lez v8, :cond_1a1
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v8, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
if-lez v8, :cond_1a1
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v4, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v0, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
if-ge v0, v4, :cond_152
invoke-static {v0, v1, p3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeight(III)I
move-result v8
if-ne v8, v4, :cond_1a1
:cond_152
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget v4, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v9, v9, v1
iget v0, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iput v0, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v9
invoke-static {v4, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v10
sub-int/2addr v9, v10
add-int/lit8 v9, v9, 0x1
const/4 v10, 0x1
sub-int v10, v1, v10
invoke-static {v0, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v10
const/4 v11, 0x1
sub-int v11, v1, v11
invoke-static {v4, v11}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v11
sub-int/2addr v10, v11
mul-int v10, v10, p4
add-int/2addr v9, v10
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
const/4 v9, 0x0
iput v9, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
:goto_18e
add-int/lit8 v1, v1, -0x1
const/4 v8, 0x2
if-lt v1, v8, :cond_e2
iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilLowerWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v8, v8, v1
iget-object v9, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilUpperWeightRange_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v9, v9, v1
const/4 v10, 0x0
iput v10, v9, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iput v10, v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
goto :goto_18e
:cond_1a1
add-int/lit8 v1, v1, -0x1
goto :goto_12b
:cond_1a4
move v8, v3
goto/16 :goto_f
.end method
.method private static final incWeight(III)I
.registers 5
:goto_0
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getWeightByte(II)I
move-result v0
if-ge v0, p2, :cond_d
add-int/lit8 v1, v0, 0x1
invoke-static {p0, p1, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightByte(III)I
move-result v1
return v1
:cond_d
const/4 v1, 0x4
invoke-static {p0, p1, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightByte(III)I
move-result p0
add-int/lit8 p1, p1, -0x1
goto :goto_0
.end method
.method private static final incWeightTrail(II)I
.registers 4
const/4 v0, 0x1
const/4 v1, 0x4
sub-int/2addr v1, p1
shl-int/lit8 v1, v1, 0x3
shl-int/2addr v0, v1
add-int/2addr v0, p0
return v0
.end method
.method private initBuffers(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
.registers 14
const/4 v11, -0x1
const/4 v10, 0x0
const/4 v9, 0x1
const/4 v8, 0x2
iget-object v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
const/16 v1, 0x10
invoke-static {v0, v10, v1, v10}, Ljava/util/Arrays;->fill([IIII)V
iput v9, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_toInsert_:I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aput v9, v0, v1
:goto_15
iget-object v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
if-eqz v0, :cond_5a
iget-object v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-ge v0, v1, :cond_3e
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aput v10, v0, v1
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget-object v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v1, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aget v2, v0, v1
add-int/lit8 v2, v2, 0x1
aput v2, v0, v1
:goto_33
iget-object v4, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aget v0, v0, v1
iput v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_toInsert_:I
goto :goto_15
:cond_3e
iget-object v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-le v0, v1, :cond_4f
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget-object v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iget v1, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aput v9, v0, v1
goto :goto_33
:cond_4f
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aget v2, v0, v1
add-int/lit8 v2, v2, 0x1
aput v2, v0, v1
goto :goto_33
:cond_5a
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilIntBuffer_:[I
iget v1, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
aget v0, v0, v1
iput v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_toInsert_:I
sget-object v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->getInverseGapPositions(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
iget-object v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
const/16 v5, 0xf
const/16 v6, 0xf
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I
iget v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I
invoke-static {v1, v2, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
move-result v1
aput v1, v0, v10
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I
iget v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I
invoke-static {v1, v2, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
move-result v1
aput v1, v0, v9
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I
iget v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I
invoke-static {v1, v2, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
move-result v1
aput v1, v0, v8
:goto_91
if-eqz v4, :cond_195
iget v5, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-ge v5, v6, :cond_13c
move v6, v5
iget-object v0, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I
aget v0, v0, v5
if-ne v0, v11, :cond_b7
:goto_9e
iget-object v0, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I
aget v0, v0, v5
if-ne v0, v11, :cond_a9
if-lez v5, :cond_a9
add-int/lit8 v5, v5, -0x1
goto :goto_9e
:cond_a9
iget-object v0, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I
aget v0, v0, v5
if-ne v0, v11, :cond_b7
new-instance v0, Ljava/lang/Exception;
const-string v1, "Internal program error"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_b7
if-ne v6, v8, :cond_e8
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
mul-int/lit8 v2, v5, 0x3
aget v1, v1, v2
aput v1, v0, v10
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
mul-int/lit8 v2, v5, 0x3
add-int/lit8 v2, v2, 0x1
aget v1, v1, v2
aput v1, v0, v9
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v0, v8
iget-object v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
iget-object v3, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;[I[ILcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v0
aput v0, v7, v8
:goto_e0
:cond_e0
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
invoke-direct {p0, v0, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->doCE([ILcom/ibm/icu/text/CollationRuleParser$Token;)V
iget-object v4, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
goto :goto_91
:cond_e8
if-ne v6, v9, :cond_112
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
mul-int/lit8 v2, v5, 0x3
aget v1, v1, v2
aput v1, v0, v10
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v0, v9
iget-object v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
iget-object v3, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;[I[ILcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v0
aput v0, v7, v9
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v8
invoke-direct {p0, v1, v4, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v8
goto :goto_e0
:cond_112
iget-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v0, v10
iget-object v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I
iget-object v3, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;[I[ILcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v0
aput v0, v7, v10
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v9
invoke-direct {p0, v1, v4, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v9
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v8
invoke-direct {p0, v1, v4, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v8
goto :goto_e0
:cond_13c
iget v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-ne v0, v8, :cond_14d
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v8
invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getNextGenerated(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v1
aput v1, v0, v8
goto :goto_e0
:cond_14d
iget v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-ne v0, v9, :cond_16b
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v9
invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getNextGenerated(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v1
aput v1, v0, v9
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v8
invoke-direct {p0, v1, v4, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v8
goto/16 :goto_e0
:cond_16b
iget v0, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I
if-nez v0, :cond_e0
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v10
invoke-direct {p0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getNextGenerated(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
move-result v1
aput v1, v0, v10
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v9
invoke-direct {p0, v1, v4, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v9
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilCEBuffer_:[I
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilGens_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
aget-object v1, v1, v8
invoke-direct {p0, v1, v4, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getSimpleCEGenerator(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;Lcom/ibm/icu/text/CollationRuleParser$Token;I)I
move-result v1
aput v1, v0, v8
goto/16 :goto_e0
:cond_195
return-void
.end method
.method private static final insertContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
.registers 8
const v2, 0xffffff
and-int/2addr p1, v2
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v1
if-nez v1, :cond_17
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAContractionElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
const/4 v3, 0x1
sub-int p1, v2, v3
:cond_17
const/4 v0, 0x0
:goto_18
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v2
if-ge v2, p2, :cond_2b
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I
move-result v2
if-ge v0, v2, :cond_2b
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_2b
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
new-instance v3, Ljava/lang/Integer;
invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
iget-object v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v2, v0, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
invoke-static {v2, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v2
return v2
.end method
.method private static final isContraction(I)Z
.registers 3
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isSpecial(I)Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method private static final isContractionTableElement(I)Z
.registers 3
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isSpecial(I)Z
move-result v0
if-eqz v0, :cond_17
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_15
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_17
:cond_15
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method private static final isJamo(C)Z
.registers 2
const/16 v0, 0x1100
if-lt p0, v0, :cond_8
const/16 v0, 0x1112
if-le p0, v0, :cond_18
:cond_8
const/16 v0, 0x1175
if-lt p0, v0, :cond_10
const/16 v0, 0x1161
if-le p0, v0, :cond_18
:cond_10
const/16 v0, 0x11a8
if-lt p0, v0, :cond_1a
const/16 v0, 0x11c2
if-gt p0, v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private static final isPrefix(I)Z
.registers 3
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isSpecial(I)Z
move-result v0
if-eqz v0, :cond_10
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private static final isSpecial(I)Z
.registers 3
const/high16 v1, -0x1000
and-int v0, p0, v1
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private static isTailored(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I[CI)Z
.registers 8
const/4 v3, 0x1
const/high16 v2, -0x1000
const/4 v1, 0x0
:goto_4
aget-char v0, p2, p3
if-eqz v0, :cond_1d
aget-char v0, p2, p3
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->findCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
move-result p1
if-ne p1, v2, :cond_12
move v0, v1
:goto_11
return v0
:cond_12
invoke-static {p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v0
if-nez v0, :cond_1a
move v0, v3
goto :goto_11
:cond_1a
add-int/lit8 p3, p3, 0x1
goto :goto_4
:cond_1d
invoke-static {p0, p1, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
move-result v0
if-eq v0, v2, :cond_25
move v0, v3
goto :goto_11
:cond_25
move v0, v1
goto :goto_11
.end method
.method private static final lengthOfWeight(I)I
.registers 2
const v0, 0xffffff
and-int/2addr v0, p0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const v0, 0xffff
and-int/2addr v0, p0
if-nez v0, :cond_10
const/4 v0, 0x2
goto :goto_7
:cond_10
and-int/lit16 v0, p0, 0xff
if-nez v0, :cond_16
const/4 v0, 0x3
goto :goto_7
:cond_16
const/4 v0, 0x4
goto :goto_7
.end method
.method private static final lengthenRange([Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;III)I
.registers 8
aget-object v1, p0, p1
iget v1, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
add-int/lit8 v0, v1, 0x1
aget-object v1, p0, p1
aget-object v2, p0, p1
iget v2, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
const/4 v3, 0x4
invoke-static {v2, v0, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightTrail(III)I
move-result v2
iput v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
aget-object v1, p0, p1
aget-object v2, p0, p1
iget v2, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
invoke-static {v2, v0, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setWeightTrail(III)I
move-result v2
iput v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
aget-object v1, p0, p1
iget v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
mul-int/2addr v2, p3
iput v2, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
aget-object v1, p0, p1
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
return v0
.end method
.method private static mergeCE(III)I
.registers 6
const/16 v0, 0xff
const/4 v1, 0x1
if-ne p2, v1, :cond_13
const v0, 0xff00
:cond_8
:goto_8
and-int/2addr p0, v0
and-int/2addr p1, v0
packed-switch p2, :pswitch_data_22
shl-int/lit8 v1, p0, 0x18
shl-int/lit8 v2, p1, 0x10
or-int/2addr v1, v2
:goto_12
return v1
:cond_13
if-nez p2, :cond_8
const/high16 v0, -0x1
goto :goto_8
:pswitch_18
ushr-int/lit8 v1, p1, 0x10
or-int/2addr v1, p0
goto :goto_12
:pswitch_1c
shl-int/lit8 v1, p0, 0x10
shl-int/lit8 v2, p1, 0x8
or-int/2addr v1, v2
goto :goto_12
:pswitch_data_22
.packed-switch 0x0
:pswitch_18
:pswitch_1c
.end packed-switch
.end method
.method private static nextWeight(Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;)I
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
if-lez v2, :cond_45
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v2, v2, v5
iget v0, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v2, v2, v5
iget v1, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v2, v2, v5
iget v2, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
if-ne v1, v2, :cond_34
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
sub-int/2addr v2, v6
iput v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
if-lez v2, :cond_32
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_rangesLength_:I
invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v2, v2, v5
iput v0, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
:goto_32
:cond_32
move v2, v1
:goto_33
return v2
:cond_34
iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v2, v2, v5
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
aget-object v3, v3, v5
iget v3, v3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
invoke-static {v1, v3, v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->incWeight(III)I
move-result v3
iput v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
goto :goto_32
:cond_45
const/4 v2, -0x1
goto :goto_33
.end method
.method private static processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
.registers 13
const v9, 0xffff
const/4 v8, 0x1
const/4 v7, 0x0
const/high16 v6, -0x1000
const/4 v1, 0x0
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v4, v5
if-ne v4, v8, :cond_30
invoke-static {p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v4
if-eqz v4, :cond_2d
invoke-static {p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
move-result v4
iget v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
if-ne v4, v5, :cond_2d
iget v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {p0, p2, v7, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->changeContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
iget v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
invoke-static {p0, p2, v9, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->changeContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
move v4, p2
:goto_2c
return v4
:cond_2d
iget v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
goto :goto_2c
:cond_30
iget v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
add-int/lit8 v4, v4, 0x1
iput v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-static {p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v4
if-nez v4, :cond_62
const v4, 0xffffff
invoke-static {p0, v4, v7, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
move-result v1
invoke-static {p0, p1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v2
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {p0, v1, v4, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
invoke-static {p0, v1, v9, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
iget v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
invoke-static {v4, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result p2
:goto_5b
iget v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v4, v8
iput v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
move v4, p2
goto :goto_2c
:cond_62
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {p0, p2, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->findCP(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IC)I
move-result v3
if-lez v3, :cond_84
invoke-static {p0, p2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;II)I
move-result v0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v2
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {p0, p2, v3, v4, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IICI)I
goto :goto_5b
:cond_84
invoke-static {p0, p1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;I)I
move-result v2
iget-object v4, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {p0, p2, v4, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->insertContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;ICI)I
goto :goto_5b
.end method
.method private processUCACompleteIgnorables(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
.registers 10
const/4 v7, 0x0
new-instance v4, Lcom/ibm/icu/impl/TrieIterator;
sget-object v5, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v5, v5, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-direct {v4, v5}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
new-instance v1, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v1}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:cond_f
invoke-virtual {v4, v1}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v5
if-eqz v5, :cond_54
iget v3, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
iget v2, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->limit:I
iget v5, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->value:I
if-nez v5, :cond_f
:goto_1d
if-ge v3, v2, :cond_f
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
invoke-virtual {v5, v3}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v0
const/high16 v5, -0x1000
if-ne v0, v5, :cond_51
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput v7, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v6
iput-object v6, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v6, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v6, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iput v7, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
const/4 v6, 0x1
iput v6, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v5, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aput v7, v5, v7
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {p0, p1, v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_51
add-int/lit8 v3, v3, 0x1
goto :goto_1d
:cond_54
return-void
.end method
.method private static final setAttributes(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/CollationRuleParser$OptionSet;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
iget v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_caseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iget v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_decomposition_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isAlternateHandlingShifted_:Z
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isCaseLevel_:Z
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setCaseLevel(Z)V
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isFrenchCollation_:Z
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
iget v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_strength_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setStrength(I)V
iget v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_variableTopValue_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
return-void
.end method
.method private static final setContraction(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;IICI)I
.registers 8
const v1, 0xffffff
and-int/2addr p1, v1
invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getBasicContractionTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
if-nez v0, :cond_17
invoke-static {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAContractionElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
const/4 v2, 0x1
sub-int p1, v1, v2
:cond_17
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
new-instance v2, Ljava/lang/Integer;
invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v1, p2, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->setCharAt(IC)V
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I
invoke-static {v1, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->constructSpecialCE(II)I
move-result v1
return v1
.end method
.method private setMapCE(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
.registers 11
const/4 v5, 0x5
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;
iput v6, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
const/4 v4, 0x2
if-ne v3, v4, :cond_4b
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v3, v3, v7
invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v3
if-eqz v3, :cond_4b
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v3, v3, v7
const v4, 0xffff3f
and-int/2addr v3, v4
if-nez v3, :cond_4b
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v3, v3, v6
shr-int/lit8 v3, v3, 0x8
and-int/lit16 v3, v3, 0xff
if-ne v3, v5, :cond_4b
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v3, v3, v6
and-int/lit16 v3, v3, 0xff
if-ne v3, v5, :cond_4b
const/high16 v3, -0x400
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v4, v4, v6
shr-int/lit8 v4, v4, 0x8
const v5, 0xffff00
and-int/2addr v4, v5
or-int/2addr v3, v4
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v4, v4, v7
shr-int/lit8 v4, v4, 0x18
and-int/lit16 v4, v4, 0xff
or-int/2addr v3, v4
iput v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
:goto_4a
return-void
:cond_4b
const/high16 v3, -0xf00
iget-object v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v4, v4, v6
invoke-static {v1, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
move-result v4
shl-int/lit8 v4, v4, 0x4
const v5, 0xfffff0
and-int/2addr v4, v5
or-int v0, v3, v4
const/4 v2, 0x1
:goto_5e
iget v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
if-ge v2, v3, :cond_6c
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
aget v3, v3, v2
invoke-static {v1, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
add-int/lit8 v2, v2, 0x1
goto :goto_5e
:cond_6c
iget v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
const/16 v4, 0xf
if-gt v3, v4, :cond_87
iget v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
or-int/2addr v0, v3
:goto_75
iput v0, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v3, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
sub-int/2addr v4, v7
aget v3, v3, v4
iget v4, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
int-to-byte v4, v4
iget-object v5, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;
invoke-static {v3, v4, v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
goto :goto_4a
:cond_87
invoke-static {v1, v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addExpansion(Ljava/util/Vector;I)I
goto :goto_75
.end method
.method private static setMaxExpansion(IBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)I
.registers 15
const-wide v10, 0xffffffffL
const/4 v4, 0x0
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9}, Ljava/util/Vector;->size()I
move-result v1
int-to-long v5, p0
and-long/2addr v5, v10
const/4 v3, -0x1
:goto_f
const/4 v9, 0x1
sub-int v9, v1, v9
if-ge v4, v9, :cond_30
sub-int v9, v1, v4
shr-int/lit8 v9, v9, 0x1
add-int v2, v4, v9
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
int-to-long v7, v9
and-long/2addr v7, v10
cmp-long v9, v5, v7
if-gtz v9, :cond_2e
move v1, v2
goto :goto_f
:cond_2e
move v4, v2
goto :goto_f
:cond_30
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
if-ne v9, p0, :cond_61
move v3, v4
:goto_3f
:cond_3f
const/4 v9, -0x1
if-le v3, v9, :cond_71
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Byte;
invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B
move-result v9
if-ge v9, p1, :cond_5a
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
new-instance v10, Ljava/lang/Byte;
invoke-direct {v10, p1}, Ljava/lang/Byte;-><init>(B)V
invoke-virtual {v9, v3, v10}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_5a
:cond_5a
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9}, Ljava/util/Vector;->size()I
move-result v9
return v9
:cond_61
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
if-ne v9, p0, :cond_3f
move v3, v1
goto :goto_3f
:cond_71
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v10, Ljava/lang/Integer;
invoke-direct {v10, p0}, Ljava/lang/Integer;-><init>(I)V
add-int/lit8 v11, v4, 0x1
invoke-virtual {v9, v10, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
iget-object v9, p2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
new-instance v10, Ljava/lang/Byte;
invoke-direct {v10, p1}, Ljava/lang/Byte;-><init>(B)V
add-int/lit8 v11, v4, 0x1
invoke-virtual {v9, v10, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
goto :goto_5a
.end method
.method private static setMaxJamoExpansion(CIBLcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;)I
.registers 8
const/4 v0, 0x1
const/16 v2, 0x1100
if-lt p0, v2, :cond_16
const/16 v2, 0x1112
if-gt p0, v2, :cond_16
iget-byte v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
if-ge v2, p2, :cond_f
iput-byte p2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
:cond_f
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
:goto_15
return v2
:cond_16
const/16 v2, 0x1161
if-lt p0, v2, :cond_24
const/16 v2, 0x1175
if-gt p0, v2, :cond_24
iget-byte v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
if-ge v2, p2, :cond_24
iput-byte p2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
:cond_24
const/16 v2, 0x11a8
if-lt p0, v2, :cond_33
const/16 v2, 0x11c2
if-gt p0, v2, :cond_33
const/4 v0, 0x0
iget-byte v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
if-ge v2, p2, :cond_33
iput-byte p2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
:cond_33
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v1
:cond_39
if-lez v1, :cond_52
add-int/lit8 v1, v1, -0x1
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v2
if-ne v2, p1, :cond_39
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
goto :goto_15
:cond_52
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v3, Ljava/lang/Integer;
invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
if-eqz v0, :cond_6c
sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_62
invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v2, p3, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
goto :goto_15
:cond_6c
sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_62
.end method
.method private static final setWeightByte(III)I
.registers 6
shl-int/lit8 p1, p1, 0x3
const/4 v1, -0x1
ushr-int v0, v1, p1
const/16 v1, 0x20
sub-int p1, v1, p1
const/16 v1, -0x100
shl-int/2addr v1, p1
or-int/2addr v0, v1
and-int v1, p0, v0
shl-int v2, p2, p1
or-int/2addr v1, v2
return v1
.end method
.method private static final setWeightTrail(III)I
.registers 5
const/4 v0, 0x4
sub-int/2addr v0, p1
shl-int/lit8 p1, v0, 0x3
const/16 v0, -0x100
shl-int/2addr v0, p1
and-int/2addr v0, p0
shl-int v1, p2, p1
or-int/2addr v0, v1
return v0
.end method
.method private static final toLargeKana(C)C
.registers 2
const/16 v0, 0x3042
if-ge v0, p0, :cond_f
const/16 v0, 0x30ef
if-ge p0, v0, :cond_f
const/16 v0, 0x3000
sub-int v0, p0, v0
sparse-switch v0, :sswitch_data_1a
:cond_f
:goto_f
return p0
:sswitch_10
add-int/lit8 v0, p0, 0x1
int-to-char p0, v0
goto :goto_f
:sswitch_14
const/16 p0, 0x30ab
goto :goto_f
:sswitch_17
const/16 p0, 0x30b1
goto :goto_f
:sswitch_data_1a
.sparse-switch
0x41 -> :sswitch_10
0x43 -> :sswitch_10
0x45 -> :sswitch_10
0x47 -> :sswitch_10
0x49 -> :sswitch_10
0x63 -> :sswitch_10
0x83 -> :sswitch_10
0x85 -> :sswitch_10
0x8e -> :sswitch_10
0xa1 -> :sswitch_10
0xa3 -> :sswitch_10
0xa5 -> :sswitch_10
0xa7 -> :sswitch_10
0xa9 -> :sswitch_10
0xc3 -> :sswitch_10
0xe3 -> :sswitch_10
0xe5 -> :sswitch_10
0xee -> :sswitch_10
0xf5 -> :sswitch_14
0xf6 -> :sswitch_17
.end sparse-switch
.end method
.method private static final toSmallKana(C)C
.registers 2
const/16 v0, 0x3042
if-ge v0, p0, :cond_f
const/16 v0, 0x30ef
if-ge p0, v0, :cond_f
const/16 v0, 0x3000
sub-int v0, p0, v0
sparse-switch v0, :sswitch_data_1c
:cond_f
:goto_f
return p0
:sswitch_10
const/4 v0, 0x1
sub-int v0, p0, v0
int-to-char p0, v0
goto :goto_f
:sswitch_15
const/16 p0, 0x30f5
goto :goto_f
:sswitch_18
const/16 p0, 0x30f6
goto :goto_f
nop
:sswitch_data_1c
.sparse-switch
0x42 -> :sswitch_10
0x44 -> :sswitch_10
0x46 -> :sswitch_10
0x48 -> :sswitch_10
0x4a -> :sswitch_10
0x64 -> :sswitch_10
0x84 -> :sswitch_10
0x86 -> :sswitch_10
0x8f -> :sswitch_10
0xa2 -> :sswitch_10
0xa4 -> :sswitch_10
0xa6 -> :sswitch_10
0xa8 -> :sswitch_10
0xaa -> :sswitch_10
0xab -> :sswitch_15
0xb1 -> :sswitch_18
0xc4 -> :sswitch_10
0xe4 -> :sswitch_10
0xe6 -> :sswitch_10
0xef -> :sswitch_10
.end sparse-switch
.end method
.method private static final truncateWeight(II)I
.registers 4
const/4 v0, -0x1
const/4 v1, 0x4
sub-int/2addr v1, p1
shl-int/lit8 v1, v1, 0x3
shl-int/2addr v0, v1
and-int/2addr v0, p0
return v0
.end method
.method private static final unsafeCPAddCCNZ(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
.registers 16
const/16 v14, 0x100
const/4 v13, 0x0
sget-boolean v11, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->buildCMTabFlag:Z
iget-object v12, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
if-nez v12, :cond_49
const/4 v12, 0x1
:goto_a
and-int v0, v11, v12
const/4 v3, 0x0
new-array v9, v14, [I
const/4 v5, 0x0
if-eqz v0, :cond_16
const/high16 v11, 0x1
new-array v3, v11, [C
:cond_16
const/4 v1, 0x0
:goto_17
const v11, 0xffff
if-ge v1, v11, :cond_4b
invoke-static {v1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C
move-result v8
if-ge v8, v14, :cond_2a
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v11
if-eqz v11, :cond_45
if-eqz v8, :cond_45
:cond_2a
iget-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
invoke-static {v11, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
if-eqz v0, :cond_45
if-eqz v8, :cond_45
and-int/lit16 v2, v8, 0xff
shl-int/lit8 v11, v2, 0x8
aget v12, v9, v2
add-int v10, v11, v12
aput-char v1, v3, v10
aget v11, v9, v2
add-int/lit8 v11, v11, 0x1
aput v11, v9, v2
add-int/lit8 v5, v5, 0x1
:cond_45
add-int/lit8 v11, v1, 0x1
int-to-char v1, v11
goto :goto_17
:cond_49
move v12, v13
goto :goto_a
:cond_4b
iget-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
if-eqz v11, :cond_71
iget-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
invoke-virtual {v11}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
move-result-object v7
:goto_55
invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v11
if-eqz v11, :cond_71
invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
iget-object v11, v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-static {v11, v13}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v4
iget-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B
invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C
move-result v12
invoke-static {v11, v12}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->unsafeCPSet([BC)V
goto :goto_55
:cond_71
if-eqz v0, :cond_7f
new-instance v11, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
invoke-direct {v11}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;-><init>()V
iput-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
iget-object v11, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;
invoke-virtual {v11, v3, v5, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;->generate([CI[I)V
:cond_7f
return-void
.end method
.method private static final unsafeCPSet([BC)V
.registers 7
move v0, p1
const/16 v1, 0x2100
if-lt v0, v1, :cond_14
const v1, 0xd800
if-lt v0, v1, :cond_10
const v1, 0xf8ff
if-gt v0, v1, :cond_10
:goto_f
return-void
:cond_10
and-int/lit16 v1, v0, 0x1fff
add-int/lit16 v0, v1, 0x100
:cond_14
shr-int/lit8 v1, v0, 0x3
aget-byte v2, p0, v1
const/4 v3, 0x1
and-int/lit8 v4, v0, 0x7
shl-int/2addr v3, v4
or-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, p0, v1
goto :goto_f
.end method
.method  assembleTailoringTable(Lcom/ibm/icu/text/RuleBasedCollator;)V
.registers 22
const/4 v7, 0x0
:goto_1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I
move/from16 v16, v0
move v0, v7
move/from16 v1, v16
if-ge v0, v1, :cond_40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
aget-object v16, v16, v7
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
if-eqz v16, :cond_3d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
aget-object v16, v16, v7
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->initBuffers(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
:cond_3d
add-int/lit8 v7, v7, 0x1
goto :goto_1
:cond_40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
if-eqz v16, :cond_19c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
move-object/from16 v17, v0
const/16 v18, 0x0
aget v17, v17, v18
ushr-int/lit8 v17, v17, 0x10
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_variableTopValue_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v16
move-object/from16 v1, v17
if-ne v0, v1, :cond_cc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;
:cond_cc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v16
move-object/from16 v1, v17
if-ne v0, v1, :cond_120
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;
:cond_120
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
if-eqz v16, :cond_15e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
:cond_15e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
if-eqz v16, :cond_19c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
:cond_19c
new-instance v14, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object v0, v14
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;-><init>(Lcom/ibm/icu/text/CollationRuleParser;)V
const/4 v7, 0x0
:goto_1ab
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I
move/from16 v16, v0
move v0, v7
move/from16 v1, v16
if-ge v0, v1, :cond_1d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
move-object/from16 v16, v0
aget-object v16, v16, v7
move-object/from16 v0, p0
move-object v1, v14
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->createElements(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
add-int/lit8 v7, v7, 0x1
goto :goto_1ab
:cond_1d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->clear()V
new-instance v13, Ljava/lang/StringBuffer;
invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V
const/16 v16, 0x0
const/16 v17, 0xff
move-object/from16 v0, p0
move-object v1, v14
move/from16 v2, v16
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->copyRangeFromUCA(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;II)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
if-eqz v16, :cond_249
const/4 v7, 0x0
const/4 v7, 0x0
:goto_201
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v16
move v0, v7
move/from16 v1, v16
if-ge v0, v1, :cond_249
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
move-object/from16 v0, v16
move v1, v7
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v17, v0
move-object/from16 v0, v17
move v1, v7
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v17
move-object/from16 v0, p0
move-object v1, v14
move/from16 v2, v16
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->copyRangeFromUCA(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;II)V
add-int/lit8 v7, v7, 0x1
goto :goto_201
:cond_249
sget-object v5, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONTRACTIONS_:[C
const/4 v9, 0x0
:goto_24c
aget-char v16, v5, v9
if-eqz v16, :cond_512
move-object v0, v14
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;
move-object/from16 v16, v0
aget-char v17, v5, v9
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v15
const/4 v12, 0x0
const/high16 v16, -0x1000
move v0, v15
move/from16 v1, v16
if-eq v0, v1, :cond_4e1
const/4 v8, 0x1
invoke-static {v15}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isContractionTableElement(I)Z
move-result v16
if-eqz v16, :cond_284
move-object v0, v14
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
move-object/from16 v16, v0
add-int/lit8 v17, v9, 0x1
move-object/from16 v0, v16
move v1, v15
move-object v2, v5
move/from16 v3, v17
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isTailored(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;I[CI)Z
move-result v16
const/16 v17, 0x1
move/from16 v0, v16
move/from16 v1, v17
if-ne v0, v1, :cond_284
const/4 v8, 0x0
:cond_284
if-nez v8, :cond_2f4
invoke-static {v15}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isPrefix(I)Z
move-result v16
if-eqz v16, :cond_2f4
add-int/lit8 v16, v9, 0x1
aget-char v16, v5, v16
if-nez v16, :cond_2f4
new-instance v6, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
invoke-direct {v6}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v6
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/16 v16, 0x0
move/from16 v0, v16
move-object v1, v6
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aget-char v16, v5, v9
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
move-object v1, v6
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
add-int/lit8 v16, v9, 0x2
aget-char v16, v5, v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
move-object v1, v6
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
const/16 v16, 0x0
move/from16 v0, v16
move-object v1, v6
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object v0, v14
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
if-eqz v12, :cond_2f3
move-object v0, v12
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C
move-result v16
add-int/lit8 v17, v9, 0x2
aget-char v17, v5, v17
move/from16 v0, v16
move/from16 v1, v17
if-eq v0, v1, :cond_2f4
:cond_2f3
const/4 v8, 0x1
:cond_2f4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
if-eqz v16, :cond_317
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
aget-char v17, v5, v9
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v16
if-eqz v16, :cond_317
const/4 v8, 0x0
:cond_317
const/16 v16, 0x1
move v0, v8
move/from16 v1, v16
if-ne v0, v1, :cond_4dd
add-int/lit8 v16, v9, 0x1
aget-char v16, v5, v16
if-eqz v16, :cond_3ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
const/16 v16, 0x0
invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I
move-result v17
move-object v0, v13
move/from16 v1, v16
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
aget-char v16, v5, v9
move-object v0, v13
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v16, v9, 0x1
aget-char v16, v5, v16
move-object v0, v13
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v16, v9, 0x2
aget-char v16, v5, v16
if-eqz v16, :cond_388
add-int/lit8 v16, v9, 0x2
aget-char v16, v5, v16
move-object v0, v13
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_388
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
:goto_3bb
:cond_3bb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v4
const/16 v16, -0x1
move v0, v4
move/from16 v1, v16
if-eq v0, v1, :cond_4cf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move/from16 v18, v0
add-int/lit8 v19, v18, 0x1
move/from16 v0, v19
move-object/from16 v1, v17
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
aput v4, v16, v18
goto :goto_3bb
:cond_3ef
const/4 v10, 0x0
const/16 v16, 0x0
invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I
move-result v17
move-object v0, v13
move/from16 v1, v16
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
aget-char v17, v5, v9
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
aget-char v17, v5, v9
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
add-int/lit8 v17, v9, 0x2
aget-char v17, v5, v17
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
if-nez v12, :cond_47e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
:goto_454
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
:goto_469
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v16
const/16 v17, -0x1
move/from16 v0, v16
move/from16 v1, v17
if-eq v0, v1, :cond_497
add-int/lit8 v10, v10, 0x1
goto :goto_469
:cond_47e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
move/from16 v17, v0
move/from16 v0, v17
move-object/from16 v1, v16
iput v0, v1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
goto :goto_454
:cond_497
add-int/lit8 v16, v9, 0x2
aget-char v16, v5, v16
move-object v0, v13
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
aget-char v16, v5, v9
move-object v0, v13
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
move v11, v10
:goto_4b7
add-int/lit8 v10, v11, -0x1
if-lez v11, :cond_3bb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v16
const/16 v17, -0x1
move/from16 v0, v16
move/from16 v1, v17
if-eq v0, v1, :cond_3bb
move v11, v10
goto :goto_4b7
:cond_4cf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_utilElement_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object/from16 v16, v0
move-object/from16 v0, p0
move-object v1, v14
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->addAnElement(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)I
:cond_4dd
:goto_4dd
add-int/lit8 v9, v9, 0x3
goto/16 :goto_24c
:cond_4e1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
if-eqz v16, :cond_4dd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
aget-char v17, v5, v9
invoke-virtual/range {v16 .. v17}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v16
if-eqz v16, :cond_4dd
aget-char v16, v5, v9
aget-char v17, v5, v9
move-object/from16 v0, p0
move-object v1, v14
move/from16 v2, v16
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->copyRangeFromUCA(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;II)V
goto :goto_4dd
:cond_512
move-object/from16 v0, p0
move-object v1, v14
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->processUCACompleteIgnorables(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
move-object/from16 v0, p0
move-object v1, v14
invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->canonicalClosure(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
move-object/from16 v0, p0
move-object v1, v14
move-object/from16 v2, p1
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->assembleTable(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;Lcom/ibm/icu/text/RuleBasedCollator;)V
return-void
.end method
.method  setRules(Lcom/ibm/icu/text/RuleBasedCollator;)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I
if-gtz v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v0, :cond_15
:cond_c
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->assembleTailoringTable(Lcom/ibm/icu/text/RuleBasedCollator;)V
:goto_f
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->m_parser_:Lcom/ibm/icu/text/CollationRuleParser;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationRuleParser;->setDefaultOptionsInCollator(Lcom/ibm/icu/text/RuleBasedCollator;)V
return-void
:cond_15
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCATables()V
goto :goto_f
.end method