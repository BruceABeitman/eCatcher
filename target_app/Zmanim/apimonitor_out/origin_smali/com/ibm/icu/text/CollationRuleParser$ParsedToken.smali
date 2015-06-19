.class Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedToken"
.end annotation


# instance fields
.field m_charsLen_:I

.field m_charsOffset_:I

.field m_extensionLen_:I

.field m_extensionOffset_:I

.field m_flags_:C

.field m_indirectIndex_:C

.field m_prefixLen_:I

.field m_prefixOffset_:I

.field m_strength_:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsLen_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_charsOffset_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionLen_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_extensionOffset_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixLen_:I

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_prefixOffset_:I

    iput-char v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_flags_:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$ParsedToken;->m_strength_:I

    return-void
.end method
