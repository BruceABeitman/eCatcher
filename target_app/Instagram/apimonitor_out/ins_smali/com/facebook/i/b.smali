.class public final Lcom/facebook/i/b;
.super Ljava/lang/Exception;
.source "NumberParseException.java"
.field private a:Lcom/facebook/i/c;
.field private b:Ljava/lang/String;
.method public constructor <init>(Lcom/facebook/i/c;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/facebook/i/b;->b:Ljava/lang/String;
iput-object p1, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;
return-void
.end method
.method public final a()Lcom/facebook/i/c;
.registers 2
iget-object v0, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Error type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ". "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/i/b;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method