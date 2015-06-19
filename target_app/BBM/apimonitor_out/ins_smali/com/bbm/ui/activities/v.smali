.class final Lcom/bbm/ui/activities/v;
.super Lcom/bbm/ui/cj;
.source "AvatarViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/AvatarViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/v;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/v;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
packed-switch p1, :pswitch_data_a
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/v;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->c(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
goto :goto_3
:pswitch_data_a
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/v;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->o()V
return-void
.end method