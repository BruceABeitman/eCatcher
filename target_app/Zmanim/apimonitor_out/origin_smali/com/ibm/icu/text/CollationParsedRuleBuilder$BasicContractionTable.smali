.class Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationParsedRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicContractionTable"
.end annotation


# instance fields
.field m_CEs_:Ljava/util/Vector;

.field m_codePoints_:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;

    return-void
.end method
