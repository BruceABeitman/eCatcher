.class final Lcom/bbm/ui/activities/ajd;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 9
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/a/k;->d()V
:cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->t(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_112
:goto_26
:cond_26
return-void
:sswitch_27
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->j(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/views/ChannelPostCommentListView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->u(Lcom/bbm/ui/activities/ViewChannelPostActivity;)I
move-result v1
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/el;
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const-string v2, "clipboard"
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/ClipboardManager;
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const v3, 0x7f0e01df
invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, v0, Lcom/bbm/d/el;->e:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const v3, 0x7f0e01e0
new-array v4, v4, [Ljava/lang/Object;
iget-object v0, v0, Lcom/bbm/d/el;->e:Ljava/lang/String;
aput-object v0, v4, v5
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0, v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_26
:sswitch_6e
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/el;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/el;->k:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:sswitch_88
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/el;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/el;->k:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:sswitch_a2
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
if-eqz v0, :cond_b3
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/a/k;->e()V
:cond_b3
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->j(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/views/ChannelPostCommentListView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->u(Lcom/bbm/ui/activities/ViewChannelPostActivity;)I
move-result v1
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/el;
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v1
if-eqz v1, :cond_e6
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->u(Lcom/bbm/ui/activities/ViewChannelPostActivity;)I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;I)V
:cond_e6
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v1
iget-boolean v1, v1, Lcom/bbm/d/ec;->q:Z
if-nez v1, :cond_26
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, v0, Lcom/bbm/d/el;->k:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/lang/String;)V
goto/16 :goto_26
:sswitch_f9
iget-object v0, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/el;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ajd;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Lcom/bbm/d/el;Lcom/bbm/d/ec;Ljava/lang/String;)V
goto/16 :goto_26
:sswitch_data_112
.sparse-switch
0x7f0a0031 -> :sswitch_f9
0x7f0a0035 -> :sswitch_27
0x7f0a0043 -> :sswitch_88
0x7f0a0044 -> :sswitch_a2
0x7f0a0047 -> :sswitch_6e
.end sparse-switch
.end method