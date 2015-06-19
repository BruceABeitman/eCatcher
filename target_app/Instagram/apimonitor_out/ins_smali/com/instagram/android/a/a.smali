.class public final Lcom/instagram/android/a/a;
.super Lcom/instagram/ui/d/a;
.source "FilterHashTagsAndNamesAdapter.java"
.implements Landroid/widget/Filterable;
.field private a:Lcom/instagram/android/a/a/a;
.field private b:Lcom/instagram/feed/d/l;
.field private c:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Lcom/instagram/android/a/a;->l:Landroid/content/Context;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;
return-void
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0, p2}, Lcom/instagram/android/a/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_14
const/4 v0, 0x0
:goto_8
return-object v0
:pswitch_9
invoke-static {p1}, Lcom/instagram/android/a/b/a;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_8
:pswitch_e
invoke-static {p1}, Lcom/instagram/android/a/b/c;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_8
nop
:pswitch_data_14
.packed-switch 0x0
:pswitch_9
:pswitch_e
.end packed-switch
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 6
invoke-virtual {p0, p3}, Lcom/instagram/android/a/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_2c
:goto_7
return-void
:pswitch_8
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/b/b;
iget-object v1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Lcom/instagram/android/a/b/a;->a(Lcom/instagram/android/a/b/b;Ljava/lang/String;)V
goto :goto_7
:pswitch_1a
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/b/d;
iget-object v1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/user/c/a;
invoke-static {v0, v1}, Lcom/instagram/android/a/b/c;->a(Lcom/instagram/android/a/b/d;Lcom/instagram/user/c/a;)V
goto :goto_7
:pswitch_data_2c
.packed-switch 0x0
:pswitch_8
:pswitch_1a
.end packed-switch
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final getFilter()Landroid/widget/Filter;
.registers 3
iget-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;
if-eqz v0, :cond_14
new-instance v0, Lcom/instagram/android/a/a/a;
iget-object v1, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;
invoke-direct {v0, p0, v1}, Lcom/instagram/android/a/a/a;-><init>(Lcom/instagram/android/a/a;Lcom/instagram/feed/d/l;)V
iput-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;
:goto_11
:cond_11
iget-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;
return-object v0
:cond_14
new-instance v0, Lcom/instagram/android/a/a/a;
invoke-direct {v0, p0}, Lcom/instagram/android/a/a/a;-><init>(Lcom/instagram/android/a/a;)V
iput-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;
goto :goto_11
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/android/a/a;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_1e
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "#"
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1d
return-object v0
:cond_1e
const/4 v1, 0x1
if-ne v0, v1, :cond_3d
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "@"
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_3d
const-string v0, ""
goto :goto_1d
.end method
.method public final getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
const/4 v0, 0x1
goto :goto_b
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method