.class public final Lcom/bbm/ui/activities/wi;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
const v2, 0x7f0a007c
packed-switch p2, :pswitch_data_36
:goto_6
iget-object v0, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:pswitch_11
iget-object v0, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a0063
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V
goto :goto_6
:pswitch_1a
iget-object v0, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a005d
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V
goto :goto_6
:pswitch_23
iget-object v0, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a005e
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V
goto :goto_6
:pswitch_2c
iget-object v0, p0, Lcom/bbm/ui/activities/wi;->a:Lcom/bbm/ui/activities/MainActivity;
const v1, 0x7f0a0062
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V
goto :goto_6
nop
:pswitch_data_36
.packed-switch 0x0
:pswitch_11
:pswitch_1a
:pswitch_23
:pswitch_2c
.end packed-switch
.end method