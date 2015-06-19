.class public final Lcom/ibm/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"
.field private static final AGE_SHIFT_:I = 0x18
.field private static final ALPHABETIC_PROPERTY_:I = 0x8
.field private static final ASCII_HEX_DIGIT_PROPERTY_:I = 0x7
.field private static final CGJ:I = 0x34f
.field private static final CR:I = 0xd
.field private static final DASH_PROPERTY_:I = 0x1
.field private static final DATA_BUFFER_SIZE_:I = 0x61a8
.field private static final DATA_FILE_NAME_:Ljava/lang/String; = "data/icudt42b/uprops.icu"
.field private static final DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13
.field private static final DEL:I = 0x7f
.field private static final DEPRECATED_PROPERTY_:I = 0x14
.field private static final DIACRITIC_PROPERTY_:I = 0xa
.field private static final EXTENDER_PROPERTY_:I = 0xb
.field private static final FIGURESP:I = 0x2007
.field private static final FIRST_NIBBLE_SHIFT_:I = 0x4
.field private static final GC_CC_MASK:I = 0x0
.field private static final GC_CN_MASK:I = 0x0
.field private static final GC_CS_MASK:I = 0x0
.field private static final GC_ZL_MASK:I = 0x0
.field private static final GC_ZP_MASK:I = 0x0
.field private static final GC_ZS_MASK:I = 0x0
.field private static final GC_Z_MASK:I = 0x0
.field private static final GRAPHEME_BASE_PROPERTY_:I = 0x1a
.field private static final GRAPHEME_EXTEND_PROPERTY_:I = 0xd
.field private static final GRAPHEME_LINK_PROPERTY_:I = 0xe
.field private static final HAIRSP:I = 0x200a
.field private static final HEX_DIGIT_PROPERTY_:I = 0x6
.field private static final HYPHEN_PROPERTY_:I = 0x2
.field private static final IDEOGRAPHIC_PROPERTY_:I = 0x9
.field private static final IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf
.field private static final IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10
.field private static final ID_CONTINUE_PROPERTY_:I = 0x19
.field private static final ID_START_PROPERTY_:I = 0x18
.field private static final INHSWAP:I = 0x206a
.field private static INSTANCE_:Lcom/ibm/icu/impl/UCharacterProperty; = null
.field private static final LAST_NIBBLE_MASK_:I = 0xf
.field public static final LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'
.field public static final LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'
.field public static final LATIN_SMALL_LETTER_I_:C = 'i'
.field private static final LEAD_SURROGATE_SHIFT_:I = 0xa
.field private static final LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15
.field private static final MATH_PROPERTY_:I = 0x5
.field static final MY_MASK:I = 0x1e
.field private static final NBSP:I = 0xa0
.field private static final NL:I = 0x85
.field private static final NNBSP:I = 0x202f
.field private static final NOMDIG:I = 0x206f
.field private static final NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc
.field public static final NT_COUNT:I = 0x6
.field public static final NT_FRACTION:I = 0x4
.field public static final NT_LARGE:I = 0x5
.field private static final PATTERN_SYNTAX:I = 0x1d
.field private static final PATTERN_WHITE_SPACE:I = 0x1e
.field private static final QUOTATION_MARK_PROPERTY_:I = 0x3
.field private static final RADICAL_PROPERTY_:I = 0x11
.field private static final RLM:I = 0x200f
.field public static final SRC_BIDI:I = 0x7
.field public static final SRC_CASE:I = 0x6
.field public static final SRC_CHAR:I = 0x1
.field public static final SRC_CHAR_AND_PROPSVEC:I = 0x8
.field public static final SRC_COUNT:I = 0x9
.field public static final SRC_HST:I = 0x3
.field public static final SRC_NAMES:I = 0x4
.field public static final SRC_NONE:I = 0x0
.field public static final SRC_NORM:I = 0x5
.field public static final SRC_PROPSVEC:I = 0x2
.field private static final SURROGATE_OFFSET_:I = -0x35fdc00
.field private static final S_TERM_PROPERTY_:I = 0x1b
.field private static final TAB:I = 0x9
.field private static final TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4
.field public static final TYPE_MASK:I = 0x1f
.field private static final UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL
.field private static final UNSIGNED_VALUE_MASK_AFTER_SHIFT_:I = 0xff
.field private static final U_A:I = 0x41
.field private static final U_F:I = 0x46
.field private static final U_FW_A:I = 0xff21
.field private static final U_FW_F:I = 0xff26
.field private static final U_FW_Z:I = 0xff3a
.field private static final U_FW_a:I = 0xff41
.field private static final U_FW_f:I = 0xff46
.field private static final U_FW_z:I = 0xff5a
.field private static final U_Z:I = 0x5a
.field private static final U_a:I = 0x61
.field private static final U_f:I = 0x66
.field private static final U_z:I = 0x7a
.field private static final VALUE_SHIFT_:I = 0x8
.field private static final VARIATION_SELECTOR_PROPERTY_:I = 0x1c
.field private static final WHITE_SPACE_PROPERTY_:I = 0x0
.field private static final WJ:I = 0x2060
.field private static final XID_CONTINUE_PROPERTY_:I = 0x17
.field private static final XID_START_PROPERTY_:I = 0x16
.field private static final ZWNBSP:I = 0xfeff
.field  binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
.field  m_additionalColumnsCount_:I
.field  m_additionalTrie_:Lcom/ibm/icu/impl/CharTrie;
.field  m_additionalVectors_:[I
.field  m_maxBlockScriptValue_:I
.field  m_maxJTGValue_:I
.field public m_trieData_:[C
.field public m_trieIndex_:[C
.field public m_trieInitialValue_:I
.field public m_trie_:Lcom/ibm/icu/impl/CharTrie;
.field public m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I
const/16 v0, 0xf
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I
const/16 v0, 0x12
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I
const/16 v0, 0xc
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZS_MASK:I
const/16 v0, 0xd
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZL_MASK:I
const/16 v0, 0xe
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZP_MASK:I
sget v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZS_MASK:I
sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZL_MASK:I
or-int/2addr v0, v1
sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZP_MASK:I
or-int/2addr v0, v1
sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterProperty;
return-void
.end method
.method private constructor <init>()V
.registers 15
const/4 v13, 0x7
const/4 v12, 0x6
const/4 v11, 0x5
const-wide/16 v9, 0x0
const/4 v8, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v3, 0x31
new-array v3, v3, [Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const/4 v4, 0x0
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x100
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
new-instance v4, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v5, 0x80
invoke-direct {v4, v8, v5, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v4, v3, v8
const/4 v4, 0x2
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v13, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/4 v4, 0x3
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v13, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/4 v4, 0x4
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x2
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
new-instance v4, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v5, 0x80000
invoke-direct {v4, v8, v5, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v4, v3, v11
new-instance v4, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v5, 0x100000
invoke-direct {v4, v8, v5, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v4, v3, v12
new-instance v4, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v5, 0x400
invoke-direct {v4, v8, v5, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v4, v3, v13
const/16 v4, 0x8
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x800
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x9
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xa
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x4000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xb
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x2000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xc
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x4000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xd
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x40
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xe
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x4
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0xf
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x2000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x10
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x1000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x11
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x200
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x12
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x8000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x13
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x10000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x14
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v13, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x15
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x200000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x16
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v12, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x17
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x20
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x18
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x1000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x19
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x8
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1a
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x20000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1b
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v12, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1c
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x10
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1d
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x40000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1e
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v12, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x1f
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/16 v6, 0x1
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x20
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x800000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x21
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x400000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x22
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v12, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x23
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x8000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x24
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x10000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x25
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x26
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x27
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x28
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x29
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v11, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2a
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x20000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2b
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-wide/32 v6, 0x40000000
invoke-direct {v5, v8, v6, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2c
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const/16 v6, 0x8
invoke-direct {v5, v6, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2d
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v8, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2e
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v8, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x2f
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v8, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
const/16 v4, 0x30
new-instance v5, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
invoke-direct {v5, v8, v9, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;-><init>(IJ)V
aput-object v5, v3, v4
iput-object v3, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
const-string v3, "data/icudt42b/uprops.icu"
invoke-static {v3}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
new-instance v0, Ljava/io/BufferedInputStream;
const/16 v3, 0x61a8
invoke-direct {v0, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
new-instance v2, Lcom/ibm/icu/impl/UCharacterPropertyReader;
invoke-direct {v2, v0}, Lcom/ibm/icu/impl/UCharacterPropertyReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/UCharacterPropertyReader;->read(Lcom/ibm/icu/impl/UCharacterProperty;)V
invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v3, p0}, Lcom/ibm/icu/impl/CharTrie;->putIndexData(Lcom/ibm/icu/impl/UCharacterProperty;)V
return-void
.end method
.method public static getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
.registers 5
sget-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterProperty;
if-nez v1, :cond_b
:try_start_4
new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty;
invoke-direct {v1}, Lcom/ibm/icu/impl/UCharacterProperty;-><init>()V
sput-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterProperty;
:cond_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_e
sget-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE_:Lcom/ibm/icu/impl/UCharacterProperty;
return-object v1
:catch_e
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
.method public static final getMask(I)I
.registers 2
const/4 v0, 0x1
shl-int/2addr v0, p0
return v0
.end method
.method public static getRawSupplementary(CC)I
.registers 4
shl-int/lit8 v0, p0, 0xa
add-int/2addr v0, p1
const v1, -0x35fdc00
add-int/2addr v0, v1
return v0
.end method
.method public static getUnsignedValue(I)I
.registers 2
shr-int/lit8 v0, p0, 0x8
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method public static isRuleWhiteSpace(I)Z
.registers 2
const/16 v0, 0x9
if-lt p0, v0, :cond_22
const/16 v0, 0x2029
if-gt p0, v0, :cond_22
const/16 v0, 0xd
if-le p0, v0, :cond_20
const/16 v0, 0x20
if-eq p0, v0, :cond_20
const/16 v0, 0x85
if-eq p0, v0, :cond_20
const/16 v0, 0x200e
if-eq p0, v0, :cond_20
const/16 v0, 0x200f
if-eq p0, v0, :cond_20
const/16 v0, 0x2028
if-lt p0, v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method private static final isgraphPOSIX(I)Z
.registers 4
invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I
move-result v0
sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I
sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I
or-int/2addr v1, v2
sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I
or-int/2addr v1, v2
sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I
or-int/2addr v1, v2
and-int/2addr v0, v1
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
new-instance v0, Lcom/ibm/icu/impl/TrieIterator;
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;
invoke-direct {v0, v2}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
new-instance v1, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v1}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:goto_c
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v2
if-eqz v2, :cond_18
iget v2, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_c
:cond_18
const/16 v2, 0x9
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0xa
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0xe
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x1c
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x20
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x85
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x86
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x7f
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x200a
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2010
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x206a
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2070
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xfeff
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff00
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0xa0
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0xa1
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2007
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2008
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x202f
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2030
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x3007
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x3008
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e00
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e01
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e8c
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e8d
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e09
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e0a
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x56db
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x56dc
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e94
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e95
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x516d
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x516e
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e03
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e04
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x516b
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x516c
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e5d
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x4e5e
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x61
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x7b
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x41
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x5b
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff41
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff5b
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff21
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff3b
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x67
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x47
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff47
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xff27
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x2060
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xfff0
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xfffc
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/high16 v2, 0xe
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const v2, 0xe1000
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x34f
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v2, 0x350
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
return-object p1
.end method
.method public getAdditional(II)I
.registers 5
const/4 v0, -0x1
if-ne p2, v0, :cond_8
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I
move-result v0
:goto_7
return v0
:cond_8
if-ltz p2, :cond_e
iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I
if-lt p2, v0, :cond_10
:cond_e
const/4 v0, 0x0
goto :goto_7
:cond_10
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/CharTrie;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C
move-result v1
add-int/2addr v1, p2
aget v0, v0, v1
goto :goto_7
.end method
.method public getAge(I)Lcom/ibm/icu/util/VersionInfo;
.registers 6
const/4 v3, 0x0
invoke-virtual {p0, p1, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I
move-result v1
shr-int/lit8 v0, v1, 0x18
shr-int/lit8 v1, v0, 0x4
and-int/lit8 v1, v1, 0xf
and-int/lit8 v2, v0, 0xf
invoke-static {v1, v2, v3, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;
move-result-object v1
return-object v1
.end method
.method public getMaxValues(I)I
.registers 3
packed-switch p1, :pswitch_data_c
:pswitch_3
const/4 v0, 0x0
:goto_4
return v0
:pswitch_5
iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I
goto :goto_4
:pswitch_8
iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxJTGValue_:I
goto :goto_4
nop
:pswitch_data_c
.packed-switch 0x0
:pswitch_5
:pswitch_3
:pswitch_8
.end packed-switch
.end method
.method public final getProperty(I)I
.registers 6
const v2, 0xdbff
const v1, 0xd800
if-lt p1, v1, :cond_e
if-le p1, v2, :cond_23
const/high16 v1, 0x1
if-ge p1, v1, :cond_23
:cond_e
:try_start_e
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieData_:[C
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieIndex_:[C
shr-int/lit8 v3, p1, 0x5
aget-char v2, v2, v3
shl-int/lit8 v2, v2, 0x2
and-int/lit8 v3, p1, 0x1f
add-int/2addr v2, v3
aget-char v1, v1, v2
:goto_1d
:try_end_1d
.catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_1d} :catch_1e
return v1
:catch_1e
move-exception v1
move-object v0, v1
iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieInitialValue_:I
goto :goto_1d
:cond_23
if-gt p1, v2, :cond_37
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieData_:[C
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieIndex_:[C
shr-int/lit8 v3, p1, 0x5
add-int/lit16 v3, v3, 0x140
aget-char v2, v2, v3
shl-int/lit8 v2, v2, 0x2
and-int/lit8 v3, p1, 0x1f
add-int/2addr v2, v3
aget-char v1, v1, v2
goto :goto_1d
:cond_37
const v1, 0x10ffff
if-gt p1, v1, :cond_4a
iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C
move-result v2
and-int/lit16 v3, p1, 0x3ff
int-to-char v3, v3
invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/CharTrie;->getSurrogateValue(CC)C
move-result v1
goto :goto_1d
:cond_4a
iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieInitialValue_:I
goto :goto_1d
.end method
.method public final getSource(I)I
.registers 7
const/4 v3, 0x7
const/4 v2, 0x1
const/4 v4, 0x2
const/4 v1, 0x0
if-gez p1, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
const/16 v0, 0x31
if-ge p1, v0, :cond_21
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
aget-object v0, v0, p1
iget-wide v0, v0, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->mask:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_1a
move v0, v4
goto :goto_7
:cond_1a
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
aget-object v0, v0, p1
iget v0, v0, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->column:I
goto :goto_7
:cond_21
const/16 v0, 0x1000
if-ge p1, v0, :cond_27
move v0, v1
goto :goto_7
:cond_27
const/16 v0, 0x1015
if-ge p1, v0, :cond_38
packed-switch p1, :pswitch_data_56
:pswitch_2e
move v0, v4
goto :goto_7
:pswitch_30
move v0, v2
goto :goto_7
:pswitch_32
const/4 v0, 0x3
goto :goto_7
:pswitch_34
const/4 v0, 0x5
goto :goto_7
:pswitch_36
move v0, v3
goto :goto_7
:cond_38
const/16 v0, 0x4000
if-ge p1, v0, :cond_43
sparse-switch p1, :sswitch_data_7e
move v0, v1
goto :goto_7
:sswitch_41
move v0, v2
goto :goto_7
:cond_43
const/16 v0, 0x400d
if-ge p1, v0, :cond_54
packed-switch p1, :pswitch_data_88
move v0, v1
goto :goto_7
:pswitch_4c
move v0, v4
goto :goto_7
:pswitch_4e
move v0, v3
goto :goto_7
:pswitch_50
const/4 v0, 0x6
goto :goto_7
:pswitch_52
const/4 v0, 0x4
goto :goto_7
:cond_54
move v0, v1
goto :goto_7
:sswitch_data_7e
.sparse-switch
0x2000 -> :sswitch_41
0x3000 -> :sswitch_41
.end sparse-switch
:pswitch_data_88
.packed-switch 0x4000
:pswitch_4c
:pswitch_4e
:pswitch_50
:pswitch_52
:pswitch_50
:pswitch_52
:pswitch_50
:pswitch_50
:pswitch_50
:pswitch_50
:pswitch_50
:pswitch_52
:pswitch_50
.end packed-switch
:pswitch_data_56
.packed-switch 0x1000
:pswitch_36
:pswitch_2e
:pswitch_34
:pswitch_2e
:pswitch_2e
:pswitch_30
:pswitch_36
:pswitch_36
:pswitch_2e
:pswitch_30
:pswitch_2e
:pswitch_32
:pswitch_34
:pswitch_34
:pswitch_34
:pswitch_34
:pswitch_34
:pswitch_34
.end packed-switch
.end method
.method public hasBinaryProperty(II)Z
.registers 13
if-ltz p2, :cond_6
const/16 v6, 0x31
if-gt v6, p2, :cond_8
:cond_6
const/4 v6, 0x0
:goto_7
return v6
:cond_8
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
aget-object v6, v6, p2
iget-wide v4, v6, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->mask:J
iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;
aget-object v6, v6, p2
iget v1, v6, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperties;->column:I
const-wide/16 v6, 0x0
cmp-long v6, v4, v6
if-eqz v6, :cond_30
const-wide v6, 0xffffffffL
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I
move-result v8
int-to-long v8, v8
and-long/2addr v6, v8
and-long/2addr v6, v4
const-wide/16 v8, 0x0
cmp-long v6, v6, v8
if-eqz v6, :cond_2e
const/4 v6, 0x1
goto :goto_7
:cond_2e
const/4 v6, 0x0
goto :goto_7
:cond_30
const/4 v6, 0x6
if-ne v1, v6, :cond_5f
:try_start_33
invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getSingleton()Lcom/ibm/icu/impl/UCaseProps;
:try_end_36
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3c
move-result-object v2
sparse-switch p2, :sswitch_data_140
:cond_3a
:goto_3a
const/4 v6, 0x0
goto :goto_7
:catch_3c
move-exception v3
const/4 v6, 0x0
goto :goto_7
:sswitch_3f
const/4 v6, 0x1
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I
move-result v7
if-ne v6, v7, :cond_48
const/4 v6, 0x1
goto :goto_7
:cond_48
const/4 v6, 0x0
goto :goto_7
:sswitch_4a
const/4 v6, 0x2
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I
move-result v7
if-ne v6, v7, :cond_53
const/4 v6, 0x1
goto :goto_7
:cond_53
const/4 v6, 0x0
goto :goto_7
:sswitch_55
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCaseProps;->isSoftDotted(I)Z
move-result v6
goto :goto_7
:sswitch_5a
invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCaseProps;->isCaseSensitive(I)Z
move-result v6
goto :goto_7
:cond_5f
const/4 v6, 0x5
if-ne v1, v6, :cond_8d
sparse-switch p2, :sswitch_data_152
goto :goto_3a
:sswitch_66
invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->isFullCompositionExclusion(I)Z
move-result v6
goto :goto_7
:sswitch_6b
sget-object v6, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v6}, Lcom/ibm/icu/text/Normalizer;->isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;)Z
move-result v6
goto :goto_7
:sswitch_72
sget-object v6, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v6}, Lcom/ibm/icu/text/Normalizer;->isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;)Z
move-result v6
goto :goto_7
:sswitch_79
sget-object v6, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v6}, Lcom/ibm/icu/text/Normalizer;->isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;)Z
move-result v6
goto :goto_7
:sswitch_80
sget-object v6, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v6}, Lcom/ibm/icu/text/Normalizer;->isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;)Z
move-result v6
goto :goto_7
:sswitch_87
invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->isCanonSafeStart(I)Z
move-result v6
goto/16 :goto_7
:cond_8d
const/4 v6, 0x7
if-ne v1, v6, :cond_ae
:try_start_90
invoke-static {}, Lcom/ibm/icu/impl/UBiDiProps;->getSingleton()Lcom/ibm/icu/impl/UBiDiProps;
:try_end_93
.catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_9e
move-result-object v0
sparse-switch p2, :sswitch_data_16c
goto :goto_3a
:sswitch_98
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->isBidiControl(I)Z
move-result v6
goto/16 :goto_7
:catch_9e
move-exception v3
const/4 v6, 0x0
goto/16 :goto_7
:sswitch_a2
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->isMirrored(I)Z
move-result v6
goto/16 :goto_7
:sswitch_a8
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->isJoinControl(I)Z
move-result v6
goto/16 :goto_7
:cond_ae
const/4 v6, 0x1
if-ne v1, v6, :cond_124
packed-switch p2, :pswitch_data_17a
goto :goto_3a
:pswitch_b5
const/16 v6, 0x9f
if-gt p1, v6, :cond_c7
const/16 v6, 0x9
if-eq p1, v6, :cond_c1
const/16 v6, 0x20
if-ne p1, v6, :cond_c4
:cond_c1
const/4 v6, 0x1
goto/16 :goto_7
:cond_c4
const/4 v6, 0x0
goto/16 :goto_7
:cond_c7
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v6
const/16 v7, 0xc
if-ne v6, v7, :cond_d2
const/4 v6, 0x1
goto/16 :goto_7
:cond_d2
const/4 v6, 0x0
goto/16 :goto_7
:pswitch_d5
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z
move-result v6
goto/16 :goto_7
:pswitch_db
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v6
const/16 v7, 0xc
if-eq v6, v7, :cond_e9
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z
move-result v6
if-eqz v6, :cond_ec
:cond_e9
const/4 v6, 0x1
goto/16 :goto_7
:cond_ec
const/4 v6, 0x0
goto/16 :goto_7
:pswitch_ef
const/16 v6, 0x66
if-gt p1, v6, :cond_ff
const/16 v6, 0x41
if-lt p1, v6, :cond_ff
const/16 v6, 0x46
if-le p1, v6, :cond_113
const/16 v6, 0x61
if-ge p1, v6, :cond_113
:cond_ff
const v6, 0xff21
if-lt p1, v6, :cond_116
const v6, 0xff46
if-gt p1, v6, :cond_116
const v6, 0xff26
if-le p1, v6, :cond_113
const v6, 0xff41
if-lt p1, v6, :cond_116
:cond_113
const/4 v6, 0x1
goto/16 :goto_7
:cond_116
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v6
const/16 v7, 0x9
if-ne v6, v7, :cond_121
const/4 v6, 0x1
goto/16 :goto_7
:cond_121
const/4 v6, 0x0
goto/16 :goto_7
:cond_124
const/16 v6, 0x8
if-ne v1, v6, :cond_3a
packed-switch p2, :pswitch_data_186
goto/16 :goto_3a
:pswitch_12d
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isUAlphabetic(I)Z
move-result v6
if-nez v6, :cond_139
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v6
if-eqz v6, :cond_13c
:cond_139
const/4 v6, 0x1
goto/16 :goto_7
:cond_13c
const/4 v6, 0x0
goto/16 :goto_7
nop
:sswitch_data_140
.sparse-switch
0x16 -> :sswitch_3f
0x1b -> :sswitch_55
0x1e -> :sswitch_4a
0x22 -> :sswitch_5a
.end sparse-switch
:sswitch_data_152
.sparse-switch
0x9 -> :sswitch_66
0x25 -> :sswitch_6b
0x26 -> :sswitch_72
0x27 -> :sswitch_79
0x28 -> :sswitch_80
0x29 -> :sswitch_87
.end sparse-switch
:pswitch_data_17a
.packed-switch 0x2d
:pswitch_b5
:pswitch_d5
:pswitch_db
:pswitch_ef
.end packed-switch
:pswitch_data_186
.packed-switch 0x2c
:pswitch_12d
.end packed-switch
:sswitch_data_16c
.sparse-switch
0x2 -> :sswitch_98
0x3 -> :sswitch_a2
0x14 -> :sswitch_a8
.end sparse-switch
.end method
.method public setIndexData(Lcom/ibm/icu/impl/CharTrie$FriendAgent;)V
.registers 3
invoke-virtual {p1}, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->getPrivateIndex()[C
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieIndex_:[C
invoke-virtual {p1}, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->getPrivateData()[C
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieData_:[C
invoke-virtual {p1}, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->getPrivateInitialValue()I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieInitialValue_:I
return-void
.end method
.method public uhst_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 7
const/16 v4, 0x100b
const/16 v3, 0x1100
invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/4 v1, 0x1
const/16 v0, 0x115a
:goto_a
const/16 v3, 0x115f
if-gt v0, v3, :cond_1b
invoke-static {v0, v4}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I
move-result v2
if-eq v1, v2, :cond_18
move v1, v2
invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1b
const/16 v3, 0x1160
invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/4 v1, 0x2
const/16 v0, 0x11a3
:goto_23
const/16 v3, 0x11a7
if-gt v0, v3, :cond_34
invoke-static {v0, v4}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I
move-result v2
if-eq v1, v2, :cond_31
move v1, v2
invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_31
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_34
const/16 v3, 0x11a8
invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
const/4 v1, 0x3
const/16 v0, 0x11fa
:goto_3c
const/16 v3, 0x11ff
if-gt v0, v3, :cond_4d
invoke-static {v0, v4}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I
move-result v2
if-eq v1, v2, :cond_4a
move v1, v2
invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_4a
add-int/lit8 v0, v0, 0x1
goto :goto_3c
:cond_4d
const v0, 0xac00
:goto_50
const v3, 0xd7a4
if-ge v0, v3, :cond_60
invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
add-int/lit8 v3, v0, 0x1
invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
add-int/lit8 v0, v0, 0x1c
goto :goto_50
:cond_60
invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 5
iget v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I
if-lez v2, :cond_1c
new-instance v0, Lcom/ibm/icu/impl/TrieIterator;
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/CharTrie;
invoke-direct {v0, v2}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
new-instance v1, Lcom/ibm/icu/util/RangeValueIterator$Element;
invoke-direct {v1}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V
:goto_10
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v2
if-eqz v2, :cond_1c
iget v2, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_10
:cond_1c
return-void
.end method