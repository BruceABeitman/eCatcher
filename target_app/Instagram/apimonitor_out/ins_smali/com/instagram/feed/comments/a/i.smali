.class public final Lcom/instagram/feed/comments/a/i;
.super Lcom/instagram/ui/d/a;
.source "CommentThreadAdapter.java"
.field private final a:Lcom/instagram/ui/widget/loadmore/c;
.field private final b:Lcom/instagram/feed/comments/a/a;
.field private c:Lcom/instagram/feed/d/l;
.field private d:Z
.field private e:Z
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;Lcom/instagram/feed/comments/a/g;)V
.registers 5
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/instagram/feed/comments/a/i;->a:Lcom/instagram/ui/widget/loadmore/c;
new-instance v0, Lcom/instagram/feed/comments/a/a;
invoke-direct {v0, p3}, Lcom/instagram/feed/comments/a/a;-><init>(Lcom/instagram/feed/comments/a/g;)V
iput-object v0, p0, Lcom/instagram/feed/comments/a/i;->b:Lcom/instagram/feed/comments/a/a;
return-void
.end method
.method private a(I)Lcom/instagram/feed/d/b;
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_b
iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z
if-nez v0, :cond_12
:cond_b
invoke-super {p0, p1}, Lcom/instagram/ui/d/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
:goto_11
return-object v0
:cond_12
add-int/lit8 v0, p1, -0x1
invoke-super {p0, v0}, Lcom/instagram/ui/d/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
goto :goto_11
.end method
.method public final a()I
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->d:Z
if-eqz v0, :cond_d
move v0, v1
:goto_7
iget-boolean v3, p0, Lcom/instagram/feed/comments/a/i;->e:Z
if-eqz v3, :cond_f
:goto_b
add-int/2addr v0, v1
return v0
:cond_d
move v0, v2
goto :goto_7
:cond_f
move v1, v2
goto :goto_b
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p2}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_1e
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "No item view type found"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
invoke-static {p1, p3}, Lcom/instagram/feed/comments/a/a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_13
return-object v0
:pswitch_14
invoke-static {p1, p3}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_19
invoke-static {p1, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_data_1e
.packed-switch 0x0
:pswitch_14
:pswitch_19
:pswitch_f
.end packed-switch
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 8
invoke-virtual {p0, p3}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_30
:goto_7
return-void
:pswitch_8
invoke-direct {p0, p3}, Lcom/instagram/feed/comments/a/i;->a(I)Lcom/instagram/feed/d/b;
move-result-object v2
iget-object v3, p0, Lcom/instagram/feed/comments/a/i;->b:Lcom/instagram/feed/comments/a/a;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/comments/a/h;
invoke-virtual {p0}, Lcom/instagram/feed/comments/a/i;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne p3, v1, :cond_21
const/4 v1, 0x1
:goto_1d
invoke-virtual {v3, p2, v0, v2, v1}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V
goto :goto_7
:cond_21
const/4 v1, 0x0
goto :goto_1d
:pswitch_23
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/loadmore/e;
iget-object v1, p0, Lcom/instagram/feed/comments/a/i;->a:Lcom/instagram/ui/widget/loadmore/c;
invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V
goto :goto_7
nop
:pswitch_data_30
.packed-switch 0x0
:pswitch_8
:pswitch_23
:pswitch_8
.end packed-switch
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 5
const/4 v1, 0x0
iput-object p1, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->m()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->C()Lcom/instagram/feed/d/e;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v2, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_1d
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_3c
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->i()I
move-result v0
sget v2, Lcom/instagram/feed/d/d;->b:I
if-ne v0, v2, :cond_3c
const/4 v0, 0x1
:goto_36
iput-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->d:Z
invoke-virtual {p0}, Lcom/instagram/feed/comments/a/i;->notifyDataSetChanged()V
return-void
:cond_3c
move v0, v1
goto :goto_36
.end method
.method public final getCount()I
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_c
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/feed/comments/a/i;->a(I)Lcom/instagram/feed/d/b;
move-result-object v0
return-object v0
.end method
.method public final getItemViewType(I)I
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z
if-eqz v1, :cond_9
if-nez p1, :cond_9
const/4 v0, 0x2
:goto_8
:cond_8
return v0
:cond_9
iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->e:Z
if-eqz v1, :cond_19
iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z
if-nez v1, :cond_13
if-eqz p1, :cond_8
:cond_13
iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z
if-eqz v1, :cond_19
if-eq p1, v0, :cond_8
:cond_19
const/4 v0, 0x0
goto :goto_8
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method
.method public final notifyDataSetChanged()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->a()V
:cond_9
invoke-super {p0}, Lcom/instagram/ui/d/a;->notifyDataSetChanged()V
return-void
.end method
.method public final notifyDataSetInvalidated()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->a()V
:cond_9
invoke-super {p0}, Lcom/instagram/ui/d/a;->notifyDataSetInvalidated()V
return-void
.end method