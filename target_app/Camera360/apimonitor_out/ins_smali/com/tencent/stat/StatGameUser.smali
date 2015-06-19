.class public Lcom/tencent/stat/StatGameUser;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/StatGameUser;->a:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/StatGameUser;->b:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/StatGameUser;->c:Ljava/lang/String;
return-void
.end method
.method public clone()Lcom/tencent/stat/StatGameUser;
.registers 2
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/StatGameUser;
:goto_6
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/tencent/stat/StatGameUser;->clone()Lcom/tencent/stat/StatGameUser;
move-result-object v0
return-object v0
.end method
.method public getAccount()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/StatGameUser;->b:Ljava/lang/String;
return-object v0
.end method
.method public getLevel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/StatGameUser;->c:Ljava/lang/String;
return-object v0
.end method
.method public getWorldName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/StatGameUser;->a:Ljava/lang/String;
return-object v0
.end method
.method public setAccount(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/StatGameUser;->b:Ljava/lang/String;
return-void
.end method
.method public setLevel(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/StatGameUser;->c:Ljava/lang/String;
return-void
.end method
.method public setWorldName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/StatGameUser;->a:Ljava/lang/String;
return-void
.end method