.class Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationParsedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InverseUCA"
.end annotation


# instance fields
.field m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;

.field m_continuations_:[C

.field m_table_:[I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareCEs(IIII)I
    .registers 15

    const v9, 0xff00

    const/high16 v8, -0x1

    move v1, p1

    move v4, p3

    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    move v2, p2

    :goto_e
    invoke-static {p4}, Lcom/ibm/icu/text/RuleBasedCollator;->isContinuation(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v5, p4

    :goto_15
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-ne v1, v4, :cond_21

    if-ne v2, v5, :cond_21

    const/4 v6, 0x0

    :goto_1c
    return v6

    :cond_1d
    const/4 v2, 0x0

    goto :goto_e

    :cond_1f
    const/4 v5, 0x0

    goto :goto_15

    :cond_21
    and-int v6, v1, v8

    and-int v7, v2, v8

    shr-int/lit8 v7, v7, 0x10

    or-int v0, v6, v7

    and-int v6, v4, v8

    and-int v7, v5, v8

    shr-int/lit8 v7, v7, 0x10

    or-int v3, v6, v7

    if-ne v0, v3, :cond_5f

    and-int v6, v1, v9

    and-int v7, v2, v9

    shr-int/lit8 v7, v7, 0x8

    or-int v0, v6, v7

    and-int v6, v4, v9

    and-int v7, v5, v9

    shr-int/lit8 v7, v7, 0x8

    or-int v3, v6, v7

    if-ne v0, v3, :cond_5a

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v2, 0xff

    or-int v0, v6, v7

    and-int/lit16 v6, v4, 0xff

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v5, 0xff

    or-int v3, v6, v7

    invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I

    move-result v6

    goto :goto_1c

    :cond_5a
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I

    move-result v6

    goto :goto_1c

    :cond_5f
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->compareUnsigned(II)I

    move-result v6

    goto :goto_1c
.end method

.method private final getInverseNext(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;I)I
    .registers 10

    iget v0, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    invoke-virtual {p0, v0, v4}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->findInverseCE(II)I

    move-result v3

    if-gez v3, :cond_c

    const/4 v5, -0x1

    :goto_b
    return v5

    :cond_c
    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v5

    aget v5, v5, p2

    and-int/2addr v0, v5

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v5

    aget v5, v5, p2

    and-int/2addr v4, v5

    move v1, v0

    move v2, v4

    :goto_1c
    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v5

    aget v5, v5, p2

    and-int/2addr v5, v1

    if-ne v5, v0, :cond_3f

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v5

    aget v5, v5, p2

    and-int/2addr v5, v2

    if-ne v5, v4, :cond_3f

    iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, v3, 0x3

    aget v1, v5, v6

    iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v5, v6

    goto :goto_1c

    :cond_3f
    iput v1, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    iput v2, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    move v5, v3

    goto :goto_b
.end method


# virtual methods
.method findInverseCE(II)I
    .registers 11

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    array-length v6, v6

    div-int/lit8 v5, v6, 0x3

    const/4 v3, 0x0

    :goto_7
    const/4 v6, 0x1

    sub-int v6, v5, v6

    if-ge v0, v6, :cond_2a

    add-int v6, v5, v0

    shr-int/lit8 v3, v6, 0x1

    iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v7, v3, 0x3

    aget v2, v6, v7

    iget-object v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v6, v7

    invoke-direct {p0, v2, v4, p1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->compareCEs(IIII)I

    move-result v1

    if-lez v1, :cond_26

    move v5, v3

    goto :goto_7

    :cond_26
    if-gez v1, :cond_2a

    move v0, v3

    goto :goto_7

    :cond_2a
    return v3
.end method

.method final getCEStrengthDifference(IIII)I
    .registers 8

    const/4 v0, 0x2

    :goto_1
    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v1

    aget v1, v1, v0

    and-int/2addr v1, p3

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v2

    aget v2, v2, v0

    and-int/2addr v2, p1

    if-ne v1, v2, :cond_21

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v1

    aget v1, v1, v0

    and-int/2addr v1, p4

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v2

    aget v2, v2, v0

    and-int/2addr v2, p2

    if-eq v1, v2, :cond_26

    :cond_21
    if-eqz v0, :cond_26

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_26
    return v0
.end method

.method getInverseGapPositions(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v6, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget v7, v6, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    const/4 v0, 0x0

    :goto_5
    const/4 v8, 0x3

    if-ge v0, v8, :cond_51

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v0, 0x3

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v0, 0x3

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_numStr_:[I

    const/4 v9, 0x0

    aput v9, v8, v0

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/4 v9, 0x0

    aput-object v9, v8, v0

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_lStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    const/4 v9, 0x0

    aput-object v9, v8, v0

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    const/4 v9, -0x1

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_51
    iget v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    ushr-int/lit8 v8, v8, 0x18

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MIN_:I

    if-lt v8, v9, :cond_d0

    iget v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    ushr-int/lit8 v8, v8, 0x18

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_CONSTANTS_:Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;

    iget v9, v9, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MAX_:I

    if-gt v8, v9, :cond_d0

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    iget v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget v5, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x2

    const/4 v10, 0x2

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    const/high16 v8, -0x1

    and-int/2addr v8, v4

    const/high16 v9, -0x1

    and-int/2addr v9, v5

    ushr-int/lit8 v9, v9, 0x10

    or-int v2, v8, v9

    sget-object v8, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    sget-object v9, Lcom/ibm/icu/text/RuleBasedCollator;->impCEGen_:Lcom/ibm/icu/impl/ImplicitCEGenerator;

    invoke-virtual {v9, v2}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getRawFromImplicit(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromRaw(I)I

    move-result v2

    const/high16 v8, -0x1

    and-int/2addr v8, v2

    or-int/lit16 v4, v8, 0x505

    shl-int/lit8 v8, v2, 0x10

    const/high16 v9, -0x1

    and-int/2addr v8, v9

    or-int/lit16 v5, v8, 0xc0

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x2

    const/4 v10, 0x2

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    iget-boolean v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_indirect_:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_156

    iget v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    if-eqz v8, :cond_156

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    iget v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget v5, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    const/4 v9, 0x2

    const/4 v10, 0x2

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextCE_:I

    iget v5, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_nextContCE_:I

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    const/4 v9, 0x2

    const/4 v10, 0x2

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    goto :goto_cf

    :cond_124
    const/4 v8, 0x2

    if-ge v7, v8, :cond_152

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    aget v8, v8, v7

    iget-object v9, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    if-ne v8, v9, :cond_152

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    iget-object v9, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    add-int/lit8 v10, v7, 0x1

    aget-object v9, v9, v10

    aput-object v9, v8, v7

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_lStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    add-int/lit8 v9, v7, 0x1

    const/4 v10, -0x1

    aput v10, v8, v9

    :cond_152
    if-eqz v6, :cond_183

    iget v7, v6, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    :cond_156
    const/4 v8, 0x3

    if-ge v7, v8, :cond_16b

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    invoke-direct {p0, p1, v7}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->getInverseNext(Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;I)I

    move-result v9

    aput v9, v8, v7

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    aget v8, v8, v7

    if-ltz v8, :cond_17b

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    aput-object v6, v8, v7

    :cond_16b
    :goto_16b
    if-eqz v6, :cond_124

    iget v8, v6, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_strength_:I

    if-lt v8, v7, :cond_124

    const/4 v8, 0x3

    if-ge v7, v8, :cond_178

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_lStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    aput-object v6, v8, v7

    :cond_178
    iget-object v6, v6, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;

    goto :goto_16b

    :cond_17b
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Internal program error"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_183
    const/4 v3, 0x0

    :goto_184
    const/4 v8, 0x3

    if-ge v3, v8, :cond_cf

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    aget v1, v8, v3

    if-ltz v1, :cond_1f1

    iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v9, v1, 0x3

    aget v4, v8, v9

    iget-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    aget v5, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v3, 0x3

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x2

    and-int/lit8 v10, v4, 0x3f

    shl-int/lit8 v10, v10, 0x18

    and-int/lit8 v11, v5, 0x3f

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    aput v10, v8, v9

    iget v4, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseCE_:I

    iget v5, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_baseContCE_:I

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v3, 0x3

    const/4 v10, 0x0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->mergeCE(III)I
    invoke-static {v4, v5, v10}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$100(III)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p1, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x2

    and-int/lit8 v10, v4, 0x3f

    shl-int/lit8 v10, v10, 0x18

    and-int/lit8 v11, v5, 0x3f

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    aput v10, v8, v9

    :cond_1f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_184
.end method

.method final getInversePrevCE(III[I)I
    .registers 10

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->findInverseCE(II)I

    move-result v0

    if-gez v0, :cond_c

    aput v1, p4, v3

    :goto_b
    return v1

    :cond_c
    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v1

    aget v1, v1, p3

    and-int/2addr p1, v1

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v1

    aget v1, v1, p3

    and-int/2addr p2, v1

    aput p1, p4, v3

    aput p2, p4, v4

    :goto_1e
    aget v1, p4, v3

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v2

    aget v2, v2, p3

    and-int/2addr v1, v2

    if-ne v1, p1, :cond_4b

    aget v1, p4, v4

    invoke-static {}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$000()[I

    move-result-object v2

    aget v2, v2, p3

    and-int/2addr v1, v2

    if-ne v1, p2, :cond_4b

    if-lez v0, :cond_4b

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    aput v1, p4, v3

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    aput v1, p4, v4

    goto :goto_1e

    :cond_4b
    move v1, v0

    goto :goto_b
.end method
