.class  Lcom/ibm/icu/util/Range;
.super Ljava/lang/Object;
.source "RangeDateRule.java"
.field public rule:Lcom/ibm/icu/util/DateRule;
.field public start:Ljava/util/Date;
.method public constructor <init>(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
iput-object p2, p0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
return-void
.end method