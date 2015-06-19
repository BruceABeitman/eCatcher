.class final Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"

# interfaces
.implements Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationParsedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuildTable"
.end annotation


# instance fields
.field cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;

.field m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

.field m_contrEndCP_:[B

.field m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

.field m_expansions_:Ljava/util/Vector;

.field m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

.field m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

.field m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

.field m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

.field m_prefixLookup_:Ljava/util/Hashtable;

.field m_unsafeCP_:[B


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    new-instance v0, Lcom/ibm/icu/impl/IntTrieBuilder;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;-><init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;

    new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    iput-object v1, v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

    new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;-><init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    iget-object v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/CollationRuleParser;)V
    .registers 13

    const/4 v1, 0x0

    const/16 v10, 0x420

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->cmLookup:Lcom/ibm/icu/text/CollationParsedRuleBuilder$CombinClassTable;

    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCAData()V

    new-instance v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

    invoke-direct {v7}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;-><init>()V

    new-instance v8, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

    invoke-direct {v8}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;-><init>()V

    iget-object v0, p1, Lcom/ibm/icu/text/CollationRuleParser;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_options_:Lcom/ibm/icu/text/CollationRuleParser$OptionSet;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_expansions_:Ljava/util/Vector;

    const/high16 v3, -0x1000

    new-instance v0, Lcom/ibm/icu/impl/IntTrieBuilder;

    const/high16 v2, 0x3

    const/4 v5, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_prefixLookup_:Ljava/util/Hashtable;

    new-instance v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;-><init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contractions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;

    iput-object v7, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;

    const/4 v6, 0x0

    :goto_4a
    sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    array-length v0, v0

    if-ge v6, v0, :cond_74

    iget-object v0, v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    sget-object v2, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    aget v2, v2, v6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    sget-object v2, Lcom/ibm/icu/text/RuleBasedCollator;->UCA_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B

    aget-byte v2, v2, v6

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_74
    iput-object v8, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_maxJamoExpansions_:Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;

    new-array v0, v10, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    new-array v0, v10, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_unsafeCP_:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_contrEndCP_:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .registers 8

    add-int/lit16 v1, p1, 0x400

    :goto_2
    if-ge p1, v1, :cond_2d

    iget-object v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-virtual {v4, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BuildTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-virtual {v4, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->isInZeroBlock(I)Z

    move-result v0

    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->getCETag(I)I
    invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$200(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    add-int/lit8 p1, p1, 0x20

    goto :goto_2

    :cond_1a
    #calls: Lcom/ibm/icu/text/CollationParsedRuleBuilder;->isSpecial(I)Z
    invoke-static {v3}, Lcom/ibm/icu/text/CollationParsedRuleBuilder;->access$300(I)Z

    move-result v4

    if-eqz v4, :cond_26

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2a

    if-eqz v2, :cond_2a

    :cond_26
    const/high16 v4, -0xb00

    or-int/2addr v4, p2

    :goto_29
    return v4

    :cond_2a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2d
    const/4 v4, 0x0

    goto :goto_29
.end method
