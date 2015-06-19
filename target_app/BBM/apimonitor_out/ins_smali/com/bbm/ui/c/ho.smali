.class final Lcom/bbm/ui/c/ho;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/ho; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0a007d
iget-object v0, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->k(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/ew;
sget-object v1, Lcom/bbm/ui/c/hu;->c:[I
iget-object v2, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
invoke-virtual {v2}, Lcom/bbm/util/ex;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_86
:goto_1c
const-string v1, " - Lcom/bbm/ui/c/ho; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_1d
iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fz;
iget-object v1, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/fz;Landroid/app/Activity;Landroid/content/Context;)V
goto :goto_1c
:pswitch_31
iget-object v1, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v1, Lcom/bbm/g/ak;
iget-object v0, v0, Lcom/bbm/util/ew;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
new-instance v3, Lcom/bbm/util/ew;
invoke-direct {v3, v1, v0}, Lcom/bbm/util/ew;-><init>(Lcom/bbm/g/ak;Ljava/lang/String;)V
invoke-static {v2, v3}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;
iget-object v0, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->l(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
goto :goto_1c
:pswitch_4b
iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fy;
iget-object v1, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;
invoke-static {v0, v1}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/fy;Landroid/app/Activity;)V
goto :goto_1c
:pswitch_5e
iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/b/a;
iget-object v1, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/b/a;Landroid/app/Activity;Landroid/content/Context;)V
goto :goto_1c
:pswitch_72
iget-object v0, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ho;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
goto :goto_1c
nop
:pswitch_data_86
.packed-switch 0x1
:pswitch_1d
:pswitch_31
:pswitch_4b
:pswitch_5e
:pswitch_72
.end packed-switch
.end method