.class final Lcom/ibm/icu/text/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationRuleParser$TokenOption;,
        Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;,
        Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;,
        Lcom/ibm/icu/text/CollationRuleParser$Token;,
        Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;,
        Lcom/ibm/icu/text/CollationRuleParser$OptionSet;
    }
.end annotation


# static fields
.field private static final INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries; = null

.field private static final RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption; = null

.field private static final TOKEN_BEFORE_:I = 0x3

.field private static final TOKEN_POLARITY_POSITIVE_:I = 0x1

.field static final TOKEN_RESET_:I = -0x21524111

.field private static final TOKEN_SUCCESS_MASK_:I = 0x10

.field private static final TOKEN_TOP_MASK_:I = 0x4

.field private static final TOKEN_UNSET_:I = -0x1

.field private static final TOKEN_VARIABLE_TOP_MASK_:I = 0x8


# instance fields
.field private m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

.field m_copySet_:Lcom/ibm/icu/text/UnicodeSet;

.field private m_current_:I

.field private m_extraCurrent_:I

.field m_hashTable_:Ljava/util/Hashtable;

.field m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

.field private m_optionEnd_:I

.field private m_optionarg_:I

.field m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

.field private m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

.field m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;

.field m_resultLength_:I

.field private m_rules_:Ljava/lang/String;

.field m_source_:Ljava/lang/StringBuffer;

