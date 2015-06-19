.class public final Lcom/bbm/util/er;
.super Lcom/bbm/j/u;
.source "UpdatesFragmentUtil.java"
.field  a:Lcom/bbm/util/ew;
.field private final b:Lcom/bbm/ui/activities/MainActivity;
.field private final c:Landroid/content/Context;
.field private final d:Landroid/app/Fragment;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/ui/activities/MainActivity;Landroid/app/Fragment;Lcom/bbm/util/ew;)V
.registers 6
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iput-object p4, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iput-object p1, p0, Lcom/bbm/util/er;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
iput-object p3, p0, Lcom/bbm/util/er;->d:Landroid/app/Fragment;
return-void
.end method
.method protected final b()Z
.registers 9
const/4 v7, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
if-nez v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
iget-object v0, p0, Lcom/bbm/util/er;->d:Landroid/app/Fragment;
invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z
move-result v0
if-nez v0, :cond_13
move v0, v1
goto :goto_8
:cond_13
iget-object v0, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
iget-object v3, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
sget-object v0, Lcom/bbm/util/ec;->f:[I
iget-object v4, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v4, v4, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
invoke-virtual {v4}, Lcom/bbm/util/ex;->ordinal()I
move-result v4
aget v0, v0, v4
packed-switch v0, :pswitch_data_f6
:goto_26
iget-object v0, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V
iput-object v7, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
move v0, v1
goto :goto_8
:pswitch_2f
iget-object v0, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fz;
iget-object v4, v0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_72
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v4
iget-object v5, v0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v4, v5}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
sget-object v5, Lcom/bbm/util/ec;->e:[I
iget-object v6, v4, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_100
goto :goto_26
:pswitch_53
move v0, v2
goto :goto_8
:pswitch_55
const-string v3, "No user found for Uri %s"
new-array v4, v1, [Ljava/lang/Object;
iget-object v0, v0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
aput-object v0, v4, v2
invoke-static {v3, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object v7, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
move v0, v1
goto :goto_8
:pswitch_64
iget-object v2, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
iget-object v5, p0, Lcom/bbm/util/er;->d:Landroid/app/Fragment;
invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;
move-result-object v5
invoke-static {v2, v3, v4, v0, v5}, Lcom/bbm/util/dy;->a(Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/d/gp;Lcom/bbm/d/ga;Landroid/view/View;)V
goto :goto_26
:cond_72
iput-object v7, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
move v0, v1
goto :goto_8
:pswitch_76
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v4, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
sget-object v4, Lcom/bbm/util/ec;->e:[I
iget-object v5, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
invoke-virtual {v5}, Lcom/bbm/util/bh;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_10a
goto :goto_26
:pswitch_92
move v0, v2
goto/16 :goto_8
:pswitch_95
const-string v0, "No group found for Uri %s"
new-array v3, v1, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;
aput-object v4, v3, v2
invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object v7, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
move v0, v1
goto/16 :goto_8
:pswitch_a7
iget-object v2, p0, Lcom/bbm/util/er;->c:Landroid/content/Context;
iget-object v4, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
iget-object v5, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v5, v5, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
invoke-static {v2, v4, v3, v0}, Lcom/bbm/util/dy;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/g/a;)V
goto/16 :goto_26
:pswitch_b4
iget-object v0, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fy;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v4
iget-object v5, v0, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v4, v5}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v4
sget-object v5, Lcom/bbm/util/ec;->e:[I
iget-object v6, v4, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_114
goto/16 :goto_26
:pswitch_d3
move v0, v2
goto/16 :goto_8
:pswitch_d6
const-string v3, "No channel found for Uri %s"
new-array v4, v1, [Ljava/lang/Object;
iget-object v0, v0, Lcom/bbm/d/fy;->b:Ljava/lang/String;
aput-object v0, v4, v2
invoke-static {v3, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object v7, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
move v0, v1
goto/16 :goto_8
:pswitch_e6
iget-object v0, p0, Lcom/bbm/util/er;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/util/er;->b:Lcom/bbm/ui/activities/MainActivity;
iget-object v5, p0, Lcom/bbm/util/er;->a:Lcom/bbm/util/ew;
iget-object v6, p0, Lcom/bbm/util/er;->d:Landroid/app/Fragment;
invoke-virtual {v6}, Landroid/app/Fragment;->getView()Landroid/view/View;
invoke-static {v0, v2, v3, v5, v4}, Lcom/bbm/util/dy;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/util/ew;Lcom/bbm/d/ec;)V
goto/16 :goto_26
:pswitch_data_100
.packed-switch 0x1
:pswitch_53
:pswitch_55
:pswitch_64
.end packed-switch
:pswitch_data_114
.packed-switch 0x1
:pswitch_d3
:pswitch_d6
:pswitch_e6
.end packed-switch
:pswitch_data_10a
.packed-switch 0x1
:pswitch_92
:pswitch_95
:pswitch_a7
.end packed-switch
:pswitch_data_f6
.packed-switch 0x1
:pswitch_2f
:pswitch_76
:pswitch_b4
.end packed-switch
.end method