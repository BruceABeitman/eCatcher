.class  Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"
.field final isNumeric:Z
.field final length:I
.field final type:C
.method constructor <init>(CI)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-char p1, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
iput p2, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
#calls: Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z
invoke-static {p1, p2}, Lcom/ibm/icu/text/SimpleDateFormat;->access$000(CI)Z
move-result v0
iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z
return-void
.end method