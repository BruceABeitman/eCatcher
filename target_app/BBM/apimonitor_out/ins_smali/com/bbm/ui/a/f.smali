.class final Lcom/bbm/ui/a/f;
.super Ljava/lang/Object;
.source "ChannelPostAdapter.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/a/a;
.method constructor <init>(Lcom/bbm/ui/a/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 8
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_f4
:goto_5
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:sswitch_14
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->d:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
goto :goto_5
:sswitch_2c
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/ek;->k:Ljava/util/List;
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->h(Lcom/bbm/ui/a/a;)Ljava/util/HashMap;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/o;
if-nez v0, :cond_79
if-eqz v1, :cond_79
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_79
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v0
if-eqz v0, :cond_79
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->h(Lcom/bbm/ui/a/a;)Ljava/util/HashMap;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_79
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->s:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v3}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/ek;->d:Ljava/lang/String;
if-nez v0, :cond_9f
const/4 v0, 0x0
:goto_92
iget-object v4, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v4}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v1, v2, v3, v0, v4}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_5
:cond_9f
iget-object v0, v0, Lcom/bbm/util/o;->c:Ljava/lang/String;
goto :goto_92
:sswitch_a2
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_5
:sswitch_bd
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->b(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_5
:sswitch_d8
iget-object v0, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/a/f;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_5
nop
:sswitch_data_f4
.sparse-switch
0x7f0a0034 -> :sswitch_14
0x7f0a0042 -> :sswitch_bd
0x7f0a0046 -> :sswitch_a2
0x7f0a0048 -> :sswitch_2c
0x7f0a004d -> :sswitch_d8
.end sparse-switch
.end method