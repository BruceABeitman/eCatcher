.class  Lcom/twidroid/ui/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/ui/c/h;
.field final synthetic b:Lcom/twidroid/ui/a/l;
.method constructor <init>(Lcom/twidroid/ui/a/l;Lcom/twidroid/ui/c/h;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/l$1;->b:Lcom/twidroid/ui/a/l;
iput-object p2, p0, Lcom/twidroid/ui/a/l$1;->a:Lcom/twidroid/ui/c/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/a/l$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/ui/a/l$1;->a:Lcom/twidroid/ui/c/h;
check-cast p1, Landroid/widget/CheckBox;
invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-nez v0, :cond_f
const/4 v0, 0x1
:goto_b
invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Z)V
const-string v1, " - Lcom/twidroid/ui/a/l$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f
const/4 v0, 0x0
goto :goto_b
.end method