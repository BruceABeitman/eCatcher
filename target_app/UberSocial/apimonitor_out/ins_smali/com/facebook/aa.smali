.class public Lcom/facebook/aa;
.super Lcom/facebook/t;
.source "SourceFile"
.field private static final c:J = 0x1L
.field private final a:Lcom/facebook/w;
.method public constructor <init>(Lcom/facebook/w;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
return-void
.end method
.method public final a()Lcom/facebook/w;
.registers 2
iget-object v0, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{FacebookServiceException: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "httpResponseCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
invoke-virtual {v1}, Lcom/facebook/w;->d()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", facebookErrorCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
invoke-virtual {v1}, Lcom/facebook/w;->e()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", facebookErrorType: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
invoke-virtual {v1}, Lcom/facebook/w;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", message: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->a:Lcom/facebook/w;
invoke-virtual {v1}, Lcom/facebook/w;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method