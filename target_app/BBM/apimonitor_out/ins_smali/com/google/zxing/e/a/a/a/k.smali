.class public final Lcom/google/zxing/e/a/a/a/k;
.super Lcom/google/zxing/e/a/a/a/j;
.source "AnyAIDecoder.java"
.method public constructor <init>(Lcom/google/zxing/b/a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/j;-><init>(Lcom/google/zxing/b/a;)V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/zxing/e/a/a/a/j;->b:Lcom/google/zxing/e/a/a/a/t;
const/4 v2, 0x5
invoke-virtual {v1, v0, v2}, Lcom/google/zxing/e/a/a/a/t;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method