.class Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContractionInfo"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/ibm/icu/text/RuleBasedCollator;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;->this$0:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator$ContractionInfo;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-void
.end method
