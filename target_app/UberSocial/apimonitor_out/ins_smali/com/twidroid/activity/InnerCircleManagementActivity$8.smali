.class  Lcom/twidroid/activity/InnerCircleManagementActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/d/d;
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/twidroid/activity/i;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {v0, v1}, Lcom/twidroid/activity/i;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->e(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/a/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/a/b;->a(Lcom/ubermedia/a/a;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Boolean;
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->r()V
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->r()V
return-void
.end method