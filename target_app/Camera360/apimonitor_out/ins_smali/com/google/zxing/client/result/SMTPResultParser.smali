.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
.registers 11
const/16 v8, 0x3a
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v6, "smtp:"
invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1b
const-string/jumbo v6, "SMTP:"
invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1b
const/4 v6, 0x0
:goto_1a
return-object v6
:cond_1b
const/4 v6, 0x5
invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const/4 v5, 0x0
const/4 v0, 0x0
invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_42
add-int/lit8 v6, v1, 0x1
invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_42
add-int/lit8 v6, v1, 0x1
invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
:cond_42
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "mailto:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v6, Lcom/google/zxing/client/result/EmailAddressParsedResult;
invoke-direct {v6, v2, v5, v0, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
move-result-object v0
return-object v0
.end method