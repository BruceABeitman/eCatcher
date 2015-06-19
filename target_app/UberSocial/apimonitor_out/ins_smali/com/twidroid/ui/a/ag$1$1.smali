.class  Lcom/twidroid/ui/a/ag$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/c/d;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Z
.field final synthetic c:Lcom/twidroid/ui/a/ag$1;
.method constructor <init>(Lcom/twidroid/ui/a/ag$1;Landroid/view/View;Z)V
.registers 4
iput-object p1, p0, Lcom/twidroid/ui/a/ag$1$1;->c:Lcom/twidroid/ui/a/ag$1;
iput-object p2, p0, Lcom/twidroid/ui/a/ag$1$1;->a:Landroid/view/View;
iput-boolean p3, p0, Lcom/twidroid/ui/a/ag$1$1;->b:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/a/ag$1$1;->c:Lcom/twidroid/ui/a/ag$1;
iget-object v0, v0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
invoke-static {v0}, Lcom/twidroid/ui/a/ag;->a(Lcom/twidroid/ui/a/ag;)Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/a/ag$1$1;->c:Lcom/twidroid/ui/a/ag$1;
iget-object v1, v1, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-wide v1, v1, Lcom/twidroid/model/twitter/User;->b:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ag$1$1;->c:Lcom/twidroid/ui/a/ag$1;
iget-object v2, v0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
iget-object v0, p0, Lcom/twidroid/ui/a/ag$1$1;->a:Landroid/view/View;
check-cast v0, Landroid/widget/TextView;
iget-boolean v1, p0, Lcom/twidroid/ui/a/ag$1$1;->b:Z
if-nez v1, :cond_26
const/4 v1, 0x1
:goto_22
invoke-static {v2, v0, v1}, Lcom/twidroid/ui/a/ag;->a(Lcom/twidroid/ui/a/ag;Landroid/widget/TextView;Z)V
return-void
:cond_26
const/4 v1, 0x0
goto :goto_22
.end method
.method public b()V
.registers 1
return-void
.end method