.class  Lcom/twidroid/activity/InnerCircleManagementActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$2;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/InnerCircleManagementActivity$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$2;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0, p3}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;I)I
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method