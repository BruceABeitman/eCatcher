.class public final Lcom/instagram/android/feed/a/a/b;
.super Landroid/database/DataSetObserver;
.source "FeedItemViewableHelper.java"
.implements Lcom/instagram/feed/h/d;
.field private final a:Lcom/instagram/android/feed/a/a;
.field private final b:Landroid/os/Handler;
.field private final c:I
.field private final d:Z
.field private final e:Lcom/instagram/feed/h/a;
.field private f:Ljava/util/Set;
.field private final g:Landroid/graphics/Rect;
.field private final h:Landroid/graphics/Rect;
.field private final i:Landroid/graphics/Rect;
.method public constructor <init>(Lcom/instagram/android/feed/a/a;Landroid/util/DisplayMetrics;)V
.registers 5
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
new-instance v0, Lcom/instagram/feed/h/a;
invoke-direct {v0, p0}, Lcom/instagram/feed/h/a;-><init>(Lcom/instagram/feed/h/d;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;
iput-object p1, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->b:Landroid/os/Handler;
const/high16 v0, 0x4320
iget v1, p2, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/instagram/android/feed/a/a/b;->c:I
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ak()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/b;->d:Z
return-void
.end method
.method private a(Landroid/view/View;)I
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v2}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v3}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I
move-result v3
invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v4
invoke-virtual {p1}, Landroid/view/View;->getBottom()I
move-result v5
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;
iget-object v3, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;
invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v1
if-nez v1, :cond_3c
:goto_3b
return v0
:cond_3c
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
sub-int/2addr v0, v1
goto :goto_3b
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
return-object v0
.end method
.method private a(Lcom/instagram/feed/d/l;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/a/d;
invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/d;->a(Lcom/instagram/feed/d/l;)V
goto :goto_6
:cond_16
return-void
.end method
.method private a(Lcom/instagram/feed/d/l;I)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/a/d;
invoke-interface {v0, p1, p2}, Lcom/instagram/android/feed/a/a/d;->a(Lcom/instagram/feed/d/l;I)V
goto :goto_6
:cond_16
return-void
.end method
.method private a(I)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/a;->c(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/a/b;->a(Landroid/view/View;)I
move-result v0
iget v1, p0, Lcom/instagram/android/feed/a/a/b;->c:I
if-lt v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/feed/h/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;
return-object v0
.end method
.method private b(Lcom/instagram/feed/d/l;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/a/d;
invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/d;->b(Lcom/instagram/feed/d/l;)V
goto :goto_6
:cond_16
return-void
.end method
.method private b(Lcom/instagram/feed/d/l;I)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/a/d;
invoke-interface {v0, p1, p2}, Lcom/instagram/android/feed/a/a/d;->b(Lcom/instagram/feed/d/l;I)V
goto :goto_6
:cond_16
return-void
.end method
.method private b(I)Z
.registers 3
packed-switch p1, :pswitch_data_a
:pswitch_3
const/4 v0, 0x0
:goto_4
return v0
:pswitch_5
const/4 v0, 0x1
goto :goto_4
:pswitch_7
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/b;->d:Z
goto :goto_4
:pswitch_data_a
.packed-switch 0x0
:pswitch_5
:pswitch_7
:pswitch_3
:pswitch_5
.end packed-switch
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->b:Landroid/os/Handler;
new-instance v1, Lcom/instagram/android/feed/a/a/c;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/c;-><init>(Lcom/instagram/android/feed/a/a/b;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private static c(I)Z
.registers 2
const/4 v0, 0x3
if-ne p0, v0, :cond_5
const/4 v0, 0x1
:goto_4
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method private d()I
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
const/4 v1, 0x0
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method private e()I
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;
invoke-virtual {v0}, Lcom/instagram/feed/h/a;->a()V
goto :goto_c
.end method
.method public final a(Lcom/instagram/android/feed/a/a/d;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/instagram/feed/h/e;)V
.registers 9
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/b;->d()I
move-result v0
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/b;->e()I
move-result v3
move v2, v0
:goto_9
if-gt v2, v3, :cond_5e
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I
move-result v1
invoke-direct {p0, v1}, Lcom/instagram/android/feed/a/a/b;->b(I)Z
move-result v0
if-eqz v0, :cond_5a
const/4 v0, 0x1
if-ne v1, v0, :cond_3c
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a;->g(I)Ljava/util/List;
move-result-object v4
const/4 v0, 0x0
move v1, v0
:goto_22
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_5a
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v5
mul-int/lit8 v6, v2, 0x3
add-int/2addr v6, v1
invoke-interface {p1, v5, v0, v6}, Lcom/instagram/feed/h/e;->a(Ljava/lang/String;Ljava/lang/Object;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_22
:cond_3c
iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v4
invoke-interface {p1, v4, v0, v2}, Lcom/instagram/feed/h/e;->a(Ljava/lang/String;Ljava/lang/Object;I)V
invoke-static {v1}, Lcom/instagram/android/feed/a/a/b;->c(I)Z
move-result v1
if-nez v1, :cond_5a
invoke-direct {p0, v2}, Lcom/instagram/android/feed/a/a/b;->a(I)Z
move-result v1
if-eqz v1, :cond_5a
invoke-interface {p1, v4, v0, v2}, Lcom/instagram/feed/h/e;->b(Ljava/lang/String;Ljava/lang/Object;I)V
:cond_5a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_9
:cond_5e
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/d/l;
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Lcom/instagram/feed/d/l;
invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/feed/d/l;I)V
return-void
.end method
.method public final b()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/b;->c()V
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/d/l;
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Lcom/instagram/feed/d/l;
invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/feed/d/l;I)V
return-void
.end method
.method public final onChanged()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/b;->c()V
invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V
return-void
.end method
.method public final onInvalidated()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/b;->c()V
invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V
return-void
.end method