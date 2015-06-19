.class final Lcom/bbm/ui/activities/wv;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wv;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_2c
iget-object v1, p0, Lcom/bbm/ui/activities/wv;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/MainActivity;->g(Lcom/bbm/ui/activities/MainActivity;I)Z
:goto_a
return-void
:pswitch_b
const-string v0, "Add Category handleSlideMenuItemClick"
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/wv;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/wv;->a:Lcom/bbm/ui/activities/MainActivity;
new-instance v1, Lcom/bbm/ui/activities/ww;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ww;-><init>(Lcom/bbm/ui/activities/wv;)V
new-instance v2, Lcom/bbm/ui/activities/wx;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/wx;-><init>(Lcom/bbm/ui/activities/wv;)V
invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;Lcom/bbm/ui/activities/aek;)V
goto :goto_a
:pswitch_data_2c
.packed-switch 0x7f0a005b
:pswitch_b
.end packed-switch
.end method