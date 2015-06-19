.class final Lcom/bbm/ui/activities/vf;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/dw;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 5
packed-switch p1, :pswitch_data_6c
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a007b
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_d
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a007c
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_16
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a007e
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_1f
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a007f
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_28
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->g(Lcom/bbm/ui/activities/MainActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->h(Lcom/bbm/ui/activities/MainActivity;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_39
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a0084
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_3
:pswitch_42
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a0082
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/s;->a:Lcom/bbm/c/s;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/s;)V
goto :goto_3
:pswitch_54
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v0
const/4 v1, 0x7
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->j(Lcom/bbm/ui/activities/MainActivity;)V
goto :goto_3
:pswitch_65
iget-object v0, p0, Lcom/bbm/ui/activities/vf;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V
goto :goto_3
nop
:pswitch_data_6c
.packed-switch 0x0
:pswitch_4
:pswitch_d
:pswitch_16
:pswitch_39
:pswitch_1f
:pswitch_28
:pswitch_42
:pswitch_54
:pswitch_65
.end packed-switch
.end method