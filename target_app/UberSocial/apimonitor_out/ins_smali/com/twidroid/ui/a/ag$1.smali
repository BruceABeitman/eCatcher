.class  Lcom/twidroid/ui/a/ag$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/twidroid/model/twitter/User;
.field final synthetic b:Lcom/twidroid/ui/a/ag;
.method constructor <init>(Lcom/twidroid/ui/a/ag;Lcom/twidroid/model/twitter/User;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
iput-object p2, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v0, 0x0
const/4 v1, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v1, v2, :cond_58
iget-object v2, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
iget-object v3, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-wide v3, v3, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v2, v3, v4}, Lcom/twidroid/ui/a/ag;->a(J)Z
move-result v2
if-eqz v2, :cond_41
iget-object v3, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
invoke-static {v3}, Lcom/twidroid/ui/a/ag;->a(Lcom/twidroid/ui/a/ag;)Ljava/util/ArrayList;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-wide v4, v4, Lcom/twidroid/model/twitter/User;->b:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
invoke-static {v3}, Lcom/twidroid/ui/a/ag;->b(Lcom/twidroid/ui/a/ag;)Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-object v4, v4, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v5, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-wide v5, v5, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v3, v4, v5, v6}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a(Ljava/lang/String;J)V
iget-object v3, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
check-cast p1, Landroid/widget/TextView;
if-nez v2, :cond_3d
move v0, v1
:cond_3d
invoke-static {v3, p1, v0}, Lcom/twidroid/ui/a/ag;->a(Lcom/twidroid/ui/a/ag;Landroid/widget/TextView;Z)V
:goto_40
return v1
:cond_41
iget-object v0, p0, Lcom/twidroid/ui/a/ag$1;->b:Lcom/twidroid/ui/a/ag;
invoke-static {v0}, Lcom/twidroid/ui/a/ag;->b(Lcom/twidroid/ui/a/ag;)Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
move-result-object v0
iget-object v3, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-object v3, v3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v4, p0, Lcom/twidroid/ui/a/ag$1;->a:Lcom/twidroid/model/twitter/User;
iget-wide v4, v4, Lcom/twidroid/model/twitter/User;->b:J
new-instance v6, Lcom/twidroid/ui/a/ag$1$1;
invoke-direct {v6, p0, p1, v2}, Lcom/twidroid/ui/a/ag$1$1;-><init>(Lcom/twidroid/ui/a/ag$1;Landroid/view/View;Z)V
invoke-virtual {v0, v3, v4, v5, v6}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a(Ljava/lang/String;JLcom/twidroid/c/d;)V
goto :goto_40
:cond_58
move v1, v0
goto :goto_40
.end method