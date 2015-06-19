.class public Lcom/igexin/push/core/bean/m;
.super Lcom/igexin/push/core/bean/BaseAction;
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/push/core/bean/m;->b:Z
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/m;->a:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/m;->b:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/m;->b:Z
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/m;->a:Ljava/lang/String;
return-object v0
.end method