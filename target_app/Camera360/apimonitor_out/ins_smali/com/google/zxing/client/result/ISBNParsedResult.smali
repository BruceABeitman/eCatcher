.class public final Lcom/google/zxing/client/result/ISBNParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ISBNParsedResult.java"
.field private final isbn:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
iput-object p1, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;
return-void
.end method
.method public getDisplayResult()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;
return-object v0
.end method
.method public getISBN()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;
return-object v0
.end method