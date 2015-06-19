.class final Lcom/bbm/ui/activities/un;
.super Ljava/lang/Object;
.source "InviteActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Lcom/bbm/ui/activities/vb;
.field final synthetic c:I
.field final synthetic d:Lcom/bbm/ui/activities/InviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;ILcom/bbm/ui/activities/vb;I)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/un;->d:Lcom/bbm/ui/activities/InviteActivity;
iput p2, p0, Lcom/bbm/ui/activities/un;->a:I
iput-object p3, p0, Lcom/bbm/ui/activities/un;->b:Lcom/bbm/ui/activities/vb;
iput p4, p0, Lcom/bbm/ui/activities/un;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/un; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/un;->d:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->u(Lcom/bbm/ui/activities/InviteActivity;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/un;->d:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->v(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/GridLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/un;->d:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/InviteActivity;->u(Lcom/bbm/ui/activities/InviteActivity;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/vb;
iget-object v1, v0, Lcom/bbm/ui/activities/vb;->e:Landroid/widget/ImageView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/vb;->a:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V
iget-object v0, v0, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;
invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V
:cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/un;->d:Lcom/bbm/ui/activities/InviteActivity;
iget v1, p0, Lcom/bbm/ui/activities/un;->a:I
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/InviteActivity;->b(Lcom/bbm/ui/activities/InviteActivity;I)I
iget-object v0, p0, Lcom/bbm/ui/activities/un;->b:Lcom/bbm/ui/activities/vb;
iget-object v0, v0, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;
iget v1, p0, Lcom/bbm/ui/activities/un;->c:I
invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V
iget-object v0, p0, Lcom/bbm/ui/activities/un;->b:Lcom/bbm/ui/activities/vb;
iget-object v0, v0, Lcom/bbm/ui/activities/vb;->a:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/un;->b:Lcom/bbm/ui/activities/vb;
iget-object v0, v0, Lcom/bbm/ui/activities/vb;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
const-string v1, " - Lcom/bbm/ui/activities/un; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method