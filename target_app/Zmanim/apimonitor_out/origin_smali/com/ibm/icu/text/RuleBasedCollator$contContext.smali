.class Lcom/ibm/icu/text/RuleBasedCollator$contContext;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "contContext"
.end annotation


# instance fields
.field addPrefixes:Z

.field coll:Lcom/ibm/icu/text/RuleBasedCollator;

.field contractions:Lcom/ibm/icu/text/UnicodeSet;

.field expansions:Lcom/ibm/icu/text/UnicodeSet;

.field removedContractions:Lcom/ibm/icu/text/UnicodeSet;

.field final synthetic this$0:Lcom/ibm/icu/text/RuleBasedCollator;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Z)V
    .registers 7

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->this$0:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->coll:Lcom/ibm/icu/text/RuleBasedCollator;

    iput-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->contractions:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p4, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p5, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->removedContractions:Lcom/ibm/icu/text/UnicodeSet;

    iput-boolean p6, p0, Lcom/ibm/icu/text/RuleBasedCollator$contContext;->addPrefixes:Z

    return-void
.end method
