.class final Lcom/bbm/util/eh;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Landroid/content/Context;
.field final synthetic c:Lcom/bbm/d/fy;
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/bbm/d/fy;)V
.registers 4
iput-object p1, p0, Lcom/bbm/util/eh;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/bbm/util/eh;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/util/eh;->c:Lcom/bbm/d/fy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget-object v0, p0, Lcom/bbm/util/eh;->a:Landroid/app/Activity;
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_2a
:goto_11
return-void
:pswitch_12
iget-object v0, p0, Lcom/bbm/util/eh;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/util/eh;->c:Lcom/bbm/d/fy;
iget-object v1, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_11
:pswitch_1c
iget-object v0, p0, Lcom/bbm/util/eh;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/util/eh;->c:Lcom/bbm/d/fy;
iget-object v1, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/util/eh;->c:Lcom/bbm/d/fy;
iget-object v2, v2, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
:pswitch_data_2a
.packed-switch 0x7f0a004d
:pswitch_1c
:pswitch_12
.end packed-switch
.end method