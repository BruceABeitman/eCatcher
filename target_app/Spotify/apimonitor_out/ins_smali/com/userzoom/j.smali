.class public Lcom/userzoom/j;
.super Ljava/io/IOException;
.field private a:Lcom/userzoom/g;
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/userzoom/j;->a:Lcom/userzoom/g;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/userzoom/j;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 5
invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const-string v0, "N/A"
:cond_8
iget-object v1, p0, Lcom/userzoom/j;->a:Lcom/userzoom/g;
if-eqz v1, :cond_2d
new-instance v2, Ljava/lang/StringBuilder;
const/16 v3, 0x64
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v1, :cond_29
const/16 v0, 0xa
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, " at "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/userzoom/g;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_29
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_2d
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/userzoom/j;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method