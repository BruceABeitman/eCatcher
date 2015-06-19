.class public final Lcom/google/zxing/client/result/URLTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URLTOResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
.registers 8
const/4 v1, 0x0
const/4 v5, 0x6
invoke-static {p1}, Lcom/google/zxing/client/result/URLTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "urlto:"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_19
const-string/jumbo v4, "URLTO:"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_19
:goto_18
:cond_18
return-object v1
:cond_19
const/16 v4, 0x3a
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-ltz v2, :cond_18
if-gt v2, v5, :cond_30
:goto_23
add-int/lit8 v4, v2, 0x1
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/google/zxing/client/result/URIParsedResult;
invoke-direct {v4, v3, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v1, v4
goto :goto_18
:cond_30
invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
goto :goto_23
.end method