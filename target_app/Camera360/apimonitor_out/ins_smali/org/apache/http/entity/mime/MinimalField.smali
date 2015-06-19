.class public Lorg/apache/http/entity/mime/MinimalField;
.super Ljava/lang/Object;
.source "MinimalField.java"
.field private final name:Ljava/lang/String;
.field private final value:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/http/entity/mime/MinimalField;->name:Ljava/lang/String;
iput-object p2, p0, Lorg/apache/http/entity/mime/MinimalField;->value:Ljava/lang/String;
return-void
.end method
.method public getBody()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/MinimalField;->value:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/MinimalField;->name:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lorg/apache/http/entity/mime/MinimalField;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lorg/apache/http/entity/mime/MinimalField;->value:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method