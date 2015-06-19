.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"
.field private final body:Ljava/lang/String;
.field private final numbers:[Ljava/lang/String;
.field private final subject:Ljava/lang/String;
.field private final vias:[Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
new-array v0, v2, [Ljava/lang/String;
aput-object p1, v0, v1
iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
aput-object p2, v0, v1
iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
return-void
.end method
.method public getBody()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
return-object v0
.end method
.method public getDisplayResult()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x64
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getNumbers()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
return-object v0
.end method
.method public getSMSURI()Ljava/lang/String;
.registers 9
const/4 v5, 0x1
const/4 v6, 0x0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "sms:"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
const/4 v3, 0x0
:goto_f
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
array-length v7, v7
if-ge v3, v7, :cond_3e
if-eqz v0, :cond_38
const/4 v0, 0x0
:goto_17
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;
aget-object v7, v7, v3
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
if-eqz v7, :cond_35
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
aget-object v7, v7, v3
if-eqz v7, :cond_35
const-string/jumbo v7, ";via="
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
aget-object v7, v7, v3
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_35
add-int/lit8 v3, v3, 0x1
goto :goto_f
:cond_38
const/16 v7, 0x2c
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_17
:cond_3e
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
if-eqz v7, :cond_77
move v1, v5
:goto_43
iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
if-eqz v7, :cond_79
move v2, v5
:goto_48
if-nez v1, :cond_4c
if-eqz v2, :cond_72
:cond_4c
const/16 v5, 0x3f
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
if-eqz v1, :cond_5e
const-string/jumbo v5, "body="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5e
if-eqz v2, :cond_72
if-eqz v1, :cond_67
const/16 v5, 0x26
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_67
const-string/jumbo v5, "subject="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_72
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
:cond_77
move v1, v6
goto :goto_43
:cond_79
move v2, v6
goto :goto_48
.end method
.method public getSubject()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;
return-object v0
.end method
.method public getVias()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;
return-object v0
.end method