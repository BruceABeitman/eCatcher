.class public final Lcom/ibm/icu/text/RuleBasedCollator;
.super Lcom/ibm/icu/text/Collator;
.source "RuleBasedCollator.java"
.field private static final BAIL_OUT_CE_:I = -0x1000000
.field private static final BOTTOM_COUNT_2_:I = 0x40
.field static final BYTE_COMMON_:B = 0x5t
.field private static final BYTE_FIRST_NON_LATIN_PRIMARY_:B = 0x4dt
.field static final BYTE_FIRST_TAILORED_:B = 0x4t
.field private static final BYTE_SHIFT_PREFIX_:B = 0x3t
.field private static final BYTE_UNSHIFTED_MAX_:B = -0x1t
.field static final BYTE_UNSHIFTED_MIN_:B = 0x3t
.field private static final CASE_SWITCH_:I = 0xc0
.field private static final CE_BUFFER_SIZE_:I = 0x200
.field static final CE_CASE_BIT_MASK_:I = 0xc0
.field private static final CE_CASE_MASK_3_:I = 0xff
.field static final CE_CONTINUATION_MARKER_:I = 0xc0
.field private static final CE_CONTINUATION_TAG_:I = 0xc0
.field private static final CE_KEEP_CASE_:I = 0xff
.field static final CE_PRIMARY_MASK_:I = -0x10000
.field static final CE_PRIMARY_SHIFT_:I = 0x10
.field private static final CE_REMOVE_CASE_:I = 0x3f
.field private static final CE_REMOVE_CONTINUATION_MASK_:I = -0xc1
.field static final CE_SECONDARY_MASK_:I = 0xff00
.field static final CE_SECONDARY_SHIFT_:I = 0x8
.field static final CE_SPECIAL_FLAG_:I = -0x10000000
.field static final CE_SURROGATE_TAG_:I = 0x5
.field static final CE_TAG_MASK_:I = 0xf000000
.field static final CE_TAG_SHIFT_:I = 0x18
.field static final CE_TERTIARY_MASK_:I = 0xff
.field static final CODAN_PLACEHOLDER:B = 0x27t
.field private static final COMMON_2_:I = 0x5
.field static final COMMON_BOTTOM_2_:I = 0x5
.field static final COMMON_BOTTOM_3:I = 0x5
.field private static final COMMON_BOTTOM_3_:I = 0x5
.field private static final COMMON_BOTTOM_CASE_SWITCH_LOWER_3_:I = 0x5
.field private static final COMMON_BOTTOM_CASE_SWITCH_UPPER_3_:I = 0x86
.field private static final COMMON_NORMAL_3_:I = 0x5
.field static final COMMON_TOP_2_:I = 0x86
.field private static final COMMON_TOP_CASE_SWITCH_LOWER_3_:I = 0x45
.field private static final COMMON_TOP_CASE_SWITCH_OFF_3_:I = 0x85
.field private static final COMMON_TOP_CASE_SWITCH_UPPER_3_:I = 0xc5
.field private static final COMMON_UPPER_FIRST_3_:I = 0xc5
.field private static final DEFAULT_MIN_HEURISTIC_:I = 0x300
.field private static final ENDOFLATINONERANGE_:I = 0xff
.field private static final FLAG_BIT_MASK_CASE_SWITCH_OFF_:I = 0x80
.field private static final FLAG_BIT_MASK_CASE_SWITCH_ON_:I = 0x40
.field private static final HEURISTIC_MASK_:C = '\u0007'
.field private static final HEURISTIC_OVERFLOW_MASK_:C = '\u1fff'
.field private static final HEURISTIC_OVERFLOW_OFFSET_:C = '\u0100'
.field private static final HEURISTIC_SHIFT_:I = 0x3
.field private static final HEURISTIC_SIZE_:C = '\u0420'
.field private static final LAST_BYTE_MASK_:I = 0xff
.field private static final LATINONETABLELEN_:I = 0x131
.field private static final NO_CASE_SWITCH_:I = 0x0
.field private static final PROPORTION_2_:D = 0.5
.field private static final PROPORTION_3_:D = 0.667
.field private static final SORT_BUFFER_INIT_SIZE_:I = 0x80
.field private static final SORT_BUFFER_INIT_SIZE_1_:I = 0x400
.field private static final SORT_BUFFER_INIT_SIZE_2_:I = 0x80
.field private static final SORT_BUFFER_INIT_SIZE_3_:I = 0x80
.field private static final SORT_BUFFER_INIT_SIZE_4_:I = 0x80
.field private static final SORT_BUFFER_INIT_SIZE_CASE_:I = 0x20
.field private static final SORT_CASE_BYTE_START_:B = -0x80t
.field private static final SORT_CASE_SHIFT_START_:B = 0x7t
.field static final SORT_LEVEL_TERMINATOR_:B = 0x1t
.field private static final TOP_COUNT_2_:I = 0x40
.field private static final TOTAL_2_:I = 0x80
.field static final UCA_:Lcom/ibm/icu/text/RuleBasedCollator; = null
.field static final UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants; = null
.field static final UCA_CONTRACTIONS_:[C = null
.field private static UCA_INIT_COMPLETE:Z = false
.field static final impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator; = null
.field static final maxImplicitPrimary:I = 0xe4
.field static final maxRegularPrimary:I = 0xa0
.field static final minImplicitPrimary:I = 0xe0
.field  latinOneCEs_:[I
.field  latinOneFailed_:Z
.field  latinOneRegenTable_:Z
.field  latinOneTableLen_:I
.field  latinOneUse_:Z
.field  m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
.field  m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
.field  m_UCD_version_:Lcom/ibm/icu/util/VersionInfo;
.field private m_addition3_:I
.field private m_bottom3_:I
.field private m_bottomCount3_:I
.field  m_caseFirst_:I
.field private m_caseSwitch_:I
.field private m_common3_:I
.field  m_contractionCE_:[I
.field  m_contractionEnd_:[B
.field  m_contractionIndex_:[C
.field  m_contractionOffset_:I
.field  m_defaultCaseFirst_:I
.field  m_defaultDecomposition_:I
.field  m_defaultIsAlternateHandlingShifted_:Z
.field  m_defaultIsCaseLevel_:Z
.field  m_defaultIsFrenchCollation_:Z
.field  m_defaultIsHiragana4_:Z
.field  m_defaultIsNumericCollation_:Z
.field  m_defaultStrength_:I
.field  m_defaultVariableTopValue_:I
.field  m_expansionEndCEMaxSize_:[B
.field  m_expansionEndCE_:[I
.field  m_expansionOffset_:I
.field  m_expansion_:[I
.field private m_isAlternateHandlingShifted_:Z
.field private m_isCaseLevel_:Z
.field private m_isFrenchCollation_:Z
.field  m_isHiragana4_:Z
.field  m_isJamoSpecial_:Z
.field  m_isNumericCollation_:Z
.field private m_isSimple3_:Z
.field private m_mask3_:I
.field  m_minContractionEnd_:C
.field  m_minUnsafe_:C
.field private transient m_reallocLatinOneCEs_:Z
.field  m_rules_:Ljava/lang/String;
.field private m_srcUtilCEBufferSize_:I
.field private m_srcUtilCEBuffer_:[I
.field private m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
.field private m_srcUtilContOffset_:I
.field private m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
.field private m_srcUtilOffset_:I
.field private m_tgtUtilCEBufferSize_:I
.field private m_tgtUtilCEBuffer_:[I
.field private m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
.field private m_tgtUtilContOffset_:I
.field private m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
.field private m_tgtUtilOffset_:I
.field private m_top3_:I
.field private m_topCount3_:I
.field  m_trie_:Lcom/ibm/icu/impl/IntTrie;
.field  m_unsafe_:[B
.field private m_utilBytes0_:[B
.field private m_utilBytes1_:[B
.field private m_utilBytes2_:[B
.field private m_utilBytes3_:[B
.field private m_utilBytes4_:[B
.field private m_utilBytesCount0_:I
.field private m_utilBytesCount1_:I
.field private m_utilBytesCount2_:I
.field private m_utilBytesCount3_:I
.field private m_utilBytesCount4_:I
.field private m_utilCompare0_:Z
.field private m_utilCompare2_:Z
.field private m_utilCompare3_:Z
.field private m_utilCompare4_:Z
.field private m_utilCompare5_:Z
.field private m_utilCount2_:I
.field private m_utilCount3_:I
.field private m_utilCount4_:I
.field private m_utilFrenchEnd_:I
.field private m_utilFrenchStart_:I
.field private m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
.field  m_variableTopValue_:I
.field  m_version_:Lcom/ibm/icu/util/VersionInfo;
.method static constructor <clinit>()V
.registers 10
const/4 v0, 0x0
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_4
new-instance v1, Lcom/ibm/icu/text/RuleBasedCollator;
invoke-direct {v1}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>()V
:try_end_9
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_9} :catch_4f
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_41
:try_start_9
new-instance v3, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;
invoke-direct {v3}, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;-><init>()V
:try_start_e
:try_end_e
.catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_e} :catch_51
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_43
invoke-static {v1, v3}, Lcom/ibm/icu/text/CollatorReader;->read(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;)[C
move-result-object v4
new-instance v6, Lcom/ibm/icu/impl/ImplicitCEGenerator;
const/16 v8, 0xe0
const/16 v9, 0xe4
invoke-direct {v6, v8, v9}, Lcom/ibm/icu/impl/ImplicitCEGenerator;-><init>(II)V
:try_start_1b
:try_end_1b
.catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_1b} :catch_54
.catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_46
invoke-direct {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->init()V
const-string v8, "com/ibm/icu/impl/data/icudt42b/coll"
sget-object v9, Lcom/ibm/icu/util/ULocale;->ENGLISH:Lcom/ibm/icu/util/ULocale;
invoke-static {v8, v9}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
check-cast v7, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v8, "UCARules"
invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
:try_end_32
.catch Ljava/util/MissingResourceException; {:try_start_1b .. :try_end_32} :catch_58
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_4a
move-object v5, v6
move-object v2, v3
move-object v0, v1
:goto_35
sput-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
sput-object v2, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;
sput-object v4, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONTRACTIONS_:[C
sput-object v5, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;
const/4 v8, 0x1
sput-boolean v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_INIT_COMPLETE:Z
return-void
:catch_41
move-exception v8
goto :goto_35
:catch_43
move-exception v8
move-object v0, v1
goto :goto_35
:catch_46
move-exception v8
move-object v2, v3
move-object v0, v1
goto :goto_35
:catch_4a
move-exception v8
move-object v5, v6
move-object v2, v3
move-object v0, v1
goto :goto_35
:catch_4f
move-exception v8
goto :goto_35
:catch_51
move-exception v8
move-object v0, v1
goto :goto_35
:catch_54
move-exception v8
move-object v2, v3
move-object v0, v1
goto :goto_35
:catch_58
move-exception v8
move-object v5, v6
move-object v2, v3
move-object v0, v1
goto :goto_35
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
invoke-static {}, Lcom/ibm/icu/text/RuleBasedCollator;->checkUCA()V
invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
return-void
.end method
.method constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 10
const/4 v7, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V
iput-boolean v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
iput-boolean v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
iput-boolean v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
iput v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
const/4 v6, 0x0
iput-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
invoke-static {}, Lcom/ibm/icu/text/RuleBasedCollator;->checkUCA()V
const-string v6, "com/ibm/icu/impl/data/icudt42b/coll"
invoke-static {v6, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-direct {p0, v7}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
if-eqz v4, :cond_8b
:try_start_1f
const-string v6, "collation"
invoke-virtual {p1, v6}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_2d
const-string v6, "collations/default"
invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_2d
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "collations/"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v2
if-eqz v2, :cond_8b
invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v5
invoke-virtual {p0, v5, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
const-string v6, "Sequence"
invoke-virtual {v2, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
const-string v6, "%%CollationBin"
invoke-virtual {v2, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;
move-result-object v0
if-eqz v0, :cond_8f
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v3
invoke-static {p0, v3}, Lcom/ibm/icu/text/CollatorReader;->initRBC(Lcom/ibm/icu/text/RuleBasedCollator;[B)V
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v7, v7, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v6, v7}, Lcom/ibm/icu/util/VersionInfo;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_80
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCD_version_:Lcom/ibm/icu/util/VersionInfo;
sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v7, v7, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCD_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v6, v7}, Lcom/ibm/icu/util/VersionInfo;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_86
:cond_80
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
invoke-direct {p0, v6}, Lcom/ibm/icu/text/RuleBasedCollator;->init(Ljava/lang/String;)V
:goto_85
return-void
:cond_86
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->init()V
:try_end_89
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_89} :catch_8a
goto :goto_85
:catch_8a
move-exception v6
:cond_8b
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCAData()V
goto :goto_85
:cond_8f
:try_start_8f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
invoke-direct {p0, v6}, Lcom/ibm/icu/text/RuleBasedCollator;->init(Ljava/lang/String;)V
:try_end_94
.catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_8a
goto :goto_85
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
invoke-static {}, Lcom/ibm/icu/text/RuleBasedCollator;->checkUCA()V
if-nez p1, :cond_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Collation rules can not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->init(Ljava/lang/String;)V
return-void
.end method
.method private final addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
.registers 14
const/high16 v8, -0x100
const/16 v9, 0x8
const/4 v0, 0x0
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-nez v5, :cond_4e
iget v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
and-int v4, p2, v5
iget v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
xor-int/2addr v4, v5
const/4 v2, 0x1
:goto_17
ushr-int/lit8 p2, p2, 0x8
and-int/lit16 v3, p2, 0xff
ushr-int/lit8 p2, p2, 0x8
and-int/lit16 v1, p2, 0xff
ushr-int/lit8 v0, p2, 0x8
if-eqz v0, :cond_33
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
aget v6, v5, p1
iget v7, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
shl-int v7, v0, v7
or-int/2addr v6, v7
aput v6, v5, p1
iget v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
sub-int/2addr v5, v9
iput v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
:cond_33
if-eqz v1, :cond_65
iget v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
if-gez v5, :cond_55
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
aput v8, v5, p1
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v6, p1
aput v8, v5, v6
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v6, v6, 0x2
add-int/2addr v6, p1
aput v8, v5, v6
:goto_4d
:cond_4d
return-void
:cond_4e
and-int/lit16 v5, p2, -0xc1
int-to-byte v4, v5
and-int/lit8 v4, v4, 0x3f
const/4 v2, 0x0
goto :goto_17
:cond_55
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
aget v6, v5, p1
iget v7, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
shl-int v7, v1, v7
or-int/2addr v6, v7
aput v6, v5, p1
iget v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
sub-int/2addr v5, v9
iput v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
:cond_65
if-eqz v3, :cond_89
if-eqz v2, :cond_a1
iget-boolean v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
if-eqz v5, :cond_a1
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v6, p1
aget v7, v5, v6
ushr-int/lit8 v7, v7, 0x8
aput v7, v5, v6
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v6, p1
aget v7, v5, v6
shl-int/lit8 v8, v3, 0x18
or-int/2addr v7, v8
aput v7, v5, v6
:goto_84
iget v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
sub-int/2addr v5, v9
iput v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
:cond_89
if-eqz v4, :cond_4d
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v6, v6, 0x2
add-int/2addr v6, p1
aget v7, v5, v6
iget v8, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
shl-int v8, v4, v8
or-int/2addr v7, v8
aput v7, v5, v6
iget v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
sub-int/2addr v5, v9
iput v5, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
goto :goto_4d
:cond_a1
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v6, p1
aget v7, v5, v6
iget v8, p3, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
shl-int v8, v3, v8
or-int/2addr v7, v8
aput v7, v5, v6
goto :goto_84
.end method
.method private addSpecial(Lcom/ibm/icu/text/RuleBasedCollator$contContext;Ljava/lang/StringBuffer;I)V
.registers 14
const v9, 0xffff
const/4 v8, 0x0
const/16 v7, 0xb
const/4 v6, 0x2
const/4 v5, 0x1
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const v3, 0xffffff
and-int/2addr v3, p3
iget-object v4, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget v4, v4, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sub-int v2, v3, v4
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
aget v1, v3, v2
const/high16 v3, -0x1000
if-eq v1, v3, :cond_6c
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_40
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v6, :cond_40
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_40
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v7, :cond_40
iget-boolean v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->addPrefixes:Z
if-eqz v3, :cond_40
invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->addSpecial(Lcom/ibm/icu/text/RuleBasedCollator$contContext;Ljava/lang/StringBuffer;I)V
:cond_40
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-le v3, v5, :cond_6c
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_53
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
:cond_53
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_6c
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_6c
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v5, :cond_6c
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
:cond_6c
add-int/lit8 v2, v2, 0x1
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v7, :cond_d8
iget-boolean v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->addPrefixes:Z
if-eqz v3, :cond_d8
:goto_78
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
aget-char v3, v3, v2
if-eq v3, v9, :cond_13e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
invoke-virtual {v0, v8, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
aget v1, v3, v2
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
aget-char v3, v3, v2
invoke-virtual {v0, v8, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_b1
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-eq v3, v6, :cond_ab
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v7, :cond_b1
:cond_ab
invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->addSpecial(Lcom/ibm/icu/text/RuleBasedCollator$contContext;Ljava/lang/StringBuffer;I)V
:cond_ae
:goto_ae
add-int/lit8 v2, v2, 0x1
goto :goto_78
:cond_b1
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_be
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
:cond_be
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_ae
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_ae
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v5, :cond_ae
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_ae
:cond_d8
invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v6, :cond_13e
:goto_de
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
aget-char v3, v3, v2
if-eq v3, v9, :cond_13e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
invoke-virtual {v0, v8, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
aget v1, v3, v2
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
aget-char v3, v3, v2
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_117
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-eq v3, v6, :cond_111
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v7, :cond_117
:cond_111
invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->addSpecial(Lcom/ibm/icu/text/RuleBasedCollator$contContext;Ljava/lang/StringBuffer;I)V
:cond_114
:goto_114
add-int/lit8 v2, v2, 0x1
goto :goto_de
:cond_117
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_124
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
:cond_124
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_114
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v3
if-eqz v3, :cond_114
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v3
if-ne v3, v5, :cond_114
iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_114
:cond_13e
return-void
.end method
.method private static final append([BIB)[B
.registers 5
:try_start_0
aput-byte p2, p0, p1
:goto_2
:try_end_2
.catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2} :catch_3
return-object p0
:catch_3
move-exception v0
const/16 v1, 0x80
invoke-static {p0, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object p0
aput-byte p2, p0, p1
goto :goto_2
.end method
.method private static final append([III)[I
.registers 5
add-int/lit8 v0, p1, 0x1
array-length v1, p0
if-lt v0, v1, :cond_b
const/16 v0, 0x200
invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([III)[I
move-result-object p0
:cond_b
aput p2, p0, p1
return-object p0
.end method
.method private static checkUCA()V
.registers 4
sget-boolean v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_INIT_COMPLETE:Z
if-eqz v0, :cond_14
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
if-nez v0, :cond_14
new-instance v0, Ljava/util/MissingResourceException;
const-string v1, "Collator UCA data unavailable"
const-string v2, ""
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_14
return-void
.end method
.method private final compareBySortKeys(Ljava/lang/String;Ljava/lang/String;)I
.registers 5
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
const/4 v1, 0x0
invoke-virtual {p0, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RawCollationKey;->compareTo(Ljava/lang/Object;)I
move-result v1
return v1
.end method
.method private final compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
.registers 21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
move-object v4, v0
if-nez v4, :cond_e
const/4 v4, 0x1
move-object/from16 v0, p0
move v1, v4
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
:cond_e
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v15
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
move v4, v0
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare0_:Z
const/4 v4, 0x1
if-lt v15, v4, :cond_8b
const/4 v4, 0x1
:goto_20
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
const/4 v4, 0x2
if-lt v15, v4, :cond_8d
const/4 v4, 0x1
:goto_29
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare3_:Z
const/4 v4, 0x3
if-lt v15, v4, :cond_8f
const/4 v4, 0x1
:goto_32
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
const/16 v4, 0xf
if-ne v15, v4, :cond_91
const/4 v4, 0x1
:goto_3c
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare5_:Z
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
move v4, v0
if-eqz v4, :cond_93
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
move v4, v0
if-eqz v4, :cond_93
const/4 v4, 0x1
move v10, v4
:goto_51
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
move v4, v0
if-eqz v4, :cond_96
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
move v4, v0
if-eqz v4, :cond_96
const/4 v4, 0x1
move v11, v4
:goto_61
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
move v4, v0
if-eqz v4, :cond_99
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
move v4, v0
if-eqz v4, :cond_99
const/4 v4, 0x1
move v5, v4
:goto_71
if-eqz v5, :cond_9c
if-eqz v11, :cond_9c
move-object/from16 v0, p1
move/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v14
invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, p0
move-object v1, v14
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->compareBySortKeys(Ljava/lang/String;Ljava/lang/String;)I
move-result v4
:goto_8a
return v4
:cond_8b
const/4 v4, 0x0
goto :goto_20
:cond_8d
const/4 v4, 0x0
goto :goto_29
:cond_8f
const/4 v4, 0x0
goto :goto_32
:cond_91
const/4 v4, 0x0
goto :goto_3c
:cond_93
const/4 v4, 0x0
move v10, v4
goto :goto_51
:cond_96
const/4 v4, 0x0
move v11, v4
goto :goto_61
:cond_99
const/4 v4, 0x0
move v5, v4
goto :goto_71
:cond_9c
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
move v4, v0
if-eqz v4, :cond_d5
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
move v4, v0
shl-int/lit8 v4, v4, 0x10
move v6, v4
:goto_ab
const/4 v4, 0x0
move v0, v4
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
const/4 v4, 0x0
move v0, v4
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
move-object/from16 v4, p0
move-object/from16 v7, p1
move-object/from16 v8, p2
move/from16 v9, p3
invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/text/RuleBasedCollator;->doPrimaryCompare(ZILjava/lang/String;Ljava/lang/String;I)I
move-result v13
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
move v4, v0
const/4 v7, -0x1
if-ne v4, v7, :cond_d8
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
move v4, v0
const/4 v7, -0x1
if-ne v4, v7, :cond_d8
move v4, v13
goto :goto_8a
:cond_d5
const/4 v4, 0x0
move v6, v4
goto :goto_ab
:cond_d8
move v12, v13
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
move v4, v0
if-eqz v4, :cond_eb
move-object/from16 v0, p0
move v1, v10
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->doSecondaryCompare(Z)I
move-result v13
if-eqz v13, :cond_eb
move v4, v13
goto :goto_8a
:cond_eb
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare0_:Z
move v4, v0
if-eqz v4, :cond_fa
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/RuleBasedCollator;->doCaseCompare()I
move-result v13
if-eqz v13, :cond_fa
move v4, v13
goto :goto_8a
:cond_fa
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare3_:Z
move v4, v0
if-eqz v4, :cond_109
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/RuleBasedCollator;->doTertiaryCompare()I
move-result v13
if-eqz v13, :cond_109
move v4, v13
goto :goto_8a
:cond_109
if-eqz v11, :cond_117
move-object/from16 v0, p0
move v1, v6
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->doQuaternaryCompare(I)I
move-result v13
if-eqz v13, :cond_11e
move v4, v13
goto/16 :goto_8a
:cond_117
if-eqz v5, :cond_11e
if-eqz v12, :cond_11e
move v4, v12
goto/16 :goto_8a
:cond_11e
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare5_:Z
move v4, v0
if-eqz v4, :cond_133
const/4 v4, 0x1
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, p3
move v3, v4
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->doIdenticalCompare(Ljava/lang/String;Ljava/lang/String;IZ)I
move-result v4
goto/16 :goto_8a
:cond_133
const/4 v4, 0x0
goto/16 :goto_8a
.end method
.method private final compareUseLatin1(Ljava/lang/String;Ljava/lang/String;I)I
.registers 24
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v10
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
move-result v16
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v12
move/from16 v8, p3
move/from16 v14, p3
const/4 v7, 0x0
const/4 v13, 0x0
const/4 v11, 0x0
const/16 v17, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
move v6, v0
move v9, v8
:goto_1d
if-nez v11, :cond_37e
if-ne v9, v10, :cond_7b
const/4 v4, 0x1
move v15, v14
:goto_23
if-nez v17, :cond_140
move v0, v15
move/from16 v1, v16
if-ne v0, v1, :cond_de
if-eqz v4, :cond_d9
const/16 v18, 0x1
move v0, v12
move/from16 v1, v18
if-lt v0, v1, :cond_37a
const/4 v4, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
move/from16 v18, v0
if-nez v18, :cond_235
move/from16 v8, p3
move/from16 v14, p3
move v9, v8
:goto_41
if-nez v11, :cond_374
if-ne v9, v10, :cond_178
const/4 v4, 0x1
move v15, v14
:goto_47
if-nez v17, :cond_1fd
move v0, v15
move/from16 v1, v16
if-ne v0, v1, :cond_1bd
if-eqz v4, :cond_1b7
move v14, v15
move v8, v9
:goto_52
:cond_52
const/16 v18, 0x2
move v0, v12
move/from16 v1, v18
if-lt v0, v1, :cond_36a
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
move/from16 v18, v0
add-int v6, v6, v18
move/from16 v8, p3
move/from16 v14, p3
const/4 v4, 0x0
move v9, v8
:goto_67
if-nez v11, :cond_36e
if-ne v9, v10, :cond_2ad
const/4 v4, 0x1
move v15, v14
:goto_6d
if-nez v17, :cond_332
move v0, v15
move/from16 v1, v16
if-ne v0, v1, :cond_2f2
if-eqz v4, :cond_2ec
const/16 v18, 0x0
move v14, v15
move v8, v9
:goto_7a
return v18
:cond_7b
add-int/lit8 v8, v9, 0x1
move-object/from16 v0, p1
move v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
const/16 v18, 0xff
move v0, v7
move/from16 v1, v18
if-le v0, v1, :cond_90
invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v18
goto :goto_7a
:cond_90
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
aget v11, v18, v7
invoke-static {v11}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_381
invoke-static {v11}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v18
const/16 v19, 0x2
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_ce
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x0
move-object/from16 v0, p0
move/from16 v1, v18
move v2, v11
move-object/from16 v3, p1
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v8, v0
const/4 v5, 0x1
:cond_ce
invoke-static {v11}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_381
invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v18
goto :goto_7a
:cond_d9
const/16 v18, 0x1
move v14, v15
move v8, v9
goto :goto_7a
:cond_de
add-int/lit8 v14, v15, 0x1
move-object/from16 v0, p2
move v1, v15
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
const/16 v18, 0xff
move v0, v13
move/from16 v1, v18
if-le v0, v1, :cond_f4
invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v18
move v8, v9
goto :goto_7a
:cond_f4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
aget v17, v18, v13
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_37e
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v18
const/16 v19, 0x2
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_133
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v14
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x0
move-object/from16 v0, p0
move/from16 v1, v18
move/from16 v2, v17
move-object/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v14, v0
const/4 v5, 0x1
:cond_133
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_37e
invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v18
move v8, v9
goto/16 :goto_7a
:cond_140
if-eqz v4, :cond_148
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_148
move v0, v11
move/from16 v1, v17
if-ne v0, v1, :cond_153
const/4 v11, 0x0
const/16 v17, 0x0
move v14, v15
goto/16 :goto_1d
:cond_153
xor-int v18, v11, v17
const/high16 v19, -0x100
and-int v18, v18, v19
if-eqz v18, :cond_171
ushr-int/lit8 v18, v11, 0x8
ushr-int/lit8 v19, v17, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-ge v0, v1, :cond_16b
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_16b
const/16 v18, 0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_171
shl-int/lit8 v11, v11, 0x8
shl-int/lit8 v17, v17, 0x8
move v14, v15
goto/16 :goto_1d
:cond_178
add-int/lit8 v8, v9, 0x1
move-object/from16 v0, p1
move v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v7
aget v11, v18, v19
invoke-static {v11}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_377
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x1
move-object/from16 v0, p0
move/from16 v1, v18
move v2, v11
move-object/from16 v3, p1
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v8, v0
move v9, v8
goto/16 :goto_41
:cond_1b7
const/16 v18, 0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_1bd
add-int/lit8 v14, v15, 0x1
move-object/from16 v0, p2
move v1, v15
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v13
aget v17, v18, v19
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_374
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v14
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x1
move-object/from16 v0, p0
move/from16 v1, v18
move/from16 v2, v17
move-object/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v14, v0
move v15, v14
goto/16 :goto_47
:cond_1fd
if-eqz v4, :cond_205
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_205
move v0, v11
move/from16 v1, v17
if-ne v0, v1, :cond_210
const/4 v11, 0x0
const/16 v17, 0x0
move v14, v15
goto/16 :goto_41
:cond_210
xor-int v18, v11, v17
const/high16 v19, -0x100
and-int v18, v18, v19
if-eqz v18, :cond_22e
ushr-int/lit8 v18, v11, 0x8
ushr-int/lit8 v19, v17, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-ge v0, v1, :cond_228
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_228
const/16 v18, 0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_22e
shl-int/lit8 v11, v11, 0x8
shl-int/lit8 v17, v17, 0x8
move v14, v15
goto/16 :goto_41
:cond_235
if-eqz v5, :cond_23f
invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v18
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_23f
move v8, v10
move/from16 v14, v16
:goto_242
if-nez v11, :cond_24a
move v0, v8
move/from16 v1, p3
if-ne v0, v1, :cond_257
const/4 v4, 0x1
:goto_24a
:cond_24a
if-nez v17, :cond_27f
move v0, v14
move/from16 v1, p3
if-ne v0, v1, :cond_26b
if-nez v4, :cond_52
const/16 v18, 0x1
goto/16 :goto_7a
:cond_257
add-int/lit8 v8, v8, -0x1
move-object/from16 v0, p1
move v1, v8
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v7
aget v11, v18, v19
goto :goto_242
:cond_26b
add-int/lit8 v14, v14, -0x1
move-object/from16 v0, p2
move v1, v14
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v13
aget v17, v18, v19
goto :goto_24a
:cond_27f
if-eqz v4, :cond_285
const/16 v18, -0x1
goto/16 :goto_7a
:cond_285
move v0, v11
move/from16 v1, v17
if-ne v0, v1, :cond_28e
const/4 v11, 0x0
const/16 v17, 0x0
goto :goto_242
:cond_28e
xor-int v18, v11, v17
const/high16 v19, -0x100
and-int v18, v18, v19
if-eqz v18, :cond_2a8
ushr-int/lit8 v18, v11, 0x8
ushr-int/lit8 v19, v17, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-ge v0, v1, :cond_2a4
const/16 v18, -0x1
goto/16 :goto_7a
:cond_2a4
const/16 v18, 0x1
goto/16 :goto_7a
:cond_2a8
shl-int/lit8 v11, v11, 0x8
shl-int/lit8 v17, v17, 0x8
goto :goto_242
:cond_2ad
add-int/lit8 v8, v9, 0x1
move-object/from16 v0, p1
move v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v7
aget v11, v18, v19
invoke-static {v11}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_371
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v8
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x2
move-object/from16 v0, p0
move/from16 v1, v18
move v2, v11
move-object/from16 v3, p1
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v8, v0
move v9, v8
goto/16 :goto_67
:cond_2ec
const/16 v18, 0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_2f2
add-int/lit8 v14, v15, 0x1
move-object/from16 v0, p2
move v1, v15
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
move-object/from16 v18, v0
add-int v19, v6, v13
aget v17, v18, v19
invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v18
if-eqz v18, :cond_36e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move v0, v14
move-object/from16 v1, v18
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
const/16 v18, 0x2
move-object/from16 v0, p0
move/from16 v1, v18
move/from16 v2, v17
move-object/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getLatinOneContraction(IILjava/lang/String;)I
move-result v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
move v14, v0
move v15, v14
goto/16 :goto_6d
:cond_332
if-eqz v4, :cond_33a
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_33a
move v0, v11
move/from16 v1, v17
if-ne v0, v1, :cond_345
const/4 v11, 0x0
const/16 v17, 0x0
move v14, v15
goto/16 :goto_67
:cond_345
xor-int v18, v11, v17
const/high16 v19, -0x100
and-int v18, v18, v19
if-eqz v18, :cond_363
ushr-int/lit8 v18, v11, 0x8
ushr-int/lit8 v19, v17, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-ge v0, v1, :cond_35d
const/16 v18, -0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_35d
const/16 v18, 0x1
move v14, v15
move v8, v9
goto/16 :goto_7a
:cond_363
shl-int/lit8 v11, v11, 0x8
shl-int/lit8 v17, v17, 0x8
move v14, v15
goto/16 :goto_67
:cond_36a
const/16 v18, 0x0
goto/16 :goto_7a
:cond_36e
move v15, v14
goto/16 :goto_6d
:cond_371
move v9, v8
goto/16 :goto_67
:cond_374
move v15, v14
goto/16 :goto_47
:cond_377
move v9, v8
goto/16 :goto_41
:cond_37a
move v14, v15
move v8, v9
goto/16 :goto_52
:cond_37e
move v15, v14
goto/16 :goto_23
:cond_381
move v9, v8
goto/16 :goto_1d
.end method
.method private final doCase()V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
array-length v0, v0
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
add-int/2addr v1, v2
if-gt v0, v1, :cond_27
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
:cond_27
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
add-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
return-void
.end method
.method private final doCaseBytes(IZI)I
.registers 10
const/4 v5, 0x1
invoke-direct {p0, p3}, Lcom/ibm/icu/text/RuleBasedCollator;->doCaseShift(I)I
move-result p3
if-eqz p2, :cond_23
if-eqz p1, :cond_23
and-int/lit16 v1, p1, 0xc0
int-to-byte v0, v1
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
const/16 v2, 0x19
if-ne v1, v2, :cond_3d
if-nez v0, :cond_24
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
sub-int/2addr v2, v5
aget-byte v3, v1, v2
add-int/lit8 p3, p3, -0x1
shl-int v4, v5, p3
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
:cond_23
:goto_23
return p3
:cond_24
sub-int v1, p3, v5
invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->doCaseShift(I)I
move-result p3
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
sub-int/2addr v2, v5
aget-byte v3, v1, v2
shr-int/lit8 v4, v0, 0x6
and-int/lit8 v4, v4, 0x1
add-int/lit8 p3, p3, -0x1
shl-int/2addr v4, p3
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
goto :goto_23
:cond_3d
if-eqz v0, :cond_65
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
sub-int/2addr v2, v5
aget-byte v3, v1, v2
add-int/lit8 p3, p3, -0x1
shl-int v4, v5, p3
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
invoke-direct {p0, p3}, Lcom/ibm/icu/text/RuleBasedCollator;->doCaseShift(I)I
move-result p3
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
sub-int/2addr v2, v5
aget-byte v3, v1, v2
shr-int/lit8 v4, v0, 0x7
and-int/lit8 v4, v4, 0x1
add-int/lit8 p3, p3, -0x1
shl-int/2addr v4, p3
or-int/2addr v3, v4
int-to-byte v3, v3
aput-byte v3, v1, v2
goto :goto_23
:cond_65
add-int/lit8 p3, p3, -0x1
goto :goto_23
.end method
.method private final doCaseCompare()I
.registers 12
const/high16 v10, -0x1
const/4 v9, -0x1
const/4 v8, 0x1
const/4 v0, 0x0
const/4 v3, 0x0
:goto_6
const/4 v2, 0x0
const/4 v5, 0x0
move v1, v0
:goto_9
and-int/lit8 v6, v2, 0x3f
if-nez v6, :cond_8f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
add-int/lit8 v0, v1, 0x1
aget v2, v6, v1
invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v6
if-nez v6, :cond_28
and-int v6, v2, v10
if-nez v6, :cond_21
iget-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
if-ne v6, v8, :cond_28
:cond_21
and-int/lit16 v2, v2, 0xff
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
xor-int/2addr v2, v6
move v1, v0
goto :goto_9
:cond_28
const/4 v2, 0x0
move v1, v0
goto :goto_9
:goto_2b
and-int/lit8 v6, v5, 0x3f
if-nez v6, :cond_4d
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
add-int/lit8 v3, v4, 0x1
aget v5, v6, v4
invoke-static {v5}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v6
if-nez v6, :cond_4a
and-int v6, v5, v10
if-nez v6, :cond_43
iget-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
if-ne v6, v8, :cond_4a
:cond_43
and-int/lit16 v5, v5, 0xff
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
xor-int/2addr v5, v6
move v4, v3
goto :goto_2b
:cond_4a
const/4 v5, 0x0
move v4, v3
goto :goto_2b
:cond_4d
and-int/lit16 v2, v2, 0xc0
and-int/lit16 v5, v5, 0xc0
if-ne v2, v5, :cond_6f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v8
aget v6, v6, v7
if-ne v6, v9, :cond_65
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v8
aget v6, v6, v7
if-eq v6, v9, :cond_8d
move v6, v9
:goto_64
return v6
:cond_65
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v8
aget v6, v6, v7
if-ne v6, v9, :cond_89
move v6, v8
goto :goto_64
:cond_6f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v8
aget v6, v6, v7
if-ne v6, v9, :cond_79
move v6, v9
goto :goto_64
:cond_79
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v1, v8
aget v6, v6, v7
if-ne v6, v9, :cond_83
move v6, v8
goto :goto_64
:cond_83
if-ge v2, v5, :cond_87
move v6, v9
goto :goto_64
:cond_87
move v6, v8
goto :goto_64
:cond_89
move v3, v4
move v0, v1
goto/16 :goto_6
:cond_8d
const/4 v6, 0x0
goto :goto_64
:cond_8f
move v4, v3
goto :goto_2b
.end method
.method private final doCaseShift(I)I
.registers 5
if-nez p1, :cond_15
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
const/16 v2, -0x80
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
const/4 p1, 0x7
:cond_15
return p1
.end method
.method private final doFrench()V
.registers 11
const/16 v9, 0x45
const/4 v8, 0x5
const/4 v7, 0x1
const/16 v6, 0x40
const/4 v0, 0x0
:goto_7
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
if-ge v0, v2, :cond_9e
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
sub-int/2addr v3, v0
sub-int/2addr v3, v7
aget-byte v1, v2, v3
if-ne v1, v8, :cond_1e
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
:goto_1b
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1e
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-lez v2, :cond_5c
and-int/lit16 v2, v1, 0xff
if-le v2, v8, :cond_6d
:goto_26
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v2, v6, :cond_42
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
const/16 v4, 0x46
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v2, v6
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_26
:cond_42
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
const/16 v4, 0x86
iget v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v5, v7
sub-int/2addr v4, v5
int-to-byte v4, v4
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
:goto_59
const/4 v2, 0x0
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
:cond_5c
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto :goto_1b
:cond_6d
:goto_6d
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v2, v6, :cond_87
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v2, v3, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v2, v6
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_6d
:cond_87
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v4, v7
add-int/lit8 v4, v4, 0x5
int-to-byte v4, v4
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto :goto_59
:cond_9e
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-lez v2, :cond_d2
:goto_a2
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v2, v6, :cond_bc
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v2, v3, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v2, v6
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_a2
:cond_bc
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v4, v7
add-int/lit8 v4, v4, 0x5
int-to-byte v4, v4
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
:cond_d2
return-void
.end method
.method private final doIdentical(Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Lcom/ibm/icu/impl/BOCU;->getCompressionLength(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
const/4 v3, 0x1
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
array-length v1, v1
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/2addr v2, v0
if-gt v1, v2, :cond_29
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v3, v0, 0x1
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
:cond_29
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {p1, v1, v2}, Lcom/ibm/icu/impl/BOCU;->compress(Ljava/lang/String;[BI)I
move-result v1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
return-void
.end method
.method private static final doIdenticalCompare(Ljava/lang/String;Ljava/lang/String;IZ)I
.registers 7
const/4 v2, 0x0
if-eqz p3, :cond_20
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p0, v0, v2}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-eq v0, v1, :cond_11
invoke-static {p0, v2}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object p0
:cond_11
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v0, v2}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-eq v0, v1, :cond_1f
invoke-static {p1, v2}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object p1
:cond_1f
const/4 p2, 0x0
:cond_20
invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->doStringCompare(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method private final doPrimaryBytes(IZZIII)I
.registers 13
ushr-int/lit8 p1, p1, 0x10
and-int/lit16 v1, p1, 0xff
ushr-int/lit8 v0, p1, 0x8
if-eqz p3, :cond_69
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-lez v2, :cond_42
:goto_c
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-le v2, p6, :cond_29
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int v4, p5, p6
int-to-byte v4, v4
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
sub-int/2addr v2, p6
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
goto :goto_c
:cond_29
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
const/4 v5, 0x1
sub-int/2addr v4, v5
add-int/2addr v4, p5
int-to-byte v4, v4
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
const/4 v2, 0x0
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
:cond_42
if-eqz v0, :cond_55
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
int-to-byte v4, v0
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
:cond_55
if-eqz v1, :cond_68
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
int-to-byte v4, v1
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
:cond_68
:goto_68
return p4
:cond_69
if-eqz v0, :cond_68
if-eqz p2, :cond_102
if-ne p4, v0, :cond_81
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v1
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto :goto_68
:cond_81
if-eqz p4, :cond_96
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
if-le v0, p4, :cond_ab
const/4 v4, -0x1
:goto_8a
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
:cond_96
if-nez v1, :cond_ad
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v0
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
const/4 p4, 0x0
goto :goto_68
:cond_ab
const/4 v4, 0x3
goto :goto_8a
:cond_ad
const/16 v2, 0x4d
if-lt v0, v2, :cond_b9
const/16 v2, 0xa0
if-le v0, v2, :cond_dd
const/16 v2, 0xe0
if-ge v0, v2, :cond_dd
:cond_b9
const/4 p4, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v0
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v1
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto :goto_68
:cond_dd
move p4, v0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v0
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v1
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto/16 :goto_68
:cond_102
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v0
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
if-eqz v1, :cond_68
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
int-to-byte v4, v1
invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto/16 :goto_68
.end method
.method private final doPrimaryCompare(ZILjava/lang/String;Ljava/lang/String;I)I
.registers 15
const/4 v8, 0x0
const/high16 v7, -0x1
const/4 v6, -0x1
const/4 v5, 0x1
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-virtual {v3, p3}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-virtual {v3, v4, p5}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Lcom/ibm/icu/text/UCharacterIterator;I)V
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-virtual {v3, p4}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-virtual {v3, v4, p5}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Lcom/ibm/icu/text/UCharacterIterator;I)V
iget-boolean v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
if-nez v3, :cond_96
const/4 v0, 0x0
:goto_22
:cond_22
const/4 v1, 0x0
:cond_23
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v1
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
invoke-static {v3, v4, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
and-int/2addr v1, v7
if-eqz v1, :cond_23
const/4 v2, 0x0
:cond_3d
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
invoke-static {v3, v4, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
and-int/2addr v2, v7
if-eqz v2, :cond_3d
if-ne v1, v2, :cond_8f
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
sub-int/2addr v4, v5
aget v3, v3, v4
if-ne v3, v6, :cond_6c
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
sub-int/2addr v4, v5
aget v3, v3, v4
if-eq v3, v6, :cond_94
move v3, v6
:goto_6b
return v3
:cond_6c
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
sub-int/2addr v4, v5
aget v3, v3, v4
if-ne v3, v6, :cond_77
move v3, v5
goto :goto_6b
:cond_77
if-eqz p1, :cond_22
if-nez v0, :cond_22
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-boolean v3, v3, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-boolean v4, v4, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z
if-eq v3, v4, :cond_22
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iget-boolean v3, v3, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z
if-eqz v3, :cond_8d
const/4 v0, -0x1
goto :goto_22
:cond_8d
const/4 v0, 0x1
goto :goto_22
:cond_8f
invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->endPrimaryCompare(II)I
move-result v3
goto :goto_6b
:cond_94
move v3, v0
goto :goto_6b
:cond_96
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-direct {p0, v3, p2, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->getPrimaryShiftedCompareCE(Lcom/ibm/icu/text/CollationElementIterator;IZ)I
move-result v1
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-direct {p0, v3, p2, v8}, Lcom/ibm/icu/text/RuleBasedCollator;->getPrimaryShiftedCompareCE(Lcom/ibm/icu/text/CollationElementIterator;IZ)I
move-result v2
if-ne v1, v2, :cond_af
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
sub-int/2addr v4, v5
aget v3, v3, v4
if-ne v3, v6, :cond_96
move v3, v8
goto :goto_6b
:cond_af
invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->endPrimaryCompare(II)I
move-result v3
goto :goto_6b
.end method
.method private final doQuaternary(II)V
.registers 8
const/4 v3, 0x1
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-lez v0, :cond_37
:goto_5
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-le v0, p2, :cond_22
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int v2, p1, p2
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
sub-int/2addr v0, p2
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
goto :goto_5
:cond_22
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
sub-int/2addr v2, v3
add-int/2addr v2, p1
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
:cond_37
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v0, v1, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
array-length v0, v0
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/2addr v1, v2
if-gt v0, v1, :cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
:cond_5d
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
return-void
.end method
.method private final doQuaternaryBytes(ZIIB)V
.registers 9
if-eqz p1, :cond_4d
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-lez v0, :cond_3c
:goto_6
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
if-le v0, p3, :cond_23
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int v2, p2, p3
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
sub-int/2addr v0, p3
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
goto :goto_6
:cond_23
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
const/4 v3, 0x1
sub-int/2addr v2, v3
add-int/2addr v2, p2
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
:cond_3c
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
invoke-static {v0, v1, p4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
:goto_4c
return-void
:cond_4d
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
goto :goto_4c
.end method
.method private final doQuaternaryCompare(I)I
.registers 15
const/high16 v12, -0x1
const/4 v11, 0x1
const/4 v10, -0x1
const/4 v0, 0x1
const/4 v4, 0x1
const/4 v1, 0x0
const/4 v5, 0x0
:goto_8
const/4 v3, 0x0
const/4 v7, 0x0
move v2, v1
:goto_b
if-eqz v3, :cond_15
invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v8
if-eqz v8, :cond_37
if-nez v0, :cond_37
:cond_15
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
add-int/lit8 v1, v2, 0x1
aget v3, v8, v2
invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v8
if-eqz v8, :cond_25
if-nez v0, :cond_a8
move v2, v1
goto :goto_b
:cond_25
invoke-static {v3, p1}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v8
if-gtz v8, :cond_2f
and-int v8, v3, v12
if-nez v8, :cond_34
:cond_2f
const/high16 v3, -0x1
const/4 v0, 0x0
move v2, v1
goto :goto_b
:cond_34
const/4 v0, 0x1
move v2, v1
goto :goto_b
:cond_37
ushr-int/lit8 v3, v3, 0x10
move v6, v5
:goto_3a
if-eqz v7, :cond_44
invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v8
if-eqz v8, :cond_66
if-nez v4, :cond_66
:cond_44
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
add-int/lit8 v5, v6, 0x1
aget v7, v8, v6
invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v8
if-eqz v8, :cond_54
if-nez v4, :cond_a6
move v6, v5
goto :goto_3a
:cond_54
invoke-static {v7, p1}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v8
if-gtz v8, :cond_5e
and-int v8, v7, v12
if-nez v8, :cond_63
:cond_5e
const/high16 v7, -0x1
const/4 v4, 0x0
move v6, v5
goto :goto_3a
:cond_63
const/4 v4, 0x1
move v6, v5
goto :goto_3a
:cond_66
ushr-int/lit8 v7, v7, 0x10
if-ne v3, v7, :cond_86
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v9, v2, v11
aget v8, v8, v9
if-ne v8, v10, :cond_7c
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v9, v6, v11
aget v8, v8, v9
if-eq v8, v10, :cond_a4
move v8, v10
:goto_7b
return v8
:cond_7c
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v9, v6, v11
aget v8, v8, v9
if-ne v8, v10, :cond_a0
move v8, v11
goto :goto_7b
:cond_86
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v9, v2, v11
aget v8, v8, v9
if-ne v8, v10, :cond_90
move v8, v10
goto :goto_7b
:cond_90
iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v9, v6, v11
aget v8, v8, v9
if-ne v8, v10, :cond_9a
move v8, v11
goto :goto_7b
:cond_9a
if-ge v3, v7, :cond_9e
move v8, v10
goto :goto_7b
:cond_9e
move v8, v11
goto :goto_7b
:cond_a0
move v5, v6
move v1, v2
goto/16 :goto_8
:cond_a4
const/4 v8, 0x0
goto :goto_7b
:cond_a6
move v6, v5
goto :goto_3a
:cond_a8
move v2, v1
goto/16 :goto_b
.end method
.method private final doSecondary(Z)V
.registers 7
const/16 v4, 0x40
const/4 v3, 0x1
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-lez v0, :cond_39
:goto_7
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v0, v4, :cond_23
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
const/16 v2, 0x45
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v0, v4
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_7
:cond_23
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v2, v3
add-int/lit8 v2, v2, 0x5
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
:cond_39
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v0, v1, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
if-eqz p1, :cond_4f
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->doFrench()V
:goto_4e
return-void
:cond_4f
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
array-length v0, v0
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/2addr v1, v2
if-gt v0, v1, :cond_65
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
:cond_65
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
goto :goto_4e
.end method
.method private final doSecondaryBytes(IZZ)V
.registers 11
const/4 v2, 0x5
const/4 v6, 0x1
const/4 v5, -0x1
const/16 v4, 0x40
shr-int/lit8 p1, p1, 0x8
and-int/lit16 v0, p1, 0xff
if-eqz v0, :cond_17
if-nez p3, :cond_99
if-ne v0, v2, :cond_18
if-eqz p2, :cond_18
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
:cond_17
:goto_17
return-void
:cond_18
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-lez v1, :cond_54
if-le v0, v2, :cond_66
:goto_1e
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v1, v4, :cond_3a
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
const/16 v3, 0x46
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v1, v4
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_1e
:cond_3a
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
const/16 v3, 0x86
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v4, v6
sub-int/2addr v3, v4
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
:goto_51
const/4 v1, 0x0
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
:cond_54
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
int-to-byte v3, v0
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
goto :goto_17
:cond_66
:goto_66
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
if-le v1, v4, :cond_82
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
const/16 v3, 0x45
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v1, v4
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
goto :goto_66
:cond_82
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
sub-int/2addr v3, v6
add-int/lit8 v3, v3, 0x5
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
goto :goto_51
:cond_99
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
int-to-byte v3, v0
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
if-eqz p2, :cond_b9
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
if-eq v1, v5, :cond_17
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->reverseBuffer([B)V
iput v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
goto/16 :goto_17
:cond_b9
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
if-ne v1, v5, :cond_c3
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
const/4 v2, 0x2
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
:cond_c3
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
sub-int/2addr v1, v6
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchEnd_:I
goto/16 :goto_17
.end method
.method private final doSecondaryCompare(Z)I
.registers 14
const v11, 0xff00
const/4 v7, 0x2
const/4 v10, 0x0
const/4 v9, 0x1
const/4 v8, -0x1
if-nez p1, :cond_62
const/4 v0, 0x0
const/4 v3, 0x0
:goto_b
const/4 v2, 0x0
move v1, v0
:goto_d
if-nez v2, :cond_19
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
add-int/lit8 v0, v1, 0x1
aget v6, v6, v1
and-int v2, v6, v11
move v1, v0
goto :goto_d
:cond_19
const/4 v5, 0x0
move v4, v3
:goto_1b
if-nez v5, :cond_27
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
add-int/lit8 v3, v4, 0x1
aget v6, v6, v4
and-int v5, v6, v11
move v4, v3
goto :goto_1b
:cond_27
if-ne v2, v5, :cond_45
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v9
aget v6, v6, v7
if-ne v6, v8, :cond_3b
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-eq v6, v8, :cond_8e
move v6, v8
:goto_3a
return v6
:cond_3b
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-ne v6, v8, :cond_5f
move v6, v9
goto :goto_3a
:cond_45
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v9
aget v6, v6, v7
if-ne v6, v8, :cond_4f
move v6, v8
goto :goto_3a
:cond_4f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-ne v6, v8, :cond_59
move v6, v9
goto :goto_3a
:cond_59
if-ge v2, v5, :cond_5d
move v6, v8
goto :goto_3a
:cond_5d
move v6, v9
goto :goto_3a
:cond_5f
move v3, v4
move v0, v1
goto :goto_b
:cond_62
iput v10, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilContOffset_:I
iput v10, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilContOffset_:I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
sub-int/2addr v6, v7
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
sub-int/2addr v6, v7
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilOffset_:I
:cond_70
invoke-direct {p0, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->getSecondaryFrenchCE(Z)I
move-result v2
invoke-direct {p0, v10}, Lcom/ibm/icu/text/RuleBasedCollator;->getSecondaryFrenchCE(Z)I
move-result v5
if-ne v2, v5, :cond_90
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
if-gez v6, :cond_82
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilOffset_:I
if-ltz v6, :cond_8e
:cond_82
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
if-ltz v6, :cond_70
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
aget v6, v6, v7
if-ne v6, v8, :cond_70
:cond_8e
move v6, v10
goto :goto_3a
:cond_90
if-ge v2, v5, :cond_94
move v6, v8
goto :goto_3a
:cond_94
move v6, v9
goto :goto_3a
.end method
.method private static final doStringCompare(Ljava/lang/String;Ljava/lang/String;I)I
.registers 12
const v8, 0xd800
const/4 v7, 0x1
const/4 v6, -0x1
const/4 v2, 0x0
const/4 v4, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
move-result v0
move v1, p2
:goto_14
if-ge v1, v0, :cond_40
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
add-int/lit8 p2, v1, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v2, v4, :cond_3e
:goto_22
if-ne v2, v4, :cond_2e
if-ne p2, v0, :cond_2e
if-le v3, v0, :cond_2a
move v6, v7
:cond_29
:goto_29
return v6
:cond_2a
if-gt v5, v0, :cond_29
const/4 v6, 0x0
goto :goto_29
:cond_2e
if-lt v2, v8, :cond_3a
if-lt v4, v8, :cond_3a
invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->fixupUTF16(C)C
move-result v2
invoke-static {v4}, Lcom/ibm/icu/text/RuleBasedCollator;->fixupUTF16(C)C
move-result v4
:cond_3a
if-lt v2, v4, :cond_29
move v6, v7
goto :goto_29
:cond_3e
move v1, p2
goto :goto_14
:cond_40
move p2, v1
goto :goto_22
.end method
.method private final doTertiary()V
.registers 6
const/4 v4, 0x1
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
if-lez v0, :cond_44
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/4 v1, 0x5
if-eq v0, v1, :cond_7e
:goto_a
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
if-lt v0, v1, :cond_2e
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sub-int/2addr v2, v3
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
goto :goto_a
:cond_2e
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
sub-int/2addr v2, v3
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
:goto_44
:cond_44
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v0, v1, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
array-length v0, v0
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/2addr v1, v2
if-gt v0, v1, :cond_6a
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->increase([BII)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
:cond_6a
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
return-void
:goto_7e
:cond_7e
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
if-le v0, v1, :cond_a2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
add-int/2addr v2, v3
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
goto :goto_7e
:cond_a2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
sub-int/2addr v3, v4
add-int/2addr v2, v3
int-to-byte v2, v2
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
goto :goto_44
.end method
.method private final doTertiaryBytes(IZ)V
.registers 9
const/4 v5, 0x1
if-eqz p1, :cond_f
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
if-ne p1, v1, :cond_10
if-eqz p2, :cond_10
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
:cond_f
:goto_f
return-void
:cond_10
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
and-int/lit16 v0, v1, 0xff
if-le p1, v0, :cond_48
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/4 v2, 0x5
if-ne v1, v2, :cond_48
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
add-int/2addr p1, v1
:goto_1e
:cond_1e
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
if-lez v1, :cond_6e
if-le p1, v0, :cond_80
:goto_24
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
if-le v1, v2, :cond_54
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sub-int/2addr v3, v4
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
goto :goto_24
:cond_48
if-gt p1, v0, :cond_1e
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/16 v2, 0xc5
if-ne v1, v2, :cond_1e
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
sub-int/2addr p1, v1
goto :goto_1e
:cond_54
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
sub-int/2addr v4, v5
sub-int/2addr v3, v4
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
:goto_6b
const/4 v1, 0x0
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
:cond_6e
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
int-to-byte v3, p1
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
goto :goto_f
:cond_80
:goto_80
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
if-le v1, v2, :cond_a4
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
add-int/2addr v3, v4
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
goto :goto_80
:cond_a4
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iget v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
sub-int/2addr v4, v5
add-int/2addr v3, v4
int-to-byte v3, v3
invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
goto :goto_6b
.end method
.method private final doTertiaryCompare()I
.registers 11
const/4 v9, 0x1
const/4 v8, -0x1
const/4 v0, 0x0
const/4 v3, 0x0
:goto_4
const/4 v2, 0x0
const/4 v5, 0x0
move v1, v0
:goto_7
and-int/lit8 v6, v2, 0x3f
if-nez v6, :cond_7e
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
add-int/lit8 v0, v1, 0x1
aget v6, v6, v1
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
and-int v2, v6, v7
invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v6
if-nez v6, :cond_20
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
xor-int/2addr v2, v6
move v1, v0
goto :goto_7
:cond_20
and-int/lit8 v2, v2, 0x3f
move v1, v0
goto :goto_7
:goto_24
and-int/lit8 v6, v5, 0x3f
if-nez v6, :cond_41
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
add-int/lit8 v3, v4, 0x1
aget v6, v6, v4
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
and-int v5, v6, v7
invoke-static {v5}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v6
if-nez v6, :cond_3d
iget v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
xor-int/2addr v5, v6
move v4, v3
goto :goto_24
:cond_3d
and-int/lit8 v5, v5, 0x3f
move v4, v3
goto :goto_24
:cond_41
if-ne v2, v5, :cond_5f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v9
aget v6, v6, v7
if-ne v6, v8, :cond_55
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-eq v6, v8, :cond_7c
move v6, v8
:goto_54
return v6
:cond_55
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-ne v6, v8, :cond_79
move v6, v9
goto :goto_54
:cond_5f
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
sub-int v7, v1, v9
aget v6, v6, v7
if-ne v6, v8, :cond_69
move v6, v8
goto :goto_54
:cond_69
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
sub-int v7, v4, v9
aget v6, v6, v7
if-ne v6, v8, :cond_73
move v6, v9
goto :goto_54
:cond_73
if-ge v2, v5, :cond_77
move v6, v8
goto :goto_54
:cond_77
move v6, v9
goto :goto_54
:cond_79
move v3, v4
move v0, v1
goto :goto_4
:cond_7c
const/4 v6, 0x0
goto :goto_54
:cond_7e
move v4, v3
goto :goto_24
.end method
.method private final endPrimaryCompare(II)I
.registers 10
const/4 v6, 0x0
const/4 v5, 0x1
const/4 v4, -0x1
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
sub-int/2addr v3, v5
aget v2, v2, v3
if-ne v2, v4, :cond_1f
move v0, v5
:goto_d
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
sub-int/2addr v3, v5
aget v2, v2, v3
if-ne v2, v4, :cond_21
move v1, v5
:goto_17
iput v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
iput v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
if-eqz v0, :cond_23
move v2, v4
:goto_1e
return v2
:cond_1f
move v0, v6
goto :goto_d
:cond_21
move v1, v6
goto :goto_17
:cond_23
if-eqz v1, :cond_27
move v2, v5
goto :goto_1e
:cond_27
ushr-int/lit8 p1, p1, 0x10
ushr-int/lit8 p2, p2, 0x10
if-ge p1, p2, :cond_2f
move v2, v4
goto :goto_1e
:cond_2f
move v2, v5
goto :goto_1e
.end method
.method private static final fixupUTF16(C)C
.registers 2
const v0, 0xe000
if-lt p0, v0, :cond_b
const/16 v0, 0x800
sub-int v0, p0, v0
int-to-char p0, v0
:goto_a
return p0
:cond_b
add-int/lit16 v0, p0, 0x2000
int-to-char p0, v0
goto :goto_a
.end method
.method private final getFirstUnmatchedOffset(Ljava/lang/String;Ljava/lang/String;)I
.registers 12
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
move v0, v4
if-le v0, v6, :cond_d
move v0, v6
:goto_d
:cond_d
if-ge v1, v0, :cond_1c
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
move-result v8
if-ne v7, v8, :cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_1c
if-lez v1, :cond_44
const/4 v3, 0x0
const/4 v5, 0x0
if-ge v1, v0, :cond_46
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
:goto_2a
invoke-virtual {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z
move-result v7
if-nez v7, :cond_36
invoke-virtual {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z
move-result v7
if-eqz v7, :cond_44
:cond_36
add-int/lit8 v1, v1, -0x1
if-lez v1, :cond_44
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-virtual {p0, v7}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z
move-result v7
if-nez v7, :cond_36
:cond_44
move v2, v1
:goto_45
return v2
:cond_46
const/4 v7, 0x1
sub-int v7, v0, v7
invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z
move-result v7
if-eqz v7, :cond_55
move v5, v3
goto :goto_2a
:cond_55
if-ne v4, v6, :cond_59
move v2, v1
goto :goto_45
:cond_59
if-ge v4, v6, :cond_60
invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
goto :goto_2a
:cond_60
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
goto :goto_2a
.end method
.method private getLatinOneContraction(IILjava/lang/String;)I
.registers 13
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v3
and-int/lit16 v7, p2, 0xfff
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sub-int v0, v7, v8
const/4 v4, 0x1
const v7, 0xfff000
and-int/2addr v7, p2
ushr-int/lit8 v2, v7, 0xc
const/4 v5, 0x0
const/4 v6, 0x0
:goto_13
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
iget v7, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
if-ne v7, v3, :cond_22
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/2addr v8, p1
add-int/2addr v8, v2
aget v7, v7, v8
:goto_21
return v7
:cond_22
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
iget v7, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C
move-result v5
:goto_2a
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
add-int v8, v0, v4
aget-char v6, v7, v8
if-le v5, v6, :cond_35
add-int/lit8 v4, v4, 0x1
goto :goto_2a
:cond_35
if-ne v5, v6, :cond_49
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
iget v8, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
add-int/lit8 v8, v8, 0x1
iput v8, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/2addr v8, p1
add-int/2addr v8, v2
add-int/2addr v8, v4
aget v7, v7, v8
goto :goto_21
:cond_49
const/16 v7, 0xff
if-le v5, v7, :cond_50
const/high16 v7, -0x100
goto :goto_21
:cond_50
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v7, v5}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I
move-result v1
if-nez v1, :cond_61
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
iget v8, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
add-int/lit8 v8, v8, 0x1
iput v8, v7, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->index:I
goto :goto_13
:cond_61
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/2addr v8, p1
add-int/2addr v8, v2
aget v7, v7, v8
goto :goto_21
.end method
.method private final getPrimaryShiftedCompareCE(Lcom/ibm/icu/text/CollationElementIterator;IZ)I
.registers 10
const/high16 v5, -0x1
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
if-nez p3, :cond_e
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
:cond_e
:goto_e
invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
const/4 v4, -0x1
if-ne v2, v4, :cond_23
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
:goto_1b
if-eqz p3, :cond_76
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBufferSize_:I
:goto_21
and-int/2addr v2, v5
return v2
:cond_23
if-eqz v2, :cond_e
if-eqz v3, :cond_2b
and-int v4, v2, v5
if-eqz v4, :cond_e
:cond_2b
invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v4
if-eqz v4, :cond_52
and-int v4, v2, v5
if-eqz v4, :cond_49
if-eqz v3, :cond_42
and-int v4, v2, v5
or-int/lit16 v2, v4, 0xc0
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_42
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_49
if-nez v3, :cond_e
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_52
and-int v4, v2, v5
invoke-static {v4, p2}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I
move-result v4
if-lez v4, :cond_61
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_61
and-int v4, v2, v5
if-eqz v4, :cond_6e
const/4 v3, 0x1
and-int/2addr v2, v5
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_6e
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([III)[I
move-result-object v0
add-int/lit8 v1, v1, 0x1
const/4 v3, 0x0
goto :goto_e
:cond_76
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBufferSize_:I
goto :goto_21
.end method
.method private final getSecondaryFrenchCE(Z)I
.registers 8
const/4 v4, 0x0
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilContOffset_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
if-nez p1, :cond_54
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilOffset_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilContOffset_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
move v3, v2
:goto_10
if-nez v4, :cond_46
if-ltz v3, :cond_46
if-nez v1, :cond_38
aget v4, v0, v3
move v2, v3
:goto_19
add-int/lit8 v3, v2, -0x1
aget v5, v0, v2
invoke-static {v5}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-eqz v5, :cond_25
move v2, v3
goto :goto_19
:cond_25
add-int/lit8 v5, v3, 0x1
aget v5, v0, v5
invoke-static {v5}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-eqz v5, :cond_52
move v1, v3
add-int/lit8 v2, v3, 0x2
:goto_32
:cond_32
const v5, 0xff00
and-int/2addr v4, v5
move v3, v2
goto :goto_10
:cond_38
add-int/lit8 v2, v3, 0x1
aget v4, v0, v3
invoke-static {v4}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-nez v5, :cond_32
move v2, v1
const/4 v1, 0x0
move v3, v2
goto :goto_10
:cond_46
if-eqz p1, :cond_4d
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilOffset_:I
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilContOffset_:I
:goto_4c
return v4
:cond_4d
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilOffset_:I
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilContOffset_:I
goto :goto_4c
:cond_52
move v2, v3
goto :goto_32
:cond_54
move v3, v2
goto :goto_10
.end method
.method private final getSortKey(Ljava/lang/String;ZIILcom/ibm/icu/text/RawCollationKey;)V
.registers 9
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
if-eqz v0, :cond_8
invoke-direct {p0, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->doSecondary(Z)V
:cond_8
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare0_:Z
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->doCase()V
:cond_f
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare3_:Z
if-eqz v0, :cond_24
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->doTertiary()V
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
if-eqz v0, :cond_24
invoke-direct {p0, p3, p4}, Lcom/ibm/icu/text/RuleBasedCollator;->doQuaternary(II)V
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare5_:Z
if-eqz v0, :cond_24
invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->doIdentical(Ljava/lang/String;)V
:cond_24
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->append([BIB)[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
invoke-virtual {p5, v0, v2, v1}, Lcom/ibm/icu/text/RawCollationKey;->set([BII)Lcom/ibm/icu/util/ByteArrayWrapper;
return-void
.end method
.method private final getSortKeyBytes(Ljava/lang/String;ZBII)V
.registers 23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
move-object v5, v0
if-nez v5, :cond_e
const/4 v5, 0x1
move-object/from16 v0, p0
move v1, v5
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
:cond_e
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v12
const/16 v5, 0x10
move-object/from16 v0, p0
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/StringUCharacterIterator;->setText(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
move-object v6, v0
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Lcom/ibm/icu/text/UCharacterIterator;)V
const/4 v5, -0x1
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
const/4 v5, -0x1
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchEnd_:I
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v9, 0x0
const/4 v13, 0x0
:goto_42
:cond_42
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v6
const/4 v5, -0x1
if-ne v6, v5, :cond_68
move-object/from16 v0, p0
move v1, v12
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
move v5, v0
const/4 v6, -0x1
if-eq v5, v6, :cond_67
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
move-object v5, v0
move-object/from16 v0, p0
move-object v1, v5
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->reverseBuffer([B)V
:cond_67
return-void
:cond_68
if-eqz v6, :cond_42
invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v5
if-nez v5, :cond_115
const/4 v5, 0x1
move v7, v5
:goto_72
const/high16 v5, -0x1
and-int/2addr v5, v6
if-nez v5, :cond_119
const/4 v5, 0x1
move v14, v5
:goto_79
ushr-int/lit8 v5, v6, 0x10
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
move v10, v0
if-gt v5, v10, :cond_11d
const/4 v5, 0x1
move v15, v5
:goto_84
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
move v5, v0
if-eqz v5, :cond_95
if-eqz v7, :cond_91
if-eqz v15, :cond_91
if-eqz v14, :cond_99
:cond_91
if-nez v7, :cond_95
if-nez v8, :cond_99
:cond_95
if-eqz v8, :cond_121
if-eqz v14, :cond_121
:cond_99
const/4 v5, 0x1
move v8, v5
:goto_9b
if-eqz v8, :cond_9f
if-nez v14, :cond_42
:cond_9f
move-object/from16 v5, p0
move/from16 v10, p4
move/from16 v11, p5
invoke-direct/range {v5 .. v11}, Lcom/ibm/icu/text/RuleBasedCollator;->doPrimaryBytes(IZZIII)I
move-result v9
if-nez v8, :cond_42
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
move v5, v0
if-eqz v5, :cond_bb
move-object/from16 v0, p0
move v1, v6
move v2, v7
move/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->doSecondaryBytes(IZZ)V
:cond_bb
move v0, v6
and-int/lit16 v0, v0, 0xff
move/from16 v16, v0
if-nez v7, :cond_c7
move v0, v6
and-int/lit16 v0, v0, -0xc1
move/from16 v16, v0
:cond_c7
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare0_:Z
move v5, v0
if-eqz v5, :cond_125
if-eqz v14, :cond_d7
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
move v5, v0
if-eqz v5, :cond_125
:cond_d7
move-object/from16 v0, p0
move/from16 v1, v16
move v2, v7
move v3, v13
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->doCaseBytes(IZI)I
move-result v13
:cond_e1
:goto_e1
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
move v5, v0
and-int v16, v16, v5
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare3_:Z
move v5, v0
if-eqz v5, :cond_f7
move-object/from16 v0, p0
move/from16 v1, v16
move v2, v7
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->doTertiaryBytes(IZ)V
:cond_f7
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
move v5, v0
if-eqz v5, :cond_42
if-eqz v7, :cond_42
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
move-object v5, v0
iget-boolean v5, v5, Lcom/ibm/icu/text/CollationElementIterator;->m_isCodePointHiragana_:Z
move-object/from16 v0, p0
move v1, v5
move/from16 v2, p4
move/from16 v3, p5
move/from16 v4, p3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->doQuaternaryBytes(ZIIB)V
goto/16 :goto_42
:cond_115
const/4 v5, 0x0
move v7, v5
goto/16 :goto_72
:cond_119
const/4 v5, 0x0
move v14, v5
goto/16 :goto_79
:cond_11d
const/4 v5, 0x0
move v15, v5
goto/16 :goto_84
:cond_121
const/4 v5, 0x0
move v8, v5
goto/16 :goto_9b
:cond_125
if-eqz v7, :cond_e1
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
move v5, v0
xor-int v16, v16, v5
goto :goto_e1
.end method
.method static getTag(I)I
.registers 2
const/high16 v0, 0xf00
and-int/2addr v0, p0
shr-int/lit8 v0, v0, 0x18
return v0
.end method
.method private static final increase([BII)[B
.registers 6
const/4 v2, 0x0
array-length v1, p0
add-int/2addr v1, p2
new-array v0, v1, [B
invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method private static final increase([III)[I
.registers 6
const/4 v2, 0x0
array-length v1, p0
add-int/2addr v1, p2
new-array v0, v1, [I
invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method private final init()V
.registers 4
const/16 v2, 0x300
const/4 v1, 0x0
iput-char v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
:goto_5
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
if-ge v0, v2, :cond_11
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(C)Z
move-result v0
if-eqz v0, :cond_4e
:cond_11
iput-char v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
:goto_13
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
if-ge v0, v2, :cond_1f
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isContractionEnd(C)Z
move-result v0
if-eqz v0, :cond_56
:cond_1f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setStrength(I)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultVariableTopValue_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsNumericCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
:cond_4e
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
add-int/lit8 v0, v0, 0x1
int-to-char v0, v0
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
goto :goto_5
:cond_56
iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
add-int/lit8 v0, v0, 0x1
int-to-char v0, v0
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
goto :goto_13
.end method
.method private init(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCAData()V
new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder;
invoke-direct {v0, p1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->setRules(Lcom/ibm/icu/text/RuleBasedCollator;)V
iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->init()V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
return-void
.end method
.method private final initUtility(Z)V
.registers 6
const/16 v3, 0x200
const/16 v2, 0x80
const/4 v0, 0x0
if-eqz p1, :cond_4c
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
if-nez v0, :cond_4b
new-instance v0, Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-direct {v0}, Lcom/ibm/icu/impl/StringUCharacterIterator;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-direct {v0, v1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
new-instance v0, Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-direct {v0}, Lcom/ibm/icu/impl/StringUCharacterIterator;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
invoke-direct {v0, v1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
const/16 v0, 0x20
new-array v0, v0, [B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
const/16 v0, 0x400
new-array v0, v0, [B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
new-array v0, v2, [B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
new-array v0, v2, [B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
new-array v0, v2, [B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
new-array v0, v3, [I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
new-array v0, v3, [I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
:goto_4b
:cond_4b
return-void
:cond_4c
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes0_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes1_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes2_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes3_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytes4_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilCEBuffer_:[I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_tgtUtilCEBuffer_:[I
goto :goto_4b
.end method
.method static final isContinuation(I)Z
.registers 3
const/4 v0, -0x1
if-eq p0, v0, :cond_b
and-int/lit16 v0, p0, 0xc0
const/16 v1, 0xc0
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method static isSpecial(I)Z
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
.method private processSpecials(Lcom/ibm/icu/text/RuleBasedCollator$contContext;)V
.registers 12
const/16 v3, 0x200
new-instance v7, Lcom/ibm/icu/impl/TrieIterator;
iget-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-direct {v7, v8}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
new-instance v2, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v2}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:cond_10
:goto_10
invoke-virtual {v7, v2}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v8
if-eqz v8, :cond_6c
iget v5, v2, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
iget v4, v2, Lcom/ibm/icu/util/RangeValueIterator$Element;->limit:I
iget v0, v2, Lcom/ibm/icu/util/RangeValueIterator$Element;->value:I
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v8
if-eqz v8, :cond_10
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v8
const/16 v9, 0xb
if-ne v8, v9, :cond_33
iget-boolean v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->addPrefixes:Z
if-nez v8, :cond_3a
:cond_33
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v8
const/4 v9, 0x2
if-ne v8, v9, :cond_55
:goto_3a
:cond_3a
if-ge v5, v4, :cond_10
iget-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->removedContractions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v8, :cond_4b
iget-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->removedContractions:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v8, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v8
if-eqz v8, :cond_4b
add-int/lit8 v5, v5, 0x1
goto :goto_3a
:cond_4b
int-to-char v8, v5
invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->addSpecial(Lcom/ibm/icu/text/RuleBasedCollator$contContext;Ljava/lang/StringBuffer;I)V
add-int/lit8 v5, v5, 0x1
goto :goto_3a
:cond_55
iget-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v8, :cond_10
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v8
const/4 v9, 0x1
if-ne v8, v9, :cond_10
move v6, v5
:goto_61
if-ge v6, v4, :cond_6d
iget-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;
add-int/lit8 v5, v6, 0x1
invoke-virtual {v8, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
move v6, v5
goto :goto_61
:cond_6c
return-void
:cond_6d
move v5, v6
goto :goto_10
.end method
.method private final resizeLatinOneTable(I)V
.registers 7
const/4 v3, 0x0
mul-int/lit8 v2, p1, 0x3
new-array v0, v2, [I
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
if-ge p1, v2, :cond_26
move v1, p1
:goto_a
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
invoke-static {v2, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v3, v3, 0x2
mul-int/lit8 v4, p1, 0x2
invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
return-void
:cond_26
iget v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
move v1, v2
goto :goto_a
.end method
.method private reverseBuffer([B)V
.registers 8
iget v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchStart_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilFrenchEnd_:I
move v2, v1
move v4, v3
:goto_6
if-ge v4, v2, :cond_17
aget-byte v0, p1, v4
add-int/lit8 v3, v4, 0x1
aget-byte v5, p1, v2
aput-byte v5, p1, v4
add-int/lit8 v1, v2, -0x1
aput-byte v0, p1, v2
move v2, v1
move v4, v3
goto :goto_6
:cond_17
return-void
.end method
.method private final setUpLatinOne()Z
.registers 15
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
if-eqz v11, :cond_8
iget-boolean v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_reallocLatinOneCEs_:Z
if-eqz v11, :cond_59
:cond_8
const/16 v11, 0x393
new-array v11, v11, [I
iput-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/16 v11, 0x131
iput v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
const/4 v11, 0x0
iput-boolean v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_reallocLatinOneCEs_:Z
:goto_15
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
if-nez v11, :cond_21
new-instance v11, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
const/4 v12, 0x0
invoke-direct {v11, p0, v12}, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
iput-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
:cond_21
const/4 v2, 0x0
const-string v11, ""
invoke-virtual {p0, v11}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v6
new-instance v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;
const/4 v11, 0x0
invoke-direct {v9, p0, v11}, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
const/4 v0, 0x0
const/16 v3, 0x100
const/4 v2, 0x0
:goto_32
const/16 v11, 0xff
if-gt v2, v11, :cond_1d2
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
const/16 v11, 0x100
if-ge v2, v11, :cond_60
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v11, v2}, Lcom/ibm/icu/impl/IntTrie;->getLatin1LinearValue(C)I
move-result v0
:goto_4c
:cond_4c
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v11
if-nez v11, :cond_73
invoke-direct {p0, v2, v0, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
:goto_55
:cond_55
add-int/lit8 v11, v2, 0x1
int-to-char v2, v11
goto :goto_32
:cond_59
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/4 v12, 0x0
invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V
goto :goto_15
:cond_60
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v11, v2}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I
move-result v0
const/high16 v11, -0x1000
if-ne v0, v11, :cond_4c
sget-object v11, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v11, v11, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v11, v2}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I
move-result v0
goto :goto_4c
:cond_73
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v11
sparse-switch v11, :sswitch_data_1dc
const/4 v11, 0x1
iput-boolean v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
const/4 v11, 0x0
:goto_7e
return v11
:sswitch_7f
invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v6, v11}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
:goto_86
invoke-virtual {v6}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
const/4 v11, -0x1
if-eq v0, v11, :cond_55
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
if-ltz v11, :cond_99
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
if-ltz v11, :cond_99
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
if-gez v11, :cond_b4
:cond_99
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/high16 v12, -0x100
aput v12, v11, v2
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v12, v2
const/high16 v13, -0x100
aput v13, v11, v12
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v2
const/high16 v13, -0x100
aput v13, v11, v12
goto :goto_55
:cond_b4
invoke-direct {p0, v2, v0, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
goto :goto_86
:sswitch_b8
const v11, 0xfff000
and-int/2addr v11, v0
if-eqz v11, :cond_c3
const/4 v11, 0x1
iput-boolean v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
const/4 v11, 0x0
goto :goto_7e
:cond_c3
const v11, 0xffffff
and-int/2addr v11, v0
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sub-int v1, v11, v12
and-int/lit16 v11, v3, 0xfff
shl-int/lit8 v11, v11, 0xc
or-int/2addr v0, v11
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
aput v0, v11, v2
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v12, v2
aput v0, v11, v12
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v2
aput v0, v11, v12
:cond_e4
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
aget v0, v11, v1
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v11
if-eqz v11, :cond_196
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I
move-result v11
const/4 v12, 0x1
if-ne v11, v12, :cond_196
const v11, 0xfffff0
and-int/2addr v11, v0
shr-int/lit8 v11, v11, 0x4
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
sub-int v7, v11, v12
and-int/lit8 v10, v0, 0xf
if-eqz v10, :cond_169
const/4 v5, 0x0
:goto_104
if-ge v5, v10, :cond_12c
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
if-ltz v11, :cond_112
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
if-ltz v11, :cond_112
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
if-gez v11, :cond_153
:cond_112
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/high16 v12, -0x100
aput v12, v11, v3
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
:cond_12c
:goto_12c
add-int/lit8 v11, v3, 0x1
int-to-char v3, v11
:goto_12f
add-int/lit8 v1, v1, 0x1
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
const/16 v11, 0x18
iput v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
iget v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
if-ne v3, v11, :cond_148
iget v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v11, v11, 0x2
invoke-direct {p0, v11}, Lcom/ibm/icu/text/RuleBasedCollator;->resizeLatinOneTable(I)V
:cond_148
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
aget-char v11, v11, v1
const v12, 0xffff
if-ne v11, v12, :cond_e4
goto/16 :goto_55
:cond_153
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
add-int v12, v7, v5
aget v11, v11, v12
invoke-direct {p0, v3, v11, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
add-int/lit8 v5, v5, 0x1
goto :goto_104
:cond_15f
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
add-int/lit8 v8, v7, 0x1
aget v11, v11, v7
invoke-direct {p0, v3, v11, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
move v7, v8
:cond_169
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
aget v11, v11, v7
if-eqz v11, :cond_12c
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
if-ltz v11, :cond_17b
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
if-ltz v11, :cond_17b
iget v11, v9, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
if-gez v11, :cond_15f
:cond_17b
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/high16 v12, -0x100
aput v12, v11, v3
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
goto :goto_12c
:cond_196
invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z
move-result v11
if-nez v11, :cond_1a4
add-int/lit8 v11, v3, 0x1
int-to-char v4, v11
invoke-direct {p0, v3, v0, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
move v3, v4
goto :goto_12f
:cond_1a4
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
const/high16 v12, -0x100
aput v12, v11, v3
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
iget-object v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
iget v12, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v3
const/high16 v13, -0x100
aput v13, v11, v12
add-int/lit8 v11, v3, 0x1
int-to-char v3, v11
goto/16 :goto_12f
:sswitch_1c3
const/16 v11, 0xb7
if-ne v2, v11, :cond_1cc
invoke-direct {p0, v2, v0, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->addLatinOneEntry(CILcom/ibm/icu/text/RuleBasedCollator$shiftValues;)V
goto/16 :goto_55
:cond_1cc
const/4 v11, 0x1
iput-boolean v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
const/4 v11, 0x0
goto/16 :goto_7e
:cond_1d2
iget v11, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneTableLen_:I
if-ge v3, v11, :cond_1d9
invoke-direct {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->resizeLatinOneTable(I)V
:cond_1d9
const/4 v11, 0x1
goto/16 :goto_7e
:sswitch_data_1dc
.sparse-switch
0x1 -> :sswitch_7f
0x2 -> :sswitch_b8
0xb -> :sswitch_1c3
0xd -> :sswitch_7f
.end sparse-switch
.end method
.method private updateInternalState()V
.registers 9
const/16 v4, 0x19
const/4 v7, 0x2
const/4 v3, 0x5
const/4 v6, 0x1
const/4 v5, 0x0
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-ne v1, v4, :cond_7a
const/16 v1, 0xc0
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
:goto_e
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
if-nez v1, :cond_18
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
const/16 v2, 0x10
if-ne v1, v2, :cond_7d
:cond_18
const/16 v1, 0x3f
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/16 v1, 0x80
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
const/16 v1, 0x85
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
:goto_28
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
sub-int/2addr v1, v3
sub-int v0, v1, v6
const-wide v1, 0x3fe55810624dd2f2L
int-to-double v3, v0
mul-double/2addr v1, v3
double-to-int v1, v1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sub-int v1, v0, v1
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
if-nez v1, :cond_9f
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v1
if-ne v1, v7, :cond_9f
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
if-nez v1, :cond_9f
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
if-nez v1, :cond_9f
iput-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
:goto_51
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
if-nez v1, :cond_aa
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v1
if-gt v1, v7, :cond_aa
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
if-nez v1, :cond_aa
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
if-nez v1, :cond_aa
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
if-nez v1, :cond_aa
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
if-eqz v1, :cond_6f
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
if-eqz v1, :cond_a7
:cond_6f
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->setUpLatinOne()Z
move-result v1
if-eqz v1, :cond_a2
iput-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
:goto_77
iput-boolean v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:goto_79
return-void
:cond_7a
iput v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
goto :goto_e
:cond_7d
const/16 v1, 0xff
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
const/16 v1, 0x40
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-ne v1, v4, :cond_96
const/16 v1, 0xc5
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/16 v1, 0xc5
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
const/16 v1, 0x86
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
goto :goto_28
:cond_96
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
const/16 v1, 0x45
iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
goto :goto_28
:cond_9f
iput-boolean v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
goto :goto_51
:cond_a2
iput-boolean v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
iput-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
goto :goto_77
:cond_a7
iput-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
goto :goto_79
:cond_aa
iput-boolean v5, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
goto :goto_79
.end method
.method public clone()Ljava/lang/Object;
.registers 4
invoke-super {p0}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneCEs_:[I
if-eqz v1, :cond_15
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_reallocLatinOneCEs_:Z
new-instance v1, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_ContInfo_:Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
:cond_15
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
return-object v0
.end method
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
.registers 6
const/16 v2, 0xff
if-ne p1, p2, :cond_6
const/4 v1, 0x0
:goto_5
return v1
:cond_6
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getFirstUnmatchedOffset(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneUse_:Z
if-eqz v1, :cond_30
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_1a
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-gt v1, v2, :cond_26
:cond_1a
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_2b
invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-le v1, v2, :cond_2b
:cond_26
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v1
goto :goto_5
:cond_2b
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->compareUseLatin1(Ljava/lang/String;Ljava/lang/String;I)I
move-result v1
goto :goto_5
:cond_30
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->compareRegular(Ljava/lang/String;Ljava/lang/String;I)I
move-result v1
goto :goto_5
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 15
const v12, 0xffffff
const/high16 v11, -0x100
const/4 v10, 0x1
const/4 v9, 0x0
if-nez p1, :cond_b
move v7, v9
:goto_a
return v7
:cond_b
if-ne p0, p1, :cond_f
move v7, v10
goto :goto_a
:cond_f
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v7
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v8
if-eq v7, v8, :cond_1b
move v7, v9
goto :goto_a
:cond_1b
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/RuleBasedCollator;
move-object v3, v0
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v7
invoke-virtual {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v8
if-ne v7, v8, :cond_57
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v7
invoke-virtual {v3}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v8
if-ne v7, v8, :cond_57
iget v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-ne v7, v8, :cond_57
iget v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
iget v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
if-ne v7, v8, :cond_57
iget-boolean v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
iget-boolean v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
if-ne v7, v8, :cond_57
iget-boolean v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
iget-boolean v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
if-ne v7, v8, :cond_57
iget-boolean v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
iget-boolean v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
if-ne v7, v8, :cond_57
iget-boolean v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
iget-boolean v8, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
if-eq v7, v8, :cond_59
:cond_57
move v7, v9
goto :goto_a
:cond_59
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
if-ne v7, v8, :cond_7e
move v5, v10
:goto_60
if-nez v5, :cond_72
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
if-eqz v7, :cond_72
iget-object v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
if-eqz v7, :cond_72
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
:cond_72
if-eqz v5, :cond_7c
const-string v7, "collation"
invoke-static {v7}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_80
:cond_7c
move v7, v5
goto :goto_a
:cond_7e
move v5, v9
goto :goto_60
:cond_80
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
if-ne v7, v8, :cond_c6
iget-boolean v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
iget-boolean v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
if-ne v7, v8, :cond_c6
iget-char v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
iget-char v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
if-ne v7, v8, :cond_c6
iget-char v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
iget-char v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
if-ne v7, v8, :cond_c6
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
iget v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
if-ne v7, v8, :cond_c6
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z
move-result v7
if-nez v7, :cond_c9
:cond_c6
move v7, v9
goto/16 :goto_a
:cond_c9
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/IntTrie;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_10f
const v1, 0x10ffff
:goto_d6
if-ltz v1, :cond_10f
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v7, v1}, Lcom/ibm/icu/impl/IntTrie;->getCodePointValue(I)I
move-result v6
iget-object v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
invoke-virtual {v7, v1}, Lcom/ibm/icu/impl/IntTrie;->getCodePointValue(I)I
move-result v4
if-eq v6, v4, :cond_fe
and-int v2, v6, v11
and-int v7, v4, v11
if-ne v2, v7, :cond_10c
and-int/2addr v6, v12
and-int/2addr v4, v12
const/high16 v7, -0xf00
if-ne v2, v7, :cond_101
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
shl-int/lit8 v7, v7, 0x4
sub-int/2addr v6, v7
iget v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
shl-int/lit8 v7, v7, 0x4
sub-int/2addr v4, v7
:goto_fc
:cond_fc
if-ne v6, v4, :cond_10c
:cond_fe
add-int/lit8 v1, v1, -0x1
goto :goto_d6
:cond_101
const/high16 v7, -0xe00
if-ne v2, v7, :cond_fc
iget v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sub-int/2addr v6, v7
iget v7, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sub-int/2addr v4, v7
goto :goto_fc
:cond_10c
move v7, v9
goto/16 :goto_a
:cond_10f
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([I[I)Z
move-result v7
if-eqz v7, :cond_157
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z
move-result v7
if-eqz v7, :cond_157
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([C[C)Z
move-result v7
if-eqz v7, :cond_157
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([I[I)Z
move-result v7
if-eqz v7, :cond_157
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
invoke-static {v7, v8}, Ljava/util/Arrays;->equals([I[I)Z
move-result v7
if-eqz v7, :cond_157
const/4 v1, 0x0
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
array-length v7, v7
if-ge v1, v7, :cond_157
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
aget-byte v7, v7, v1
iget-object v8, v3, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
aget-byte v8, v8, v1
if-eq v7, v8, :cond_154
move v7, v9
goto/16 :goto_a
:cond_154
move v7, v10
goto/16 :goto_a
:cond_157
move v7, v9
goto/16 :goto_a
.end method
.method public getCollationElementIterator(Lcom/ibm/icu/text/UCharacterIterator;)Lcom/ibm/icu/text/CollationElementIterator;
.registers 3
new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;
invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
return-object v0
.end method
.method public getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
.registers 3
new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;
invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V
return-object v0
.end method
.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/CollationElementIterator;
.registers 4
invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/CharacterIterator;
new-instance v1, Lcom/ibm/icu/text/CollationElementIterator;
invoke-direct {v1, v0, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
return-object v1
.end method
.method public getCollationKey(Ljava/lang/String;)Lcom/ibm/icu/text/CollationKey;
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
new-instance v0, Lcom/ibm/icu/text/CollationKey;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilRawCollationKey_:Lcom/ibm/icu/text/RawCollationKey;
invoke-direct {v0, p1, v1}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)V
goto :goto_3
.end method
.method public getContractionsAndExpansions(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Z)V
.registers 14
if-eqz p1, :cond_5
invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
:cond_5
if-eqz p2, :cond_a
invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
:cond_a
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;
move-result-object v8
:try_start_e
new-instance v9, Lcom/ibm/icu/text/CollationRuleParser;
invoke-direct {v9, v8}, Lcom/ibm/icu/text/CollationRuleParser;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;
sget-object v2, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v5, v9, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;
move-object v1, p0
move-object v3, p1
move-object v4, p2
move v6, p3
invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/RuleBasedCollator$contContext;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Z)V
invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->processSpecials(Lcom/ibm/icu/text/RuleBasedCollator$contContext;)V
iput-object p0, v0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;
const/4 v1, 0x0
iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->removedContractions:Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->processSpecials(Lcom/ibm/icu/text/RuleBasedCollator$contContext;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2c
return-void
:catch_2c
move-exception v1
move-object v7, v1
throw v7
.end method
.method public getNumericCollation()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
return v0
.end method
.method public getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
.registers 16
const/4 v1, 0x1
const/4 v6, 0x0
if-nez p1, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v12
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare0_:Z
if-lt v12, v1, :cond_80
move v0, v1
:goto_11
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
const/4 v0, 0x2
if-lt v12, v0, :cond_82
move v0, v1
:goto_17
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare3_:Z
const/4 v0, 0x3
if-lt v12, v0, :cond_84
move v0, v1
:goto_1d
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
const/16 v0, 0xf
if-ne v12, v0, :cond_86
move v0, v1
:goto_24
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare5_:Z
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount0_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount1_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount2_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount3_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilBytesCount4_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount2_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount3_:I
iput v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCount4_:I
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
if-eqz v0, :cond_88
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare2_:Z
if-eqz v0, :cond_88
move v2, v1
:goto_3f
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
ushr-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, 0x1
and-int/lit16 v4, v0, 0xff
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
if-eqz v0, :cond_53
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare4_:Z
if-eqz v0, :cond_53
int-to-byte v3, v4
add-int/lit8 v4, v4, 0x1
:cond_53
const/16 v0, 0xff
sub-int v5, v0, v4
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_utilCompare5_:Z
if-eqz v0, :cond_8a
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v0, v6}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-eq v0, v1, :cond_8a
invoke-static {p1, v6}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object p1
:cond_69
:goto_69
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/RuleBasedCollator;->getSortKeyBytes(Ljava/lang/String;ZBII)V
if-nez p2, :cond_75
new-instance p2, Lcom/ibm/icu/text/RawCollationKey;
invoke-direct {p2}, Lcom/ibm/icu/text/RawCollationKey;-><init>()V
:cond_75
move-object v6, p0
move-object v7, p1
move v8, v2
move v9, v4
move v10, v5
move-object v11, p2
invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/RuleBasedCollator;->getSortKey(Ljava/lang/String;ZIILcom/ibm/icu/text/RawCollationKey;)V
move-object v0, p2
goto :goto_5
:cond_80
move v0, v6
goto :goto_11
:cond_82
move v0, v6
goto :goto_17
:cond_84
move v0, v6
goto :goto_1d
:cond_86
move v0, v6
goto :goto_24
:cond_88
move v2, v6
goto :goto_3f
:cond_8a
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v0
const/16 v1, 0x10
if-eq v0, v1, :cond_69
sget-object v0, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v0, v6}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
move-result-object v0
sget-object v1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
if-eq v0, v1, :cond_69
sget-object v0, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v0}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
move-result-object p1
goto :goto_69
.end method
.method public getRules()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
return-object v0
.end method
.method public getRules(Z)Ljava/lang/String;
.registers 4
if-nez p1, :cond_5
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
:goto_4
return-object v0
:cond_5
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
.registers 5
:try_start_0
new-instance v1, Lcom/ibm/icu/text/CollationRuleParser;
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/ibm/icu/text/CollationRuleParser;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e
move-result-object v2
return-object v2
:catch_e
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "A tailoring rule should not have errors. Something is quite wrong!"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public getUCAVersion()Lcom/ibm/icu/util/VersionInfo;
.registers 2
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
return-object v0
.end method
.method public getVariableTop()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
shl-int/lit8 v0, v0, 0x10
return v0
.end method
.method public getVersion()Lcom/ibm/icu/util/VersionInfo;
.registers 9
sget-object v4, Lcom/ibm/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v4}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I
move-result v3
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v4}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I
move-result v0
const/4 v2, 0x0
shl-int/lit8 v4, v3, 0xb
shl-int/lit8 v5, v0, 0x6
or-int/2addr v4, v5
or-int/2addr v4, v2
const v5, 0xffff
and-int v1, v4, v5
shr-int/lit8 v4, v1, 0x8
and-int/lit16 v5, v1, 0xff
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v6}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I
move-result v6
sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v7, v7, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v7}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I
move-result v7
invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;
move-result-object v4
return-object v4
.end method
.method public hashCode()I
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const-string v0, ""
:cond_8
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v1
return v1
.end method
.method public isAlternateHandlingShifted()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
return v0
.end method
.method public isCaseLevel()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
return v0
.end method
.method final isContractionEnd(C)Z
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v1
if-eqz v1, :cond_a
move v1, v4
:goto_9
return v1
:cond_a
iget-char v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
if-ge p1, v1, :cond_10
move v1, v3
goto :goto_9
:cond_10
const/16 v1, 0x2100
if-lt p1, v1, :cond_1a
and-int/lit16 v1, p1, 0x1fff
int-to-char p1, v1
add-int/lit16 v1, p1, 0x100
int-to-char p1, v1
:cond_1a
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
shr-int/lit8 v2, p1, 0x3
aget-byte v0, v1, v2
and-int/lit8 v1, p1, 0x7
shr-int v1, v0, v1
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_2a
move v1, v4
goto :goto_9
:cond_2a
move v1, v3
goto :goto_9
.end method
.method public isFrenchCollation()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
return v0
.end method
.method public isHiraganaQuaternary()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
return v0
.end method
.method public isLowerCaseFirst()Z
.registers 3
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
const/16 v1, 0x18
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method final isUnsafe(C)Z
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget-char v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
if-ge p1, v1, :cond_8
move v1, v3
:goto_7
return v1
:cond_8
const/16 v1, 0x2100
if-lt p1, v1, :cond_20
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v1
if-nez v1, :cond_18
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v1
if-eqz v1, :cond_1a
:cond_18
move v1, v4
goto :goto_7
:cond_1a
and-int/lit16 v1, p1, 0x1fff
int-to-char p1, v1
add-int/lit16 v1, p1, 0x100
int-to-char p1, v1
:cond_20
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
shr-int/lit8 v2, p1, 0x3
aget-byte v0, v1, v2
and-int/lit8 v1, p1, 0x7
shr-int v1, v0, v1
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_30
move v1, v4
goto :goto_7
:cond_30
move v1, v3
goto :goto_7
.end method
.method public isUpperCaseFirst()Z
.registers 3
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
const/16 v1, 0x19
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public setAlternateHandlingDefault()V
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setAlternateHandlingShifted(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public final setCaseFirstDefault()V
.registers 3
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I
if-eq v0, v1, :cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_9
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setCaseLevel(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setCaseLevelDefault()V
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setDecompositionDefault()V
.registers 2
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setFrenchCollation(Z)V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
if-eq v0, p1, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_7
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setFrenchCollationDefault()V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z
if-eq v0, v1, :cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_9
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setHiraganaQuaternary(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setHiraganaQuaternaryDefault()V
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setLowerCaseFirst(Z)V
.registers 6
const/16 v3, 0x18
const/16 v2, 0x10
const/4 v1, 0x1
if-eqz p1, :cond_13
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-eq v0, v3, :cond_d
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_d
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
:goto_f
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
:cond_13
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-eq v0, v2, :cond_19
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_19
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
goto :goto_f
.end method
.method public setNumericCollation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setNumericCollationDefault()V
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsNumericCollation_:Z
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setNumericCollation(Z)V
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setStrength(I)V
.registers 2
invoke-super {p0, p1}, Lcom/ibm/icu/text/Collator;->setStrength(I)V
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setStrengthDefault()V
.registers 2
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setStrength(I)V
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
.end method
.method public setUpperCaseFirst(Z)V
.registers 6
const/16 v3, 0x19
const/16 v2, 0x10
const/4 v1, 0x1
if-eqz p1, :cond_13
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-eq v0, v3, :cond_d
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_d
iput v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
:goto_f
invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->updateInternalState()V
return-void
:cond_13
iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
if-eq v0, v2, :cond_19
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneRegenTable_:Z
:cond_19
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
goto :goto_f
.end method
.method public setVariableTop(Ljava/lang/String;)I
.registers 8
const/4 v5, -0x1
const/high16 v4, -0x1
if-eqz p1, :cond_b
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_13
:cond_b
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Variable top argument string can not be null or zero in length."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_13
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilIter_:Lcom/ibm/icu/impl/StringUCharacterIterator;
if-nez v2, :cond_1b
const/4 v2, 0x1
invoke-direct {p0, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->initUtility(Z)V
:cond_1b
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v2, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I
move-result v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ne v2, v3, :cond_34
if-ne v0, v5, :cond_3c
:cond_34
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Variable top argument string is a contraction that does not exist in the Collation order"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_3c
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_srcUtilColEIter_:Lcom/ibm/icu/text/CollationElementIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v1
if-eq v1, v5, :cond_56
invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z
move-result v2
if-eqz v2, :cond_4e
and-int v2, v1, v4
if-eqz v2, :cond_56
:cond_4e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Variable top argument string can only have a single collation element that has less than or equal to two PRIMARY strength bytes"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_56
and-int v2, v0, v4
shr-int/lit8 v2, v2, 0x10
iput v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
and-int v2, v0, v4
return v2
.end method
.method public setVariableTop(I)V
.registers 3
const/high16 v0, -0x1
and-int/2addr v0, p1
shr-int/lit8 v0, v0, 0x10
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
return-void
.end method
.method final setWithUCAData()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_addition3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottom3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_bottomCount3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseSwitch_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_common3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultVariableTopValue_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultVariableTopValue_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsNumericCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsNumericCollation_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isAlternateHandlingShifted_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isCaseLevel_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isFrenchCollation_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isSimple3_:Z
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_mask3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_rules_:Ljava/lang/String;
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setStrength(I)V
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_top3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_topCount3_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-boolean v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_isNumericCollation_:Z
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCATables()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->latinOneFailed_:Z
return-void
.end method
.method final setWithUCATables()V
.registers 2
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minUnsafe_:C
sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;
iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
iput-char v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->m_minContractionEnd_:C
return-void
.end method