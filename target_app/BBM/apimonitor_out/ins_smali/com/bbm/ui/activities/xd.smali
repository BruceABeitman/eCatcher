.class final Lcom/bbm/ui/activities/xd;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/xd;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 5
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_28
iget-object v1, p0, Lcom/bbm/ui/activities/xd;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/MainActivity;->g(Lcom/bbm/ui/activities/MainActivity;I)Z
:goto_a
return-void
:pswitch_b
iget-object v0, p0, Lcom/bbm/ui/activities/xd;->a:Lcom/bbm/ui/activities/MainActivity;
const-class v1, Lcom/bbm/ui/c/gz;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/gz;
invoke-virtual {v0}, Lcom/bbm/ui/c/gz;->a()V
iget-object v0, p0, Lcom/bbm/ui/activities/xd;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto :goto_a
nop
:pswitch_data_28
.packed-switch 0x7f0a009d
:pswitch_b
.end packed-switch
.end method