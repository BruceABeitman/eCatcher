.class Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationParsedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContractionTable"
.end annotation


# instance fields
.field m_CEs_:Ljava/util/Vector;

.field m_codePoints_:Ljava/lang/StringBuffer;

.field m_currentTag_:I

.field m_elements_:Ljava/util/Vector;

.field m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

.field m_offsets_:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_mapping_:Lcom/ibm/icu/impl/IntTrieBuilder;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_elements_:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_CEs_:Ljava/util/Vector;

    iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_offsets_:Ljava/util/Vector;

    iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$ContractionTable;->m_currentTag_:I

    return-void
.end method
