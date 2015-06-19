.class public Lcom/igexin/push/core/bean/BaseAction;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->a:Ljava/lang/String;
return-object v0
.end method
.method public getDoActionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->c:Ljava/lang/String;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/BaseAction;->b:Ljava/lang/String;
return-object v0
.end method
.method public setActionId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->a:Ljava/lang/String;
return-void
.end method
.method public setDoActionId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->c:Ljava/lang/String;
return-void
.end method
.method public setType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/BaseAction;->b:Ljava/lang/String;
return-void
.end method