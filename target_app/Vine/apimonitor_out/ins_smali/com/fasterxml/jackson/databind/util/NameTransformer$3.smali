.class final Lcom/fasterxml/jackson/databind/util/NameTransformer$3;
.super Lcom/fasterxml/jackson/databind/util/NameTransformer;
.source "NameTransformer.java"
.field final synthetic val$prefix:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;->val$prefix:Ljava/lang/String;
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;-><init>()V
return-void
.end method
.method public reverse(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;->val$prefix:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;->val$prefix:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[PrefixTransformer(\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;->val$prefix:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\')]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public transform(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;->val$prefix:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method