.field private m_utilCEBuffer_:[I

.field private m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

.field m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/4 v15, 0x7

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v6, 0xf

    new-array v6, v6, [Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sput-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_NON_VARIABLE_:[I

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_IMPLICIT_:[I

    invoke-direct {v7, v8, v9}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v7, v6, v12

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_PRIMARY_IGNORABLE_:[I

    invoke-direct {v7, v8, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v7, v6, v13

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_PRIMARY_IGNORABLE_:[I

    invoke-direct {v7, v8, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v7, v6, v14

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/4 v7, 0x3

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_SECONDARY_IGNORABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/4 v7, 0x4

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_SECONDARY_IGNORABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/4 v7, 0x5

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TERTIARY_IGNORABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/4 v7, 0x6

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TERTIARY_IGNORABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_VARIABLE_:[I

    invoke-direct {v7, v8, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v7, v6, v15

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0x8

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_VARIABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0x9

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_NON_VARIABLE_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xa

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_NON_VARIABLE_:[I

    sget-object v10, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v10, v10, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_IMPLICIT_:[I

    invoke-direct {v8, v9, v10}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xb

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_IMPLICIT_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xc

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_IMPLICIT_:[I

    sget-object v10, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v10, v10, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TRAILING_:[I

    invoke-direct {v8, v9, v10}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xd

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TRAILING_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xe

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget-object v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TRAILING_:[I

    invoke-direct {v8, v9, v11}, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;-><init>([I[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget v7, v7, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_SPECIAL_MIN_:I

    shl-int/lit8 v7, v7, 0x18

    iput v7, v6, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitCE_:I

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    sput-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    new-array v4, v14, [Ljava/lang/String;

    const-string v6, "non-ignorable"

    aput-object v6, v4, v12

    const-string v6, "shifted"

    aput-object v6, v4, v13

    new-array v5, v14, [I

    fill-array-data v5, :array_2a8

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v8, "alternate"

    invoke-direct {v7, v8, v13, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v7, v6, v12

    new-array v4, v13, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v4, v12

    new-array v5, v13, [I

    const/16 v6, 0x11

    aput v6, v5, v12

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v8, "backwards"

    invoke-direct {v7, v8, v12, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v7, v6, v13

    new-array v2, v14, [Ljava/lang/String;

    const-string v6, "off"

    aput-object v6, v2, v12

    const-string v6, "on"

    aput-object v6, v2, v13

    new-array v3, v14, [I

    const/16 v6, 0x10

    aput v6, v3, v12

    const/16 v6, 0x11

    aput v6, v3, v13

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v8, "caseLevel"

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9, v2, v3}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v7, v6, v14

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "lower"

    aput-object v6, v4, v12

    const-string v6, "upper"

    aput-object v6, v4, v13

    const-string v6, "off"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    new-array v5, v6, [I

    const/16 v6, 0x18

    aput v6, v5, v12

    const/16 v6, 0x19

    aput v6, v5, v13

    const/16 v6, 0x10

    aput v6, v5, v14

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/4 v7, 0x3

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "caseFirst"

    invoke-direct {v8, v9, v14, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/4 v7, 0x4

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "normalization"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v2, v3}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/4 v7, 0x5

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "hiraganaQ"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v2, v3}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v12

    const-string v6, "2"

    aput-object v6, v4, v13

    const-string v6, "3"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    const-string v7, "4"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "I"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    new-array v5, v6, [I

    aput v12, v5, v12

    aput v13, v5, v13

    aput v14, v5, v14

    const/4 v6, 0x3

    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xf

    aput v7, v5, v6

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/4 v7, 0x6

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "strength"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    new-instance v7, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v8, "variable top"

    invoke-direct {v7, v8, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v7, v6, v15

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0x8

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "rearrange"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v12

    const-string v6, "2"

    aput-object v6, v4, v13

    const-string v6, "3"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    new-array v5, v6, [I

    aput v12, v5, v12

    aput v13, v5, v13

    aput v14, v5, v14

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0x9

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "before"

    invoke-direct {v8, v9, v15, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xa

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "top"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    new-array v0, v15, [Ljava/lang/String;

    const-string v6, "primary"

    aput-object v6, v0, v12

    const-string v6, "secondary"

    aput-object v6, v0, v13

    const-string v6, "tertiary"

    aput-object v6, v0, v14

    const/4 v6, 0x3

    const-string v7, "variable"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "regular"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "implicit"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "trailing"

    aput-object v7, v0, v6

    new-array v1, v15, [I

    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([II)V

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xb

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "first"

    invoke-direct {v8, v9, v15, v0, v1}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xc

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "last"

    invoke-direct {v8, v9, v15, v0, v1}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xd

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "optimize"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xe

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "suppressContractions"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0xf

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "undefined"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0x10

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "scriptOrder"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0x11

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "charsetname"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    sget-object v6, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const/16 v7, 0x12

    new-instance v8, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    const-string v9, "charset"

    invoke-direct {v8, v9, v15, v11, v11}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;-><init>(Ljava/lang/String;I[Ljava/lang/String;[I)V

    aput-object v8, v6, v7

    return-void

    nop

    :array_2a8
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    iput v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CollationRuleParser;->extractSetsFromRules(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1, v2}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    iput v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    new-instance v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    new-instance v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    sget-object v1, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    const/16 v0, 0x200

    new-array v0, v0, [Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iput v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    return-void
.end method

.method private doEndParseNextToken(IZIIZI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-nez v0, :cond_14

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_14
    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iput p1, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iput p3, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionOffset_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iput p4, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    if-eqz p5, :cond_31

    const/16 v1, 0x8

    :goto_26
    if-eqz p2, :cond_29

    const/4 v2, 0x4

    :cond_29
    or-int/2addr v1, v2

    or-int/2addr v1, p6

    int-to-char v1, v1

    iput-char v1, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_flags_:C

    iget v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    goto :goto_4

    :cond_31
    move v1, v2

    goto :goto_26
.end method

.method private final doSetTop()Z
    .registers 6

    const v4, 0xffff

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    iput v2, v1, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    const v2, 0xfffe

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget-char v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget v2, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startCE_:I

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget v2, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startCE_:I

    and-int/2addr v2, v4

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    sget-object v1, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget-char v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    aget-object v1, v1, v2

    iget v1, v1, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    const/4 v2, 0x3

    iput v2, v1, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    :goto_43
    const/4 v1, 0x1

    return v1

    :cond_45
    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget-char v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    aget-object v2, v2, v3

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget-char v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    aget-object v2, v2, v3

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I

    and-int/2addr v2, v4

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    iget-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    const/4 v2, 0x5

    iput v2, v1, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    goto :goto_43
.end method

.method private final extractSetsFromRules(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_49

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2b

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/ibm/icu/text/CollationRuleParser;->readOption(Ljava/lang/String;II)I

    move-result v2

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    const/16 v4, 0xd

    if-ne v2, v4, :cond_34

    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/text/CollationRuleParser;->readAndSetUnicodeSet(Ljava/lang/String;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    iget-object v4, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v4, :cond_2e

    iput-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2e
    iget-object v4, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_copySet_:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_2b

    :cond_34
    const/16 v4, 0xe

    if-ne v2, v4, :cond_2b

    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/text/CollationRuleParser;->readAndSetUnicodeSet(Ljava/lang/String;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    iget-object v4, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v4, :cond_43

    iput-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_2b

    :cond_43
    iget-object v4, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_removeSet_:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_2b

    :cond_49
    return-void
.end method

.method private getVirginBefore(Lcom/ibm/icu/text/CollationRuleParser$Token;I)Lcom/ibm/icu/text/CollationRuleParser$Token;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_11d

    iget v7, p1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    const v8, 0xffffff

    and-int v3, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v3, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    :goto_16
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v7

    and-int/lit16 v0, v7, -0xc1

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_28

    const/4 v1, 0x0

    :cond_28
    const/4 v2, 0x0

    ushr-int/lit8 v7, v0, 0x18

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MIN_:I

    if-lt v7, v8, :cond_13e

    ushr-int/lit8 v7, v0, 0x18

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget v8, v8, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MAX_:I

    if-gt v7, v8, :cond_13e

    const/high16 v7, -0x1

    and-int/2addr v7, v0

    const/high16 v8, -0x1

    and-int/2addr v8, v1

    shr-int/lit8 v8, v8, 0x10

    or-int v4, v7, v8

    sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    invoke-virtual {v7, v4}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getRawFromImplicit(I)I

    move-result v6

    sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getCodePointFromRaw(I)I

    move-result v2

    sget-object v7, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromRaw(I)I

    move-result v5

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x0

    const/high16 v9, -0x1

    and-int/2addr v9, v5

    or-int/lit16 v9, v9, 0x505

    aput v9, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x1

    shl-int/lit8 v9, v5, 0x10

    const/high16 v10, -0x1

    and-int/2addr v9, v10

    or-int/lit16 v9, v9, 0xc0

    aput v9, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    const v8, 0xfffe

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    int-to-char v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, v8, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    shl-int/lit8 v8, v8, 0x18

    iget-object v9, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    or-int/2addr v8, v9

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iput-object v8, v7, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/CollationRuleParser$Token;

    if-nez p1, :cond_11c

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    new-instance v9, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    invoke-direct {v9}, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;-><init>()V

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit16 v8, v8, -0xc1

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v7

    if-eqz v7, :cond_134

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    :goto_e6
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousContCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    new-instance p1, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    const/4 v7, -0x1

    invoke-direct {p0, v7, p1}, Lcom/ibm/icu/text/CollationRuleParser;->initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I

    :cond_11c
    :goto_11c
    return-object p1

    :cond_11d
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_UCAColEIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v10, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v10, v10, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_134
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    goto :goto_e6

    :cond_13e
    sget-object v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    invoke-virtual {v7, v0, v1, p2, v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->getInversePrevCE(III[I)I

    sget-object v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->getCEStrengthDifference(IIII)I

    move-result v7

    if-ge v7, p2, :cond_175

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1f0

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x0

    const/16 v9, 0x200

    sub-int v9, v0, v9

    aput v9, v7, v8

    :goto_163
    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v7

    if-eqz v7, :cond_175

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1fa

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x1

    const/16 v9, 0x200

    sub-int v9, v1, v9

    aput v9, v7, v8

    :cond_175
    :goto_175
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    const/16 v9, 0xa

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v8, v8, 0xa

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    new-instance v9, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    invoke-direct {v9}, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;-><init>()V

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit16 v8, v8, -0xc1

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v7

    if-eqz v7, :cond_204

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    :goto_1b8
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousContCE_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    new-instance p1, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    const/4 v7, -0x1

    invoke-direct {p0, v7, p1}, Lcom/ibm/icu/text/CollationRuleParser;->initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I

    goto/16 :goto_11c

    :cond_1f0
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x0

    const/4 v9, 0x2

    sub-int v9, v0, v9

    aput v9, v7, v8

    goto/16 :goto_163

    :cond_1fa
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilCEBuffer_:[I

    const/4 v8, 0x1

    const/4 v9, 0x2

    sub-int v9, v1, v9

    aput v9, v7, v8

    goto/16 :goto_175

    :cond_204
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    goto :goto_1b8
.end method

.method private initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    shl-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    :cond_1c
    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iput-object v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    or-int/2addr v2, v3

    iput v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionOffset_:I

    or-int/2addr v2, v3

    iput v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget-char v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_flags_:C

    iput-char v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_flags_:C

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_50
    iput v5, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I

    iput v6, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_polarity_:I

    const v2, -0x21524111

    iput v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    iput-object v4, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iput-object v4, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iput v5, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I

    iput v5, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object v4, v2, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object v4, v2, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object v4, v2, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object v4, v2, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    aget-object v2, v2, v3

    iput-object p2, v2, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_reset_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/4 v0, 0x0

    if-lez p1, :cond_b7

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-le v2, v6, :cond_b7

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    sub-int v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    or-int/2addr v2, v3

    iput v2, p2, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    iget-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v3, v3, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v2, p1

    :cond_b7
    iget v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    invoke-virtual {v2, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private static isCharNewLine(C)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0xa -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x85 -> :sswitch_5
        0x2028 -> :sswitch_5
        0x2029 -> :sswitch_5
    .end sparse-switch
.end method

.method private static final isSpecialChar(C)Z
    .registers 2

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_8

    const/16 v0, 0x20

    if-ge p0, v0, :cond_24

    :cond_8
    const/16 v0, 0x3f

    if-gt p0, v0, :cond_10

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_24

    :cond_10
    const/16 v0, 0x60

    if-gt p0, v0, :cond_18

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_24

    :cond_18
    const/16 v0, 0x7e

    if-gt p0, v0, :cond_20

    const/16 v0, 0x7d

    if-ge p0, v0, :cond_24

    :cond_20
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private parseNextToken(Z)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixLen_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x0

    iput-char v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    :goto_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    move v0, v2

    move/from16 v1, v20

    if-ge v0, v1, :cond_546

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    if-eqz v18, :cond_c5

    const/16 v2, 0x27

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_8f

    const/16 v18, 0x0

    :cond_62
    :goto_62
    :sswitch_62
    if-eqz v23, :cond_82

    const/16 v2, 0x27

    move/from16 v0, v16

    move v1, v2

    if-eq v0, v1, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    :cond_82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    goto :goto_3f

    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-eqz v2, :cond_9a

    if-eqz v17, :cond_bb

    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-nez v2, :cond_af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    goto :goto_62

    :cond_bb
    if-nez v6, :cond_c2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v5, v0

    :cond_c2
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_c5
    if-eqz v19, :cond_114

    const/16 v19, 0x0

    const/4 v2, -0x1

    if-ne v3, v2, :cond_d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_d9
    if-eqz v16, :cond_62

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    move v0, v2

    move/from16 v1, v20

    if-eq v0, v1, :cond_62

    if-eqz v17, :cond_109

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-nez v2, :cond_fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    goto/16 :goto_62

    :cond_109
    if-nez v6, :cond_110

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v5, v0

    :cond_110
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_62

    :cond_114
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_62

    sparse-switch v16, :sswitch_data_54e

    const/4 v2, -0x1

    if-ne v3, v2, :cond_12d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_12d
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/CollationRuleParser;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_142

    if-nez v18, :cond_142

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_142
    if-nez v16, :cond_150

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move/from16 v1, v20

    if-eq v0, v1, :cond_62

    :cond_150
    if-eqz v17, :cond_53b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-nez v2, :cond_167

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    goto/16 :goto_62

    :sswitch_174
    const/4 v2, -0x1

    if-eq v3, v2, :cond_17e

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    :goto_17d
    return v2

    :cond_17e
    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_19f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v3, 0x5

    iput-char v3, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->doSetTop()Z

    move-result v4

    const v10, -0x21524111

    move-object/from16 v9, p0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto :goto_17d

    :cond_19f
    const/16 v3, 0xf

    goto/16 :goto_62

    :sswitch_1a3
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1ad

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto :goto_17d

    :cond_1ad
    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v3, 0x5

    iput-char v3, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->doSetTop()Z

    move-result v4

    const v10, -0x21524111

    move-object/from16 v9, p0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto :goto_17d

    :cond_1ce
    const/4 v3, 0x2

    goto/16 :goto_62

    :sswitch_1d1
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1db

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto :goto_17d

    :cond_1db
    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_1fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v3, 0x5

    iput-char v3, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->doSetTop()Z

    move-result v4

    const v10, -0x21524111

    move-object/from16 v9, p0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto :goto_17d

    :cond_1fc
    const/4 v3, 0x1

    goto/16 :goto_62

    :sswitch_1ff
    const/4 v2, -0x1

    if-eq v3, v2, :cond_20a

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :cond_20a
    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_22c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v3, 0x5

    iput-char v3, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->doSetTop()Z

    move-result v4

    const v10, -0x21524111

    move-object/from16 v9, p0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_272

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_26f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    const/4 v3, 0x2

    goto/16 :goto_62

    :cond_26f
    const/4 v3, 0x1

    goto/16 :goto_62

    :cond_272
    const/4 v3, 0x0

    goto/16 :goto_62

    :sswitch_275
    const/4 v2, -0x1

    if-eq v3, v2, :cond_280

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :cond_280
    const v3, -0x21524111

    goto/16 :goto_62

    :sswitch_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    const/16 v9, 0x5d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v10, v0

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_optionEnd_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionEnd_:I

    move v2, v0

    const/4 v9, -0x1

    if-eq v2, v9, :cond_62

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->readAndSetOption()B

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionEnd_:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    and-int/lit8 v2, v22, 0x4

    if-eqz v2, :cond_312

    const v2, -0x21524111

    if-ne v3, v2, :cond_303

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/CollationRuleParser;->doSetTop()Z

    move-result v4

    if-eqz v8, :cond_2e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    const/16 v9, 0x2d

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    int-to-char v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x2

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    :cond_2e9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    const/4 v11, 0x1

    move-object/from16 v9, p0

    move v10, v3

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :cond_303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto/16 :goto_62

    :cond_312
    and-int/lit8 v2, v22, 0x8

    if-eqz v2, :cond_36d

    const v2, -0x21524111

    if-eq v3, v2, :cond_35e

    const/4 v2, -0x1

    if-eq v3, v2, :cond_35e

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    const v9, 0xffff

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    const/4 v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto/16 :goto_62

    :cond_36d
    and-int/lit8 v2, v22, 0x3

    if-eqz v2, :cond_62

    const v2, -0x21524111

    if-ne v3, v2, :cond_37b

    and-int/lit8 v2, v22, 0x3

    int-to-byte v8, v2

    goto/16 :goto_62

    :cond_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto/16 :goto_62

    :sswitch_38a
    const/16 v23, 0x0

    const/16 v17, 0x0

    goto/16 :goto_62

    :sswitch_390
    const/16 v19, 0x1

    goto/16 :goto_62

    :sswitch_394
    const/4 v2, -0x1

    if-ne v3, v2, :cond_3a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-static {v2, v9}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_3a4
    const/16 v18, 0x1

    if-eqz v17, :cond_43d

    if-nez v23, :cond_3b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    :cond_3b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-eqz v2, :cond_3f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v11, v0

    iget v11, v11, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v11, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v9, v0

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/2addr v2, v9

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    :cond_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    :goto_3ff
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    const/16 v2, 0x27

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    const/16 v18, 0x0

    goto/16 :goto_62

    :cond_43d
    if-nez v23, :cond_444

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v5, v0

    :cond_444
    if-eqz v6, :cond_46d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v10, v0

    sub-int/2addr v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v11, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    add-int/2addr v2, v6

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    :cond_46d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ff

    :sswitch_470
    const/4 v2, -0x1

    if-ne v3, v2, :cond_47d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    move-object v2, v0

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isFrenchCollation_:Z

    goto/16 :goto_62

    :cond_47d
    :sswitch_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v9, v0

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v9, v0

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixLen_:I

    if-eqz v17, :cond_4f5

    if-nez v23, :cond_4a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v9, v0

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    :cond_4a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v2, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    if-eqz v2, :cond_4ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v10, v0

    iget v10, v10, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v10, v0

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v9, v0

    iget v9, v9, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/2addr v2, v9

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    :cond_4ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object v2, v0

    iget v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    :cond_4f5
    const/16 v23, 0x1

    :cond_4f7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_4f7

    goto/16 :goto_62

    :cond_519
    :sswitch_519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/CollationRuleParser;->isCharNewLine(C)Z

    move-result v2

    if-eqz v2, :cond_519

    goto/16 :goto_62

    :cond_53b
    if-nez v6, :cond_542

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move v5, v0

    :cond_542
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_62

    :cond_546
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/CollationRuleParser;->doEndParseNextToken(IZIIZI)I

    move-result v2

    goto/16 :goto_17d

    :sswitch_data_54e
    .sparse-switch
        0x21 -> :sswitch_62
        0x23 -> :sswitch_519
        0x26 -> :sswitch_275
        0x27 -> :sswitch_394
        0x2c -> :sswitch_1a3
        0x2f -> :sswitch_38a
        0x3b -> :sswitch_1d1
        0x3c -> :sswitch_1ff
        0x3d -> :sswitch_174
        0x40 -> :sswitch_470
        0x5b -> :sswitch_285
        0x5c -> :sswitch_390
        0x7c -> :sswitch_47d
    .end sparse-switch
.end method

.method private readAndSetOption()B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v13, 0x14

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/4 v9, 0x7

    const/16 v10, 0x10

    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    add-int/lit8 v5, v7, 0x1

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionEnd_:I

    invoke-direct {p0, v7, v5, v8}, Lcom/ibm/icu/text/CollationRuleParser;->readOption(Ljava/lang/String;II)I

    move-result v0

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    if-gez v0, :cond_1e

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_1e
    if-ge v0, v9, :cond_75

    if-eqz v3, :cond_6e

    const/4 v1, 0x0

    :goto_23
    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_6e

    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v3, v7

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_6b

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    sget-object v8, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v8, v8, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_attribute_:I
    invoke-static {v8}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$200(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)I

    move-result v8

    sget-object v9, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v9, v9, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptionAttributeValues_:[I
    invoke-static {v9}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$300(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[I

    move-result-object v9

    aget v9, v9, v1

    invoke-direct {p0, v7, v8, v9}, Lcom/ibm/icu/text/CollationRuleParser;->setOptions(Lcom/ibm/icu/text/CollationRuleParser$OptionSet;II)V

    move v7, v10

    :goto_6a
    return v7

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_6e
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :goto_73
    move v7, v10

    goto :goto_6a

    :cond_75
    if-ne v0, v9, :cond_7a

    const/16 v7, 0x18

    goto :goto_6a

    :cond_7a
    const/16 v7, 0x8

    if-ne v0, v7, :cond_80

    move v7, v10

    goto :goto_6a

    :cond_80
    const/16 v7, 0x9

    if-ne v0, v7, :cond_d4

    if-eqz v3, :cond_ce

    const/4 v1, 0x0

    :goto_87
    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_ce

    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v3, v7

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_cb

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptionAttributeValues_:[I
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$300(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[I

    move-result-object v7

    aget v7, v7, v1

    add-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    goto :goto_6a

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_ce
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto :goto_73

    :cond_d4
    if-ne v0, v11, :cond_dd

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    const/4 v8, 0x0

    iput-char v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move v7, v13

    goto :goto_6a

    :cond_dd
    if-ge v0, v12, :cond_126

    const/4 v1, 0x0

    :goto_e0
    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_11f

    sget-object v7, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v7, v7, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
    invoke-static {v7}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v3, v7

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_11c

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11c

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    sub-int v8, v0, v11

    shl-int/lit8 v9, v1, 0x1

    add-int/2addr v8, v9

    int-to-char v8, v8

    iput-char v8, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move v7, v13

    goto/16 :goto_6a

    :cond_11c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_11f
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto/16 :goto_73

    :cond_126
    if-eq v0, v12, :cond_12c

    const/16 v7, 0xe

    if-ne v0, v7, :cond_16c

    :cond_12c
    const/4 v2, 0x1

    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    :goto_133
    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v7, v8, :cond_163

    if-eqz v2, :cond_163

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_154

    add-int/lit8 v2, v2, 0x1

    :cond_14d
    :goto_14d
    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    goto :goto_133

    :cond_154
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_14d

    add-int/lit8 v2, v2, -0x1

    goto :goto_14d

    :cond_163
    iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionEnd_:I

    move v7, v10

    goto/16 :goto_6a

    :cond_16c
    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    goto/16 :goto_73
.end method

.method private readAndSetUnicodeSet(Ljava/lang/String;I)Lcom/ibm/icu/text/UnicodeSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v4, 0x5b

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_b

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x1

    const/4 v0, 0x1

    :goto_d
    add-int v2, p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    if-eqz v1, :cond_31

    add-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_24

    add-int/lit8 v1, v1, 0x1

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_24
    add-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_21

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_31
    if-nez v1, :cond_3e

    const-string v2, "]"

    add-int v3, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_43

    :cond_3e
    iget-object v2, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_rules_:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_43
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    add-int v3, p2, v0

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private readOption(Ljava/lang/String;II)I
    .registers 9

    const/4 v3, 0x0

    iput v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    array-length v3, v3

    if-ge v0, v3, :cond_4b

    sget-object v3, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    aget-object v3, v3, v0

    #getter for: Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_name_:Ljava/lang/String;
    invoke-static {v3}, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->access$000(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, p2, v2

    if-le v3, v4, :cond_48

    add-int v3, p2, v2

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    sub-int v3, p3, p2

    if-le v3, v2, :cond_4b

    add-int v3, p2, v2

    iput v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    :goto_31
    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    if-ge v3, p3, :cond_4b

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_optionarg_:I

    goto :goto_31

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4b
    sget-object v3, Lcom/ibm/icu/text/CollationRuleParser;->RULES_OPTIONS_:[Lcom/ibm/icu/text/CollationRuleParser$TokenOption;

    array-length v3, v3

    if-ne v0, v3, :cond_51

    const/4 v0, -0x1

    :cond_51
    return v0
.end method

.method private setOptions(Lcom/ibm/icu/text/CollationRuleParser$OptionSet;II)V
    .registers 7

    const/16 v0, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_38

    :goto_7
    return-void

    :pswitch_8
    if-ne p3, v0, :cond_e

    move v0, v2

    :goto_b
    iput-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isHiragana4_:Z

    goto :goto_7

    :cond_e
    move v0, v1

    goto :goto_b

    :pswitch_10
    if-ne p3, v0, :cond_16

    move v0, v2

    :goto_13
    iput-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isFrenchCollation_:Z

    goto :goto_7

    :cond_16
    move v0, v1

    goto :goto_13

    :pswitch_18
    const/16 v0, 0x14

    if-ne p3, v0, :cond_20

    move v0, v2

    :goto_1d
    iput-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isAlternateHandlingShifted_:Z

    goto :goto_7

    :cond_20
    move v0, v1

    goto :goto_1d

    :pswitch_22
    iput p3, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_caseFirst_:I

    goto :goto_7

    :pswitch_25
    if-ne p3, v0, :cond_2b

    move v0, v2

    :goto_28
    iput-boolean v0, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isCaseLevel_:Z

    goto :goto_7

    :cond_2b
    move v0, v1

    goto :goto_28

    :pswitch_2d
    if-ne p3, v0, :cond_31

    const/16 p3, 0x11

    :cond_31
    iput p3, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_decomposition_:I

    goto :goto_7

    :pswitch_34
    iput p3, p1, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_strength_:I

    goto :goto_7

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_10
        :pswitch_18
        :pswitch_22
        :pswitch_25
        :pswitch_2d
        :pswitch_34
        :pswitch_8
    .end packed-switch
.end method

.method private static final throwParseException(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Parse error occurred in rule at offset "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "\n after the prefix \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" before the suffix \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method


# virtual methods
.method assembleTokenList()I
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    const/4 v13, 0x0

    :cond_1b
    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_a01

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    if-nez v17, :cond_241

    const/16 v30, 0x1

    :goto_39
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationRuleParser;->parseNextToken(Z)I

    move-result v30

    if-ltz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_flags_:C

    move/from16 v25, v0

    and-int/lit8 v30, v25, 0x8

    if-eqz v30, :cond_245

    const/16 v30, 0x1

    move/from16 v29, v30

    :goto_57
    and-int/lit8 v30, v25, 0x4

    if-eqz v30, :cond_24b

    const/16 v30, 0x1

    move/from16 v28, v30

    :goto_5f
    const/16 v16, -0x1

    if-eqz v17, :cond_69

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v16, v0

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move/from16 v31, v0

    shl-int/lit8 v31, v31, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v32, v0

    or-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    move/from16 v30, v0

    const v31, -0x21524111

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_54e

    if-nez v17, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_db
    if-nez v23, :cond_251

    new-instance v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct/range {v23 .. v23}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v31, v0

    or-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixLen_:I

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    move/from16 v31, v0

    or-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_prefix_:I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_polarity_:I

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_169
    :goto_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    const v30, -0x21524111

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_19e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-nez v30, :cond_3bc

    :cond_19e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-nez v30, :cond_2fc

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :cond_1c4
    :goto_1c4
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-nez v30, :cond_1dc

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_variableTop_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionOffset_:I

    move/from16 v31, v0

    or-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I

    if-eqz v13, :cond_209

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    if-nez v30, :cond_4ac

    const/4 v13, 0x0

    :cond_209
    :goto_209
    move-object/from16 v0, v17

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_flags_:C

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x3

    if-eqz v30, :cond_23d

    move-object/from16 v0, v17

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_flags_:C

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x3

    const/16 v31, 0x1

    sub-int v9, v30, v31

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move v0, v9

    move/from16 v1, v30

    if-eq v0, v1, :cond_23d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/ibm/icu/text/CollationRuleParser;->throwParseException(Ljava/lang/String;I)V

    :cond_23d
    :goto_23d
    move-object/from16 v17, v23

    goto/16 :goto_1b

    :cond_241
    const/16 v30, 0x0

    goto/16 :goto_39

    :cond_245
    const/16 v30, 0x0

    move/from16 v29, v30

    goto/16 :goto_57

    :cond_24b
    const/16 v30, 0x0

    move/from16 v28, v30

    goto/16 :goto_5f

    :cond_251
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    const v31, -0x21524111

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_169

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_169

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2d6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_298

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    :cond_298
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :goto_2aa
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2e9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :goto_2c4
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto/16 :goto_169

    :cond_2d6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_2aa

    :cond_2e9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_2c4

    :cond_2fc
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_34e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto/16 :goto_1c4

    :cond_34e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v17, v0

    :goto_35a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_381

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_381

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v17, v0

    goto :goto_35a

    :cond_381
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3af

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :goto_395
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto/16 :goto_1c4

    :cond_3af
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_395

    :cond_3bc
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_498

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_polarity_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_polarity_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_436

    :goto_3d4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3fb

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3fb

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v17, v0

    goto :goto_3d4

    :cond_3fb
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_429

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :goto_415
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto/16 :goto_1c4

    :cond_429
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_415

    :cond_436
    :goto_436
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_45d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_45d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v17, v0

    goto :goto_436

    :cond_45d
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_48b

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    :goto_477
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto/16 :goto_1c4

    :cond_48b
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_477

    :cond_498
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c4

    move/from16 v0, v16

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    goto/16 :goto_1c4

    :cond_4ac
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I

    move/from16 v30, v0

    if-nez v30, :cond_4bb

    move v0, v13

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I

    goto/16 :goto_209

    :cond_4bb
    const v30, 0xffffff

    and-int v26, v13, v30

    ushr-int/lit8 v22, v13, 0x18

    if-lez v22, :cond_4df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v31, v0

    add-int v32, v26, v22

    move-object/from16 v0, v31

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionOffset_:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    move/from16 v32, v0

    add-int v32, v32, v26

    move-object/from16 v0, v31

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    move/from16 v30, v0

    add-int v30, v30, v22

    shl-int/lit8 v30, v30, 0x18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move/from16 v31, v0

    or-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expansion_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    move/from16 v31, v0

    add-int v31, v31, v22

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_extraCurrent_:I

    goto/16 :goto_209

    :cond_54e
    if-eqz v17, :cond_58b

    const v30, -0x21524111

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_58b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v30, v0

    if-lez v30, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v31, v31, v32

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-nez v30, :cond_58b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    :cond_58b
    if-nez v23, :cond_608

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move/from16 v21, v0

    :goto_599
    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-le v0, v1, :cond_5e6

    if-nez v23, :cond_5e6

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    shl-int/lit8 v31, v21, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v32, v0

    or-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_hashTable_:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_utilToken_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_599

    :cond_5e6
    if-eqz v23, :cond_608

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move/from16 v30, v0

    sub-int v30, v30, v21

    shl-int/lit8 v30, v30, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v31, v0

    add-int v31, v31, v21

    or-int v13, v30, v31

    :cond_608
    and-int/lit8 v30, v25, 0x3

    if-eqz v30, :cond_65a

    if-nez v28, :cond_7b3

    and-int/lit8 v30, v25, 0x3

    const/16 v31, 0x1

    sub-int v27, v30, v31

    if-eqz v23, :cond_7a7

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    const v31, -0x21524111

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7a7

    :goto_625
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v27

    if-le v0, v1, :cond_640

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_640

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v23, v0

    goto :goto_625

    :cond_640
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v27

    if-ne v0, v1, :cond_78f

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-eqz v30, :cond_781

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v23, v0

    :cond_65a
    :goto_65a
    if-nez v23, :cond_9fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    if-nez v30, :cond_67f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    new-instance v32, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    invoke-direct/range {v32 .. v32}, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;-><init>()V

    aput-object v32, v30, v31

    :cond_67f
    if-nez v28, :cond_932

    sget-object v30, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    move/from16 v34, v0

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v5

    invoke-virtual {v11}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    move/from16 v31, v0

    add-int v12, v30, v31

    invoke-virtual {v11}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move v0, v5

    and-int/lit16 v0, v0, -0xc1

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v30

    if-eqz v30, :cond_91a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    :goto_703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    new-instance v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct/range {v23 .. v23}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;->initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I

    move-result v13

    goto/16 :goto_23d

    :cond_781
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_reset_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v23, v0

    goto/16 :goto_65a

    :cond_78f
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_reset_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;->getVirginBefore(Lcom/ibm/icu/text/CollationRuleParser$Token;I)Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-result-object v23

    goto/16 :goto_65a

    :cond_7a7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;->getVirginBefore(Lcom/ibm/icu/text/CollationRuleParser$Token;I)Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-result-object v23

    goto/16 :goto_65a

    :cond_7b3
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    new-instance v32, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    invoke-direct/range {v32 .. v32}, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;-><init>()V

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    and-int/lit8 v30, v25, 0x3

    const/16 v31, 0x1

    sub-int v27, v30, v31

    sget-object v30, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startCE_:I

    move v7, v0

    sget-object v30, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I

    move v8, v0

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object v10, v0

    ushr-int/lit8 v30, v7, 0x18

    sget-object v31, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MIN_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_90e

    ushr-int/lit8 v30, v7, 0x18

    sget-object v31, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MAX_:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_90e

    const/high16 v30, -0x1

    and-int v30, v30, v7

    const/high16 v31, -0x1

    and-int v31, v31, v8

    shr-int/lit8 v31, v31, 0x10

    or-int v18, v30, v31

    sget-object v30, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getRawFromImplicit(I)I

    move-result v20

    sget-object v30, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    const/16 v31, 0x1

    sub-int v31, v20, v31

    invoke-virtual/range {v30 .. v31}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromRaw(I)I

    move-result v19

    const/16 v30, 0x0

    const/high16 v31, -0x1

    and-int v31, v31, v19

    move/from16 v0, v31

    or-int/lit16 v0, v0, 0x505

    move/from16 v31, v0

    aput v31, v10, v30

    const/16 v30, 0x1

    shl-int/lit8 v31, v19, 0x10

    const/high16 v32, -0x1

    and-int v31, v31, v32

    move/from16 v0, v31

    or-int/lit16 v0, v0, 0xc0

    move/from16 v31, v0

    aput v31, v10, v30

    :goto_89f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v31, v10, v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v31, v10, v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    new-instance v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct/range {v23 .. v23}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;->initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I

    move-result v13

    goto/16 :goto_65a

    :cond_90e
    sget-object v15, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->INVERSE_UCA_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;

    move-object v0, v15

    move v1, v7

    move v2, v8

    move/from16 v3, v27

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->getInversePrevCE(III[I)I

    goto :goto_89f

    :cond_91a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    goto/16 :goto_703

    :cond_932
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_previousContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    sget-object v30, Lcom/ibm/icu/text/CollationRuleParser;->INDIRECT_BOUNDARIES_:[Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-char v0, v0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_indirectIndex_:C

    move/from16 v31, v0

    aget-object v14, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object v0, v14

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startCE_:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object v0, v14

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object v0, v14

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitCE_:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object v0, v14

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitContCE_:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    new-instance v23, Lcom/ibm/icu/text/CollationRuleParser$Token;

    invoke-direct/range {v23 .. v23}, Lcom/ibm/icu/text/CollationRuleParser$Token;-><init>()V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CollationRuleParser;->initAReset(ILcom/ibm/icu/text/CollationRuleParser$Token;)I

    move-result v13

    goto/16 :goto_23d

    :cond_9fd
    const/16 v28, 0x0

    goto/16 :goto_23d

    :cond_a01
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v30, v0

    if-lez v30, :cond_a33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_listHeader_:[Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v31, v31, v32

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    move-object/from16 v30, v0

    if-nez v30, :cond_a33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    :cond_a33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser;->m_resultLength_:I

    move/from16 v30, v0

    return v30
.end method

.method getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v4}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    new-instance v0, Lcom/ibm/icu/text/CanonicalIterator;

    const-string v5, ""

    invoke-direct {v0, v5}, Lcom/ibm/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    const/4 v6, -0x1

    iput v6, v5, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    iget-object v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    :cond_19
    iget v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_current_:I

    if-ge v5, v2, :cond_5f

    iget-object v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iput v9, v5, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/CollationRuleParser;->parseNextToken(Z)I

    move-result v5

    if-ltz v5, :cond_19

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v5, v5, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    const v6, -0x21524111

    if-eq v5, v6, :cond_19

    iget-object v5, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_source_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v6, v6, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v7, v7, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iget-object v8, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_parsedToken_:Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;

    iget v8, v8, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ibm/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v1

    :goto_4b
    if-eqz v1, :cond_19

    sget-object v5, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v1, v5, v9}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-eq v5, v6, :cond_5a

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_5a
    invoke-virtual {v0}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_5f
    return-object v4
.end method

.method setDefaultOptionsInCollator(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_strength_:I

    iput v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_decomposition_:I

    iput v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget-boolean v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isFrenchCollation_:Z

    iput-boolean v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget-boolean v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isAlternateHandlingShifted_:Z

    iput-boolean v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget-boolean v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isCaseLevel_:Z

    iput-boolean v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_caseFirst_:I

    iput v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget-boolean v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isHiragana4_:Z

    iput-boolean v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z

    iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iget v0, v0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_variableTopValue_:I

    iput v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultVariableTopValue_:I

    return-void
.end method
