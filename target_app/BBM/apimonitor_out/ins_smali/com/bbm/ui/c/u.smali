.class final Lcom/bbm/ui/c/u;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/c/l;
.method constructor <init>(Lcom/bbm/ui/c/l;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/u;->a:Lcom/bbm/ui/c/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/c/u;->a:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_26
:goto_13
return-void
:pswitch_14
iget-object v0, p0, Lcom/bbm/ui/c/u;->a:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/u;->a:Lcom/bbm/ui/c/l;
invoke-static {v1}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
move-result-object v1
sget-object v2, Lcom/bbm/util/ax;->a:Lcom/bbm/util/ax;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/bbm/util/ax;)V
goto :goto_13
:pswitch_data_26
.packed-switch 0x7f0a0037
:pswitch_14
.end packed-switch
.end method