.class final Lcom/bbm/ui/activities/px;
.super Lcom/bbm/ui/cj;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/px;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/px;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 4
packed-switch p1, :pswitch_data_14
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/px;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/px;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->b(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
goto :goto_3
:pswitch_data_14
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/px;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->o()V
return-void
.end method