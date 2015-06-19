.class public abstract Lcom/google/zxing/client/result/ParsedResult;
.super Ljava/lang/Object;
.source "ParsedResult.java"
.field private final type:Lcom/google/zxing/client/result/ParsedResultType;
.method protected constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;
return-void
.end method
.method public static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_16
invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_13
const/16 v0, 0xa
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_16
return-void
.end method
.method public static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 6
if-eqz p0, :cond_f
move-object v0, p0
array-length v2, v0
const/4 v1, 0x0
:goto_5
if-ge v1, v2, :cond_f
aget-object v3, v0, v1
invoke-static {v3, p1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_f
return-void
.end method
.method public abstract getDisplayResult()Ljava/lang/String;
.end method
.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;
move-result-object v0
return-object v0
.end method