.class public Lcom/pinguo/lib/os/Fault;
.super Ljava/lang/Exception;
.source "Fault.java"
.field private message:Ljava/lang/String;
.field private status:I
.method public constructor <init>(ILjava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput p1, p0, Lcom/pinguo/lib/os/Fault;->status:I
iput-object p2, p0, Lcom/pinguo/lib/os/Fault;->message:Ljava/lang/String;
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/os/Fault;->message:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/lib/os/Fault;->status:I
return v0
.end method