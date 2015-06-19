.class final Lcom/instagram/android/directshare/d/a;
.super Landroid/widget/BaseAdapter;
.source "DirectSharePermalinkAdapter.java"
.field private final a:Landroid/content/Context;
.field private final b:Lcom/instagram/android/directshare/d/b;
.field private final c:Lcom/instagram/android/feed/a/a/ae;
.field private final d:Lcom/instagram/android/feed/a/b/x;
.field private final e:Lcom/instagram/feed/comments/a/a;
.field private f:Lcom/instagram/feed/d/l;
.field private g:Lcom/instagram/model/b/a;
.field private h:Ljava/util/List;
.field private i:Ljava/util/List;
.method constructor <init>(Landroid/content/Context;Lcom/instagram/android/directshare/d/b;Lcom/instagram/android/feed/a/a/ae;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
iput-object p1, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/directshare/d/a;->b:Lcom/instagram/android/directshare/d/b;
iput-object p3, p0, Lcom/instagram/android/directshare/d/a;->c:Lcom/instagram/android/feed/a/a/ae;
new-instance v0, Lcom/instagram/android/feed/a/b/x;
invoke-direct {v0, p1, p2}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V
iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;
new-instance v0, Lcom/instagram/feed/comments/a/a;
invoke-direct {v0, p2}, Lcom/instagram/feed/comments/a/a;-><init>(Lcom/instagram/feed/comments/a/g;)V
iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->e:Lcom/instagram/feed/comments/a/a;
return-void
.end method
.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_1e
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;
invoke-static {v0, p2}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_f
return-object v0
:pswitch_10
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;
invoke-static {v0, p2}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_f
:pswitch_17
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;
invoke-static {v0, p2}, Lcom/instagram/android/directshare/d/aj;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_f
:pswitch_data_1e
.packed-switch 0x1
:pswitch_17
:pswitch_10
.end packed-switch
.end method
.method private a(ILandroid/view/View;)V
.registers 9
const/4 v3, 0x0
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_4a
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/feed/a/b/ac;
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;
iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;
iget-object v4, p0, Lcom/instagram/android/directshare/d/a;->c:Lcom/instagram/android/feed/a/a/ae;
iget-object v5, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;
invoke-interface {v4, p1, v5}, Lcom/instagram/android/feed/a/a/ae;->a(ILcom/instagram/feed/d/l;)I
move-result v5
move v4, v3
invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V
:goto_1e
return-void
:pswitch_1f
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
add-int/lit8 v1, p1, -0x2
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->e:Lcom/instagram/feed/comments/a/a;
iget-object v4, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/feed/comments/a/h;
invoke-virtual {p0}, Lcom/instagram/android/directshare/d/a;->getCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
if-ne p1, v5, :cond_3c
const/4 v3, 0x1
:cond_3c
invoke-virtual {v2, v4, v1, v0, v3}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V
goto :goto_1e
:pswitch_40
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->g:Lcom/instagram/model/b/a;
iget-object v1, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;
iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->b:Lcom/instagram/android/directshare/d/b;
invoke-static {p2, v0, v1, v2}, Lcom/instagram/android/directshare/d/aj;->a(Landroid/view/View;Lcom/instagram/model/b/a;Ljava/util/List;Lcom/instagram/android/directshare/d/am;)V
goto :goto_1e
:pswitch_data_4a
.packed-switch 0x1
:pswitch_40
:pswitch_1f
.end packed-switch
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->aj()Lcom/instagram/model/b/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->g:Lcom/instagram/model/b/a;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ak()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->C()Lcom/instagram/feed/d/e;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/instagram/android/directshare/d/a;->notifyDataSetChanged()V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x2
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_16
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;
:goto_9
return-object v0
:pswitch_a
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;
add-int/lit8 v1, p1, -0x2
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
goto :goto_9
:pswitch_13
iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;
goto :goto_9
:pswitch_data_16
.packed-switch 0x1
:pswitch_13
:pswitch_a
.end packed-switch
.end method
.method public final getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 3
const/4 v0, 0x1
if-le p1, v0, :cond_5
const/4 v0, 0x2
:goto_4
:cond_4
return v0
:cond_5
if-eq p1, v0, :cond_4
const/4 v0, 0x0
goto :goto_4
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 4
if-nez p2, :cond_6
invoke-direct {p0, p1, p3}, Lcom/instagram/android/directshare/d/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_6
invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/a;->a(ILandroid/view/View;)V
return-object p2
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method