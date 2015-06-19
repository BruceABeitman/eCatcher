.class  Lcom/twidroid/activity/MutedUsers$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$3;->a:Lcom/twidroid/activity/MutedUsers;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$3;->a:Lcom/twidroid/activity/MutedUsers;
new-instance v1, Lcom/twidroid/activity/l;
iget-object v2, p0, Lcom/twidroid/activity/MutedUsers$3;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v3, p0, Lcom/twidroid/activity/MutedUsers$3;->a:Lcom/twidroid/activity/MutedUsers;
invoke-direct {v1, v2, v3}, Lcom/twidroid/activity/l;-><init>(Lcom/twidroid/activity/MutedUsers;Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/twidroid/activity/MutedUsers;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$3;->a:Lcom/twidroid/activity/MutedUsers;
invoke-static {v0}, Lcom/twidroid/activity/MutedUsers;->c(Lcom/twidroid/activity/MutedUsers;)Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method