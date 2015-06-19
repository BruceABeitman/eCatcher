.class Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenListHeader"
.end annotation


# instance fields
.field m_baseCE_:I

.field m_baseContCE_:I

.field m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

.field m_first_:Lcom/ibm/icu/text/CollationRuleParser$Token;

.field m_gapsHi_:[I

.field m_gapsLo_:[I

.field m_indirect_:Z

.field m_lStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

.field m_last_:Lcom/ibm/icu/text/CollationRuleParser$Token;

.field m_nextCE_:I

.field m_nextContCE_:I

.field m_numStr_:[I

.field m_pos_:[I

.field m_previousCE_:I

.field m_previousContCE_:I

.field m_reset_:Lcom/ibm/icu/text/CollationRuleParser$Token;


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, 0x3

    const/16 v1, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_pos_:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsLo_:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_gapsHi_:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_numStr_:[I

    new-array v0, v2, [Lcom/ibm/icu/text/CollationRuleParser$Token;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_fStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    new-array v0, v2, [Lcom/ibm/icu/text/CollationRuleParser$Token;

    iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;->m_lStrToken_:[Lcom/ibm/icu/text/CollationRuleParser$Token;

    return-void
.end method
