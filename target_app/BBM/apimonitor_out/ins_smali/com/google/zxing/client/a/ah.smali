.class public final Lcom/google/zxing/client/a/ah;
.super Lcom/google/zxing/client/a/q;
.source "WifiParsedResult.java"
.field public final a:Ljava/lang/String;
.field public final b:Ljava/lang/String;
.field public final c:Ljava/lang/String;
.field public final d:Z
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
sget-object v0, Lcom/google/zxing/client/a/r;->j:Lcom/google/zxing/client/a/r;
invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V
iput-object p2, p0, Lcom/google/zxing/client/a/ah;->a:Ljava/lang/String;
iput-object p1, p0, Lcom/google/zxing/client/a/ah;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/client/a/ah;->c:Ljava/lang/String;
iput-boolean p4, p0, Lcom/google/zxing/client/a/ah;->d:Z
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x50
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/a/ah;->a:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ah;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/a/ah;->b:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ah;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/a/ah;->c:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ah;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-boolean v1, p0, Lcom/google/zxing/client/a/ah;->d:Z
invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ah;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method