.class public final Lcom/google/zxing/client/result/TextParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TextParsedResult.java"
.field private final language:Ljava/lang/String;
.field private final text:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
iput-object p1, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;
return-void
.end method
.method public getDisplayResult()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;
return-object v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;
return-object v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;
return-object v0
.end method