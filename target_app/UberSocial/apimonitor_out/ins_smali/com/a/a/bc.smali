.class final Lcom/a/a/bc;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field private synthetic a:Lcom/a/a/az;
.method constructor <init>(Lcom/a/a/az;)V
.registers 2
iput-object p1, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/a/a/bc; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;
iget-object v0, v0, Lcom/a/a/az;->b:Lcom/a/a/e;
invoke-static {v1}, Lcom/a/a/e;->b(Z)V
iget-object v0, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;
iget-object v0, v0, Lcom/a/a/az;->a:Lcom/a/a/be;
invoke-virtual {v0, v1}, Lcom/a/a/be;->a(Z)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/a/a/bc; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method