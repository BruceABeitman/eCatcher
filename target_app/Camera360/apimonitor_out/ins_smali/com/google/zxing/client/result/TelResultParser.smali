.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "TelResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
.registers 10
const/4 v4, 0x0
const/4 v7, 0x4
invoke-static {p1}, Lcom/google/zxing/client/result/TelResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v5, "tel:"
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_19
const-string/jumbo v5, "TEL:"
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_19
:goto_18
return-object v4
:cond_19
const-string/jumbo v5, "TEL:"
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_4d
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "tel:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_3a
const/16 v5, 0x3f
invoke-virtual {v2, v5, v7}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-gez v1, :cond_4f
invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_46
new-instance v5, Lcom/google/zxing/client/result/TelParsedResult;
invoke-direct {v5, v0, v3, v4}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v4, v5
goto :goto_18
:cond_4d
move-object v3, v2
goto :goto_3a
:cond_4f
invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_46
.end method