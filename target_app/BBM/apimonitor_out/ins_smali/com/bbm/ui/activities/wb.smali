.class final Lcom/bbm/ui/activities/wb;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/slidingmenu/lib/a/b;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
const-string v0, "onHardwareMenuButtonClicked"
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
:goto_1d
return-void
:cond_1e
iget-object v1, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v2, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v1, v2, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/wb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V
goto :goto_1d
.end method