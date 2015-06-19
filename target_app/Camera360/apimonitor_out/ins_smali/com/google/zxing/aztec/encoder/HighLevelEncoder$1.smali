.class  Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.method constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
.registers 5
invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I
move-result v0
invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/google/zxing/aztec/encoder/State;
check-cast p2, Lcom/google/zxing/aztec/encoder/State;
invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
move-result v0
return v0
.end method