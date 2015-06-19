.class public Lcom/instagram/android/feed/a/a;
.super Landroid/widget/BaseAdapter;
.source "FeedAdapter.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/android/feed/a/a/n;
.implements Lcom/instagram/android/feed/a/a/o;
.implements Lcom/instagram/android/feed/a/b/f;
.implements Lcom/instagram/android/feed/ui/d;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/feed/survey/g;
.field protected a:Lcom/instagram/android/fragment/a;
.field protected final b:Landroid/support/v4/app/an;
.field protected final c:Landroid/support/v4/app/s;
.field protected final d:Landroid/content/Context;
.field private e:Ljava/util/Set;
.field private f:Ljava/util/Set;
.field private final g:Lcom/instagram/android/feed/a/a/e;
.field private final h:Lcom/instagram/android/feed/a/a/f;
.field private final i:Lcom/instagram/feed/b/a;
.field private final j:Lcom/instagram/android/feed/a/a/b;
.field private final k:Lcom/instagram/android/feed/a/a/j;
.field private l:Landroid/widget/ListView;
.field private m:Lcom/instagram/android/feed/ui/StickyHeaderListView;
.field private n:I
.field private o:I
.field private p:Z
.field private q:Lcom/instagram/android/feed/a/g;
.field private r:Lcom/instagram/android/feed/a/f;
.field private s:Lcom/instagram/android/feed/a/b/a;
.field private t:I
.field private u:I
.field private v:Landroid/os/Handler;
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I
new-instance v0, Lcom/instagram/android/feed/a/g;
invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/g;-><init>(Lcom/instagram/android/feed/a/a;B)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
sget v0, Lcom/instagram/android/feed/a/h;->a:I
iput v0, p0, Lcom/instagram/android/feed/a/a;->t:I
iput v1, p0, Lcom/instagram/android/feed/a/a;->u:I
new-instance v0, Lcom/instagram/android/feed/a/b;
invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/b;-><init>(Lcom/instagram/android/feed/a/a;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
iput-object p1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
iput p2, p0, Lcom/instagram/android/feed/a/a;->t:I
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->y()Landroid/support/v4/app/an;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->b:Landroid/support/v4/app/an;
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->c:Landroid/support/v4/app/s;
new-instance v0, Lcom/instagram/android/feed/a/a/e;
invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/feed/a/a/e;-><init>(Lcom/instagram/android/feed/a/a;Lcom/instagram/common/e/b/h;Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->g:Lcom/instagram/android/feed/a/a/e;
new-instance v0, Lcom/instagram/android/feed/a/a/f;
invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/f;-><init>(Lcom/instagram/android/feed/a/a;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
new-instance v0, Lcom/instagram/feed/b/a;
invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->i:Lcom/instagram/feed/b/a;
new-instance v0, Lcom/instagram/android/feed/a/a/j;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
iget-object v2, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/a/a/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/o;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/n;)V
new-instance v0, Lcom/instagram/android/feed/a/b/a;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-direct {v0, v1, p0}, Lcom/instagram/android/feed/a/b/a;-><init>(Lcom/instagram/android/fragment/a;Lcom/instagram/android/feed/a/b/f;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/b/a;
new-instance v0, Lcom/instagram/android/feed/a/a/b;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a/b;-><init>(Lcom/instagram/android/feed/a/a;Landroid/util/DisplayMetrics;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
new-instance v1, Lcom/instagram/android/feed/a/c;
invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/a/c;-><init>(Lcom/instagram/android/feed/a/a;I)V
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/d;)V
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V
return-void
.end method
.method public static a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
.registers 4
invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->row_feed_photo_imageview:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/feed/widget/ConstrainedProgressImageView;
return-object v0
.end method
.method public static a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/av;->key_media_id:I
invoke-virtual {p0, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method private a(Ljava/util/List;Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0, p1, p2}, Lcom/instagram/android/feed/a/g;->a(Ljava/util/List;Z)V
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V
return-void
.end method
.method private static a(Landroid/view/View;Landroid/view/View;)Z
.registers 8
const/4 v0, 0x0
sget v1, Lcom/facebook/av;->media_group:I
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v2
int-to-double v2, v2
const-wide v4, 0x3fe999999999999aL
mul-double/2addr v2, v4
double-to-int v2, v2
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v1}, Landroid/view/View;->getBottom()I
move-result v4
add-int/2addr v3, v4
if-le v3, v2, :cond_9
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v3
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v1
add-int/2addr v1, v4
sub-int v1, v3, v1
if-le v1, v2, :cond_9
const/4 v0, 0x1
goto :goto_9
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a;)Z
.registers 2
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->u()Z
move-result v0
return v0
.end method
.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->V()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p1}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->a()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/f;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/feed/a/a;)I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a;->t:I
return v0
.end method
.method protected static f(I)I
.registers 2
add-int/lit8 v0, p0, 0x4
return v0
.end method
.method private h(I)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v0
if-ge p1, v0, :cond_8
if-gez p1, :cond_47
:cond_8
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid position "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", size is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", child count is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", offset position is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_47
return-void
.end method
.method private i(I)Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private j(I)I
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I
move-result v0
sub-int v0, p1, v0
return v0
.end method
.method private s()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/survey/a;
iget v2, p0, Lcom/instagram/android/feed/a/a;->u:I
invoke-interface {v0, v2}, Lcom/instagram/feed/survey/a;->a(I)V
goto :goto_6
:cond_18
return-void
.end method
.method private t()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method private u()Z
.registers 11
const/4 v3, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/creation/c/a;->b()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_12
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->p:Z
if-eqz v0, :cond_14
:cond_12
move v0, v2
:goto_13
return v0
:cond_14
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v5
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->a()Z
move-result v0
if-eqz v0, :cond_7a
invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I
move-result v6
move v4, v2
:goto_25
if-ge v4, v6, :cond_7a
invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-static {v5, v4}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
move-result-object v0
if-eqz v0, :cond_76
invoke-virtual {v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->a()Z
move-result v1
if-eqz v1, :cond_76
sget v1, Lcom/facebook/av;->key_list_position:I
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/feed/d/l;
if-eqz v1, :cond_76
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->g()Z
move-result v8
if-eqz v8, :cond_76
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v8
iget v9, p0, Lcom/instagram/android/feed/a/a;->n:I
if-eq v8, v9, :cond_76
invoke-static {v5, v7}, Lcom/instagram/android/feed/a/a;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v8
if-eqz v8, :cond_76
sget v2, Lcom/facebook/av;->media_group:I
invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/android/feed/a/b/ac;
iget-object v4, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v1, v2, v0, v3}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V
move v0, v3
goto :goto_13
:cond_76
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_25
:cond_7a
move v0, v2
goto :goto_13
.end method
.method private v()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I
move-result v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v1}, Lcom/instagram/android/feed/a/g;->c()I
move-result v1
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/android/feed/a/a;->o:I
return-void
.end method
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
if-nez p2, :cond_8
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-static {v0, p3}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_8
iget-object v2, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/b/a;
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/b/r;
invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/feed/d/l;
invoke-virtual {v2, v0, v1}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V
return-object p2
.end method
.method protected a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_28
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Unhandled view type"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/b/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/a;->a()Landroid/view/View;
move-result-object v0
:goto_15
return-object v0
:pswitch_16
new-instance v0, Landroid/view/View;
invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
goto :goto_15
:pswitch_1c
const/4 v0, 0x3
invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;
move-result-object v0
goto :goto_15
:pswitch_22
invoke-static {p1, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_15
nop
:pswitch_data_28
.packed-switch 0x0
:pswitch_f
:pswitch_1c
:pswitch_22
:pswitch_16
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)Landroid/view/View;
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v2
if-nez v2, :cond_9
move-object v0, v1
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
:goto_a
invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I
move-result v3
if-ge v0, v3, :cond_2a
invoke-static {v2, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
move-result-object v3
if-eqz v3, :cond_27
if-eqz p1, :cond_27
invoke-static {v3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_27
invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_8
:cond_27
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_2a
move-object v0, v1
goto :goto_8
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ac()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->m_()V
:cond_d
return-void
.end method
.method protected a(Landroid/content/Context;Landroid/view/View;I)V
.registers 10
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->p:Z
if-eqz v0, :cond_d
iput-boolean v3, p0, Lcom/instagram/android/feed/a/a;->p:Z
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_d
invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_78
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "View type unhandled"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/feed/d/l;
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->b()I
move-result v0
if-ne v0, p3, :cond_3b
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->c()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/instagram/feed/d/l;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3b
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->h()V
:cond_3b
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/b/a;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {v1, v2}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/feed/d/l;)Z
move-result v4
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v1, p3, v2}, Lcom/instagram/android/feed/a/a/j;->a(ILcom/instagram/feed/d/l;)I
move-result v5
move-object v1, p2
move v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/a;->a(Landroid/view/View;Lcom/instagram/feed/d/l;IZI)V
:goto_4e
:pswitch_4e
return-void
:pswitch_4f
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/b/w;
invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->g(I)Ljava/util/List;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x2
if-ne p3, v2, :cond_69
const/4 v2, 0x1
:goto_62
iget-object v5, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
move v4, p3
invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V
goto :goto_4e
:cond_69
move v2, v3
goto :goto_62
:pswitch_6b
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/loadmore/e;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V
goto :goto_4e
nop
:pswitch_data_78
.packed-switch 0x0
:pswitch_1c
:pswitch_4f
:pswitch_6b
:pswitch_4e
.end packed-switch
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
.registers 6
if-eqz p1, :cond_40
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->V()Z
move-result v0
if-eqz v0, :cond_2f
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {v0, p2}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/feed/d/l;)Z
move-result v0
if-nez v0, :cond_2f
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_2f
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->l()I
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/f;->a(Ljava/lang/String;)V
:cond_2f
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ab()Z
move-result v0
if-eqz v0, :cond_40
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->t()V
:cond_40
return-void
.end method
.method public final a(Lcom/instagram/android/feed/a/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/f;
return-void
.end method
.method public final a(Lcom/instagram/android/feed/a/i;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Z)V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
.registers 7
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_25
invoke-static {p1, p3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;
move-result-object v1
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
goto :goto_8
:cond_25
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/j;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
goto :goto_8
.end method
.method public final a(Lcom/instagram/feed/d/l;Landroid/view/View;I)V
.registers 11
new-instance v0, Lcom/instagram/android/feed/a/a/u;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
iget-object v2, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
move-object v3, p0
move-object v4, p2
move-object v5, p1
move v6, p3
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/feed/a/a/u;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/android/feed/a/a;Landroid/view/View;Lcom/instagram/feed/d/l;I)V
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/u;->a()V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;Z)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
if-eqz p2, :cond_e
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I
:cond_e
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, v0, p2}, Lcom/instagram/android/feed/a/a;->a(Ljava/util/List;Z)V
goto :goto_2
.end method
.method public final a(Lcom/instagram/feed/survey/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I
invoke-interface {p1, v0}, Lcom/instagram/feed/survey/a;->b(I)V
return-void
.end method
.method public final a(I)Z
.registers 3
invoke-static {}, Lcom/instagram/creation/c/a;->b()Z
move-result v0
if-eqz v0, :cond_c
iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I
if-eq p1, v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b()I
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_a
const/4 v0, 0x3
:goto_9
return v0
:cond_a
const/4 v0, 0x6
goto :goto_9
.end method
.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
.registers 12
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->b:Landroid/support/v4/app/an;
sget v4, Lcom/instagram/feed/d/o;->a:I
sget v5, Lcom/instagram/android/h/g;->b:I
iget-object v6, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
iget-object v7, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
move-object v2, p1
move v3, p2
invoke-static/range {v0 .. v7}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/aa;Lcom/instagram/feed/g/a;)V
invoke-static {p1, p3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v0
if-lez v0, :cond_2e
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;
move-result-object v1
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
:cond_2e
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
new-instance v1, Lcom/instagram/android/feed/a/e;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/e;-><init>(Lcom/instagram/android/feed/a/a;Lcom/instagram/feed/d/l;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final b(Lcom/instagram/feed/survey/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->b()V
invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->c(Ljava/util/List;)V
return-void
.end method
.method public final b(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected b(Lcom/instagram/feed/d/l;)Z
.registers 3
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->B()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-static {v0}, Lcom/instagram/android/feed/a/g;->b(Lcom/instagram/android/feed/a/g;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final c(I)Landroid/view/View;
.registers 7
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v3
if-nez v3, :cond_9
move-object v0, v2
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
move v1, v0
:goto_b
invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_2e
invoke-static {v3, v1}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
move-result-object v0
if-eqz v0, :cond_2a
sget v4, Lcom/facebook/av;->key_list_position:I
invoke-virtual {v0, v4}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne v0, p1, :cond_2a
invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_8
:cond_2a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_2e
move-object v0, v2
goto :goto_8
.end method
.method public final c()Lcom/instagram/android/fragment/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
return-object v0
.end method
.method public final c(Ljava/util/List;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/a/a;->a(Ljava/util/List;Z)V
return-void
.end method
.method public final d(I)Landroid/view/View;
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_17
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
:cond_17
return-object v0
.end method
.method public final d()V
.registers 4
iget v0, p0, Lcom/instagram/android/feed/a/a;->t:I
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_2a
sget v0, Lcom/instagram/android/feed/a/h;->b:I
move v1, v0
:goto_9
iput v1, p0, Lcom/instagram/android/feed/a/a;->t:I
sget v0, Lcom/instagram/android/feed/a/h;->b:I
if-ne v1, v0, :cond_14
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->h()V
:cond_14
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/i;
invoke-interface {v0, v1}, Lcom/instagram/android/feed/a/i;->a(I)V
goto :goto_1a
:cond_2a
sget v0, Lcom/instagram/android/feed/a/h;->a:I
move v1, v0
goto :goto_9
:cond_2e
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-static {v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/android/feed/a/g;)V
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V
return-void
.end method
.method public final e()Lcom/instagram/android/feed/a/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
return-object v0
.end method
.method public final e(I)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/instagram/creation/c/a;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_34
add-int/lit8 v0, p1, 0x1
move v1, v0
:goto_b
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v0
if-ge v1, v0, :cond_34
add-int/lit8 v0, p1, 0x15
if-ge v1, v0, :cond_34
invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_35
invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z
move-result v2
if-eqz v2, :cond_35
invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-virtual {v0, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/common/e/c/a;->a(Ljava/lang/String;)V
:cond_34
return-void
:cond_35
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
.end method
.method public final f()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;
if-nez v0, :cond_f
const v0, 0x102000a
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->d(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;
:cond_f
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;
return-object v0
.end method
.method public final g()Lcom/instagram/android/feed/ui/StickyHeaderListView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;
if-nez v0, :cond_e
sget v0, Lcom/facebook/av;->sticky_header_list:I
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->d(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;
iput-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;
:cond_e
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;
return-object v0
.end method
.method public final g(I)Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/g;->b(I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getCount()I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a;->o:I
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->h(I)V
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->i(I)Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/g;->a(I)Lcom/instagram/feed/d/l;
move-result-object v0
goto :goto_b
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->h(I)V
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->i(I)Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x2
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/instagram/android/feed/a/a;->t:I
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_21
invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ad()Z
move-result v0
if-eqz v0, :cond_1f
const/4 v0, 0x3
goto :goto_a
:cond_1f
const/4 v0, 0x0
goto :goto_a
:cond_21
const/4 v0, 0x1
goto :goto_a
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
if-nez p2, :cond_8
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-virtual {p0, v0, p1, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_8
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;
invoke-virtual {p0, v0, p2, p1}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V
return-object p2
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x4
return v0
.end method
.method public final h()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/f;->a()V
iput-object v1, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;
iput-object v1, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;
return-void
.end method
.method public final h_()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->d()V
return-void
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/b;->b()V
return-void
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->d()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public isEnabled(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final j()V
.registers 7
const/4 v3, -0x1
iput v3, p0, Lcom/instagram/android/feed/a/a;->n:I
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ab()Z
move-result v0
if-eqz v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v1
if-ne v1, v3, :cond_25
iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I
goto :goto_b
:cond_25
invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_2b
if-ge v1, v3, :cond_b
invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v4
invoke-static {v4, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_7c
invoke-static {v2, v1}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
move-result-object v4
if-eqz v4, :cond_7c
sget v0, Lcom/facebook/av;->key_list_position:I
invoke-virtual {v4, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I
sget v0, Lcom/facebook/av;->key_media_id:I
invoke-virtual {v4, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v5
invoke-virtual {v5, v0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_7c
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
if-eqz v0, :cond_7c
invoke-virtual {v4}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
sget v4, Lcom/instagram/android/widget/o;->d:I
invoke-virtual {v0, v4}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
:cond_7c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2b
.end method
.method public k()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final l()I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I
return v0
.end method
.method public final m()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->e()Z
move-result v0
return v0
.end method
.method public final n()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->p:Z
return v0
.end method
.method public notifyDataSetChanged()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->a()V
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a;->p:Z
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method public notifyDataSetInvalidated()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->a()V
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a;->p:Z
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method public final o()I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a;->t:I
return v0
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/a; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/b;->a()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/android/feed/a/a/f;->onScroll(Landroid/widget/AbsListView;III)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->i:Lcom/instagram/feed/b/a;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->a()Z
move-result v0
if-nez v0, :cond_30
if-lez p3, :cond_30
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->b()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->c(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_40
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->h()V
:goto_30
:cond_30
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->n()Z
move-result v1
if-nez v1, :cond_3f
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V
:cond_3f
const-string v1, " - Lcom/instagram/android/feed/a/a; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_40
sget v1, Lcom/facebook/av;->media_group:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getBottom()I
move-result v2
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v3
add-int/2addr v2, v3
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I
move-result v3
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
add-int/2addr v0, v4
sub-int v0, v3, v0
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
int-to-double v1, v1
const-wide v3, 0x3fd3333333333333L
mul-double/2addr v1, v3
double-to-int v1, v1
if-ge v0, v1, :cond_30
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->h()V
goto :goto_30
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/a; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, -0x1
iput p2, p0, Lcom/instagram/android/feed/a/a;->u:I
invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->s()V
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_19
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/f;
invoke-virtual {v0, p1, p2}, Lcom/instagram/android/feed/a/a/f;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->g:Lcom/instagram/android/feed/a/a/e;
invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/a/e;->a(Landroid/widget/AbsListView;)V
:cond_19
if-nez p2, :cond_41
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
const-wide/16 v1, 0xc8
invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:goto_22
iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I
if-eq v0, v3, :cond_40
iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v1
if-lt v0, v1, :cond_3e
iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v1
if-le v0, v1, :cond_40
:cond_3e
iput v3, p0, Lcom/instagram/android/feed/a/a;->n:I
:cond_40
const-string v1, " - Lcom/instagram/android/feed/a/a; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_41
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->v:Landroid/os/Handler;
invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V
goto :goto_22
.end method
.method public final p()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->q:Lcom/instagram/android/feed/a/g;
invoke-static {v0}, Lcom/instagram/android/feed/a/g;->c(Lcom/instagram/android/feed/a/g;)I
move-result v0
return v0
.end method
.method public final q()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->i()V
return-void
.end method
.method public final r()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->a()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method