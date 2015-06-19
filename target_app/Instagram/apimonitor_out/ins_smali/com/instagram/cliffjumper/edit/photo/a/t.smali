.class final Lcom/instagram/cliffjumper/edit/photo/a/t;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/t;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/cliffjumper/edit/photo/a/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/t;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
sget v1, Lcom/instagram/cliffjumper/edit/photo/a/u;->b:I
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;I)I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/t;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->e(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
const-string v1, " - Lcom/instagram/cliffjumper/edit/photo/a/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method