.class  Lcom/twidroid/activity/InnerCircleManagementActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/InnerCircleManagementActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, -0x1
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/d;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v1
if-ne v1, v3, :cond_21
new-instance v0, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;
invoke-direct {v0, p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity$1;Landroid/view/View;)V
new-array v1, v4, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/InnerCircleManagementActivity$1$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_20
:goto_20
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_21
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v1
if-ltz v1, :cond_47
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v1
invoke-virtual {v0}, Lcom/twidroid/ui/a/d;->getCount()I
move-result v2
if-ge v1, v2, :cond_47
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1, v0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;Landroid/view/View;)V
goto :goto_20
:cond_47
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v1
if-ne v1, v3, :cond_20
invoke-virtual {v0}, Lcom/twidroid/ui/a/d;->getCount()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_20
invoke-virtual {v0, v4}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$1;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1, v0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;Landroid/view/View;)V
goto :goto_20
.end method