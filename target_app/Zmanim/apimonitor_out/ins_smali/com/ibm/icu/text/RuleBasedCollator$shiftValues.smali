.class  Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"
.field  primShift:I
.field  secShift:I
.field  terShift:I
.field final synthetic this$0:Lcom/ibm/icu/text/RuleBasedCollator;
.method private constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
.registers 3
const/16 v0, 0x18
iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->this$0:Lcom/ibm/icu/text/RuleBasedCollator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->primShift:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->secShift:I
iput v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;->terShift:I
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator$shiftValues;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
return-void
.end method