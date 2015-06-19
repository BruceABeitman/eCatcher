.class final Lcom/bbm/ui/activities/an;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/an;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/an;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->p(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
return-void
.end method