.class Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"

# interfaces
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataManipulate"
.end annotation


# static fields
.field private static m_instance_:Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;->m_instance_:Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;->m_instance_:Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;

    :cond_b
    sget-object v0, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;->m_instance_:Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;

    return-object v0
.end method


# virtual methods
.method public final getFoldingOffset(I)I
    .registers 4

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isSpecial(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTag(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    const v0, 0xffffff

    and-int/2addr v0, p1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
