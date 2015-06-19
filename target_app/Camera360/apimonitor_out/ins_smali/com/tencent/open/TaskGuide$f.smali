.class  Lcom/tencent/open/TaskGuide$f;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/view/View$OnClickListener;
.field  a:I
.field final synthetic b:Lcom/tencent/open/TaskGuide;
.method public constructor <init>(Lcom/tencent/open/TaskGuide;I)V
.registers 3
iput-object p1, p0, Lcom/tencent/open/TaskGuide$f;->b:Lcom/tencent/open/TaskGuide;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/tencent/open/TaskGuide$f;->a:I
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/open/TaskGuide$f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Landroid/widget/Button;
iget-object v0, p0, Lcom/tencent/open/TaskGuide$f;->b:Lcom/tencent/open/TaskGuide;
iget v1, p0, Lcom/tencent/open/TaskGuide$f;->a:I
invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;I)Lcom/tencent/open/TaskGuide$d;
move-result-object v0
sget-object v1, Lcom/tencent/open/TaskGuide$d;->d:Lcom/tencent/open/TaskGuide$d;
if-ne v0, v1, :cond_1c
iget-object v0, p0, Lcom/tencent/open/TaskGuide$f;->b:Lcom/tencent/open/TaskGuide;
iget v1, p0, Lcom/tencent/open/TaskGuide$f;->a:I
invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;I)V
iget-object v0, p0, Lcom/tencent/open/TaskGuide$f;->b:Lcom/tencent/open/TaskGuide;
iget v1, p0, Lcom/tencent/open/TaskGuide$f;->a:I
invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->c(Lcom/tencent/open/TaskGuide;I)V
:cond_1c
iget-object v0, p0, Lcom/tencent/open/TaskGuide$f;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->e(Lcom/tencent/open/TaskGuide;)V
const-string v1, " - Lcom/tencent/open/TaskGuide$f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method