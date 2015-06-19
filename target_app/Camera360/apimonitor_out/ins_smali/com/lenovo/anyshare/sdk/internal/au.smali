.class public Lcom/lenovo/anyshare/sdk/internal/au;
.super Ljava/lang/Exception;
.source "ModuleException.java"
.field private a:I
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/au;->a:I
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/au;->a:I
return-void
.end method
.method public constructor <init>(ILjava/lang/Throwable;)V
.registers 3
invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/au;->a:I
return-void
.end method
.method public getCode()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/au;->a:I
return v0
.end method
.method public setCode(I)V
.registers 2
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/au;->a:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "[ code = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/au;->getCode()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", msg = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/au;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method