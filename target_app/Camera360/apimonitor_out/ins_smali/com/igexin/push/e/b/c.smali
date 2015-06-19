.class public Lcom/igexin/push/e/b/c;
.super Lcom/igexin/push/e/b/h;
.field private a:Lcom/igexin/push/core/bean/PushTaskBean;
.field private b:Ljava/lang/String;
.method public constructor <init>(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;J)V
.registers 6
invoke-direct {p0, p3, p4}, Lcom/igexin/push/e/b/h;-><init>(J)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/push/e/b/c;->A:Z
iput-object p1, p0, Lcom/igexin/push/e/b/c;->a:Lcom/igexin/push/core/bean/PushTaskBean;
iput-object p2, p0, Lcom/igexin/push/e/b/c;->b:Ljava/lang/String;
return-void
.end method
.method public a_()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 1
invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V
return-void
.end method
.method protected i()V
.registers 4
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/e/b/c;->a:Lcom/igexin/push/core/bean/PushTaskBean;
iget-object v2, p0, Lcom/igexin/push/e/b/c;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
return-void
.end method