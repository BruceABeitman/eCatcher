.class public final Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
.registers 7
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
move-result-object v0
sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
if-eq v0, v4, :cond_a
:goto_9
:cond_9
return-object v3
:cond_a
invoke-static {p1}, Lcom/google/zxing/client/result/ISBNResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v1
const/16 v4, 0xd
if-ne v1, v4, :cond_9
const-string/jumbo v4, "978"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_28
const-string/jumbo v4, "979"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_9
:cond_28
new-instance v3, Lcom/google/zxing/client/result/ISBNParsedResult;
invoke-direct {v3, v2}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V
goto :goto_9
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
move-result-object v0
return-object v0
.end method