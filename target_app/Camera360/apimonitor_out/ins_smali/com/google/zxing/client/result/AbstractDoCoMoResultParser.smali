.class abstract Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AbstractDoCoMoResultParser.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method static matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
.registers 4
const/16 v0, 0x3b
invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 4
const/16 v0, 0x3b
invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method