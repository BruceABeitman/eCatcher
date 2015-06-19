.class final Lcom/bbm/ui/c/ef;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/d/ec;
.field final synthetic b:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ec;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/ef;->b:Lcom/bbm/ui/c/du;
iput-object p2, p0, Lcom/bbm/ui/c/ef;->a:Lcom/bbm/d/ec;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_30
:goto_5
iget-object v0, p0, Lcom/bbm/ui/c/ef;->b:Lcom/bbm/ui/c/du;
invoke-static {v0}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:sswitch_14
iget-object v0, p0, Lcom/bbm/ui/c/ef;->b:Lcom/bbm/ui/c/du;
iget-object v1, p0, Lcom/bbm/ui/c/ef;->a:Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/c/ef;->a:Lcom/bbm/d/ec;
iget-boolean v2, v2, Lcom/bbm/d/ec;->r:Z
invoke-static {v0, v1, v2}, Lcom/bbm/ui/c/du;->a(Lcom/bbm/ui/c/du;Ljava/lang/String;Z)V
goto :goto_5
:sswitch_22
iget-object v0, p0, Lcom/bbm/ui/c/ef;->b:Lcom/bbm/ui/c/du;
invoke-static {v0}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/ef;->a:Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/util/ac;->c(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_5
:sswitch_data_30
.sparse-switch
0x7f0a003a -> :sswitch_14
0x7f0a004b -> :sswitch_22
.end sparse-switch
.end method