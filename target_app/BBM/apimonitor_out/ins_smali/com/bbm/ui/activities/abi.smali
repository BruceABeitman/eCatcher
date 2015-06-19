.class final Lcom/bbm/ui/activities/abi;
.super Lcom/bbm/ui/cj;
.source "PreviewChannelActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/PreviewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0, p1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b(Lcom/bbm/ui/activities/PreviewChannelActivity;I)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v1, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abi;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->o()V
return-void
.end method