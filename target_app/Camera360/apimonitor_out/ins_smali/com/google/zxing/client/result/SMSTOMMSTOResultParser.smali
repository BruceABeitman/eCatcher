.class public final Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSTOMMSTOResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
.registers 8
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "smsto:"
invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2a
const-string/jumbo v5, "SMSTO:"
invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2a
const-string/jumbo v5, "mmsto:"
invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2a
const-string/jumbo v5, "MMSTO:"
invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2a
:goto_29
return-object v4
:cond_2a
const/4 v5, 0x6
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
const/16 v5, 0x3a
invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_43
add-int/lit8 v5, v1, 0x1
invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const/4 v5, 0x0
invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
:cond_43
new-instance v5, Lcom/google/zxing/client/result/SMSParsedResult;
invoke-direct {v5, v2, v4, v4, v0}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v4, v5
goto :goto_29
.end method