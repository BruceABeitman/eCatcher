.class public Lcom/facebook/FacebookServiceException;
.super Lcom/facebook/FacebookException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field private final error:Lcom/facebook/FacebookRequestError;
.method public constructor <init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
return-void
.end method
.method public final a()Lcom/facebook/FacebookRequestError;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{FacebookServiceException: httpResponseCode: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->a()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", facebookErrorCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->b()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", facebookErrorType: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", message: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/FacebookServiceException;->error:Lcom/facebook/FacebookRequestError;
invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->d()Ljava/lang/String;
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