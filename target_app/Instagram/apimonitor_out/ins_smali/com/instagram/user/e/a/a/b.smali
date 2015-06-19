.class final Lcom/instagram/user/e/a/a/b;
.super Ljava/lang/Object;
.source "RequestedUserRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/user/e/a/a/e;
.field final synthetic b:I
.method constructor <init>(Lcom/instagram/user/e/a/a/e;I)V
.registers 3
iput-object p1, p0, Lcom/instagram/user/e/a/a/b;->a:Lcom/instagram/user/e/a/a/e;
iput p2, p0, Lcom/instagram/user/e/a/a/b;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/user/e/a/a/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/user/e/a/a/b;->a:Lcom/instagram/user/e/a/a/e;
iget v1, p0, Lcom/instagram/user/e/a/a/b;->b:I
invoke-interface {v0, v1}, Lcom/instagram/user/e/a/a/e;->a(I)V
const-string v1, " - Lcom/instagram/user/e/a/a/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method