.class final Lcom/bbm/ui/cz;
.super Lcom/bbm/ui/CustomView;
.source "IncrementalListAdapter.java"
.field public a:I
.field protected b:Z
.field public c:Z
.field  d:J
.field  e:Z
.field  f:Lcom/google/b/a/l;
.field final synthetic g:Lcom/bbm/ui/ct;
.field private h:I
.field private i:I
.field private j:I
.field private final k:Ljava/lang/Runnable;
.field private l:Lcom/google/b/a/l;
.method public constructor <init>(Lcom/bbm/ui/ct;Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/cz;-><init>(Lcom/bbm/ui/ct;Landroid/content/Context;C)V
return-void
.end method
.method private constructor <init>(Lcom/bbm/ui/ct;Landroid/content/Context;B)V
.registers 7
const/16 v2, 0x40
const/4 v1, 0x0
iput-object p1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
const/4 v0, 0x0
invoke-direct {p0, p2, v0, v1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/cz;->j:I
new-instance v0, Lcom/bbm/ui/da;
invoke-direct {v0, p0}, Lcom/bbm/ui/da;-><init>(Lcom/bbm/ui/cz;)V
iput-object v0, p0, Lcom/bbm/ui/cz;->k:Ljava/lang/Runnable;
iput-boolean v1, p0, Lcom/bbm/ui/cz;->c:Z
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/bbm/ui/cz;->d:J
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
iget v0, p1, Lcom/bbm/ui/ct;->b:I
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/bbm/ui/cz;->h:I
iget v0, p1, Lcom/bbm/ui/ct;->c:I
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/bbm/ui/cz;->i:I
return-void
.end method
.method private constructor <init>(Lcom/bbm/ui/ct;Landroid/content/Context;C)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/cz;-><init>(Lcom/bbm/ui/ct;Landroid/content/Context;B)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/cz;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/cz;->i:I
return p1
.end method
.method static synthetic a(Lcom/bbm/ui/cz;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/cz;->d()V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/cz;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/cz;->h:I
return p1
.end method
.method public static b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
.registers 4
const v2, 0x7f0a001d
invoke-virtual {p0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/cy;
if-nez v1, :cond_1f
new-instance v1, Lcom/bbm/ui/cy;
invoke-direct {v1}, Lcom/bbm/ui/cy;-><init>()V
invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
:cond_1f
:goto_1f
return-object v1
:cond_20
new-instance v1, Lcom/bbm/ui/cy;
invoke-direct {v1}, Lcom/bbm/ui/cy;-><init>()V
goto :goto_1f
.end method
.method static synthetic b(Lcom/bbm/ui/cz;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-nez v0, :cond_46
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->i(Lcom/bbm/ui/ct;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->i(Lcom/bbm/ui/ct;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cx;
invoke-interface {v0, p0}, Lcom/bbm/ui/cx;->a(Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
iget-object v1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
iget-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v1, v0, p0}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/ct;Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/cz;->addView(Landroid/view/View;I)V
invoke-direct {p0}, Lcom/bbm/ui/cz;->e()V
:cond_46
return-void
.end method
.method private d()V
.registers 8
const/high16 v1, 0x3f80
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-static {v0}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/ui/cy;->a()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->j(Lcom/bbm/ui/ct;)J
move-result-wide v3
long-to-float v0, v3
const/4 v3, 0x0
cmpl-float v0, v0, v3
if-nez v0, :cond_27
move v0, v1
:goto_1b
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(F)V
cmpl-float v0, v0, v1
if-ltz v0, :cond_44
const-wide/16 v0, -0x1
iput-wide v0, v2, Lcom/bbm/ui/cy;->c:J
:goto_26
:cond_26
return-void
:cond_27
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
iget-wide v5, v2, Lcom/bbm/ui/cy;->c:J
sub-long/2addr v3, v5
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->j(Lcom/bbm/ui/ct;)J
move-result-wide v5
cmp-long v0, v3, v5
if-ltz v0, :cond_3a
move v0, v1
goto :goto_1b
:cond_3a
long-to-float v0, v3
iget-object v3, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v3}, Lcom/bbm/ui/ct;->j(Lcom/bbm/ui/ct;)J
move-result-wide v3
long-to-float v3, v3
div-float/2addr v0, v3
goto :goto_1b
:cond_44
iget-boolean v0, p0, Lcom/bbm/ui/cz;->b:Z
if-nez v0, :cond_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/cz;->b:Z
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->c(Lcom/bbm/ui/ct;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/cz;->k:Ljava/lang/Runnable;
const-wide/16 v2, 0x10
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_26
.end method
.method private e()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-static {v0}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/cy;->a()Z
move-result v0
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/bbm/ui/cz;->d()V
:goto_f
return-void
:cond_10
const/high16 v0, 0x3f80
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(F)V
goto :goto_f
.end method
.method public final a()V
.registers 14
const/4 v4, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
iget v2, p0, Lcom/bbm/ui/cz;->a:I
if-gt v0, v2, :cond_13
iput-boolean v4, p0, Lcom/bbm/ui/cz;->e:Z
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v0
iget v2, p0, Lcom/bbm/ui/cz;->a:I
invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v5
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_144
iget v2, p0, Lcom/bbm/ui/cz;->j:I
if-eq v5, v2, :cond_144
iget v2, p0, Lcom/bbm/ui/cz;->j:I
const/4 v3, -0x1
if-eq v2, v3, :cond_44
iget-object v2, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v2}, Lcom/bbm/ui/ct;->d(Lcom/bbm/ui/ct;)Lcom/bbm/ui/u;
move-result-object v2
iget v3, p0, Lcom/bbm/ui/cz;->j:I
iget-wide v6, p0, Lcom/bbm/ui/cz;->d:J
invoke-virtual {v2, v3, v6, v7, v0}, Lcom/bbm/ui/u;->a(IJLandroid/view/View;)V
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->a()V
:cond_44
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(Lcom/google/b/a/l;)V
move-object v2, v1
move-object v0, v1
:goto_4d
iget-object v3, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v3}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v3
iget v6, p0, Lcom/bbm/ui/cz;->a:I
invoke-interface {v3, v6}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v6
if-nez v0, :cond_141
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->d(Lcom/bbm/ui/ct;)Lcom/bbm/ui/u;
move-result-object v0
iget-object v0, v0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;
invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_d9
:goto_6b
:cond_6b
invoke-static {v1}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
invoke-static {v0}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v8
iget-object v9, v8, Lcom/bbm/ui/cy;->a:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
iget v3, p0, Lcom/bbm/ui/cz;->a:I
invoke-virtual {v0, v3}, Lcom/bbm/ui/ct;->getItem(I)Ljava/lang/Object;
move-result-object v10
iget-wide v11, v8, Lcom/bbm/ui/cy;->b:J
if-eqz v1, :cond_137
const/4 v0, 0x1
move v3, v0
:goto_83
if-eqz v1, :cond_91
cmp-long v0, v11, v6
if-nez v0, :cond_91
invoke-static {v9, v10}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_91
if-nez v10, :cond_13a
:cond_91
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v0
iget v9, p0, Lcom/bbm/ui/cz;->a:I
invoke-interface {v0, v9, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
if-eq v1, v0, :cond_a4
iget-object v1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v1, v0, p0}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/ct;Landroid/view/View;Landroid/view/View;)V
:cond_a4
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v1
invoke-static {v1}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v1
iget-wide v8, v8, Lcom/bbm/ui/cy;->c:J
iput-wide v8, v1, Lcom/bbm/ui/cy;->c:J
iput-object v10, v1, Lcom/bbm/ui/cy;->a:Ljava/lang/Object;
iput-wide v6, v1, Lcom/bbm/ui/cy;->b:J
iget-object v1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v1}, Lcom/bbm/ui/ct;->g(Lcom/bbm/ui/ct;)I
move-object v1, v0
:goto_ba
if-eq v1, v2, :cond_d1
if-eqz v2, :cond_c5
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(Lcom/google/b/a/l;)V
:cond_c5
invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(Lcom/google/b/a/l;)V
if-nez v3, :cond_d1
invoke-virtual {p0}, Lcom/bbm/ui/cz;->b()V
:cond_d1
iput-wide v6, p0, Lcom/bbm/ui/cz;->d:J
iput v5, p0, Lcom/bbm/ui/cz;->j:I
iput-boolean v4, p0, Lcom/bbm/ui/cz;->e:Z
goto/16 :goto_12
:cond_d9
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/v;
if-eqz v0, :cond_6b
iget-object v1, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
if-nez v1, :cond_6b
iget-object v3, v0, Lcom/bbm/ui/v;->a:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-nez v3, :cond_10a
iget-object v1, v0, Lcom/bbm/ui/v;->a:Ljava/util/ArrayList;
iget-object v0, v0, Lcom/bbm/ui/v;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
move-object v1, v0
goto/16 :goto_6b
:cond_10a
if-nez v1, :cond_6b
iget-object v3, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
move-result v3
if-nez v3, :cond_6b
iget-object v1, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v8
iget-object v0, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
move-object v1, v0
goto/16 :goto_6b
:cond_137
move v3, v4
goto/16 :goto_83
:cond_13a
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->h(Lcom/bbm/ui/ct;)I
goto/16 :goto_ba
:cond_141
move-object v1, v0
goto/16 :goto_6b
:cond_144
move-object v2, v0
goto/16 :goto_4d
.end method
.method public final a(F)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_11
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v0, p1}, Lcom/bbm/ui/ct;->a(Landroid/view/View;F)V
:cond_11
iget-object v0, p0, Lcom/bbm/ui/cz;->l:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_25
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/high16 v1, 0x3f80
sub-float/2addr v1, p1
invoke-static {v0, v1}, Lcom/bbm/ui/ct;->a(Landroid/view/View;F)V
:cond_25
return-void
.end method
.method public final a(Lcom/google/b/a/l;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {p1, v0}, Lcom/google/b/a/l;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->removeView(Landroid/view/View;)V
:cond_1c
iput-object p1, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/bbm/ui/cz;->isActivated()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->addView(Landroid/view/View;)V
:cond_38
invoke-direct {p0}, Lcom/bbm/ui/cz;->e()V
goto :goto_8
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-static {v0}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iput-wide v1, v0, Lcom/bbm/ui/cy;->c:J
invoke-direct {p0}, Lcom/bbm/ui/cz;->d()V
return-void
.end method
.method public final c()V
.registers 8
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_3c
iget v1, p0, Lcom/bbm/ui/cz;->j:I
const/4 v3, -0x1
if-eq v1, v3, :cond_3c
iget v1, p0, Lcom/bbm/ui/cz;->a:I
iget-object v3, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v3}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v3
invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
if-lt v1, v3, :cond_3d
move v1, v2
:goto_1f
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v1}, Lcom/bbm/ui/ct;->d(Lcom/bbm/ui/ct;)Lcom/bbm/ui/u;
move-result-object v1
iget v3, p0, Lcom/bbm/ui/cz;->j:I
iget-wide v4, p0, Lcom/bbm/ui/cz;->d:J
invoke-virtual {v1, v3, v4, v5, v0}, Lcom/bbm/ui/u;->a(IJLandroid/view/View;)V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->a(Lcom/google/b/a/l;)V
iput-boolean v2, p0, Lcom/bbm/ui/cz;->e:Z
iget-object v0, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->a()V
:cond_3c
return-void
:cond_3d
iget-object v1, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v1}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v1
iget v3, p0, Lcom/bbm/ui/cz;->a:I
invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v1
iget-object v3, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v3}, Lcom/bbm/ui/ct;->f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
move-result-object v3
iget v4, p0, Lcom/bbm/ui/cz;->a:I
invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v3
iget v5, p0, Lcom/bbm/ui/cz;->j:I
if-ne v5, v1, :cond_5f
iget-wide v5, p0, Lcom/bbm/ui/cz;->d:J
cmp-long v1, v5, v3
if-eqz v1, :cond_61
:cond_5f
move v1, v2
goto :goto_1f
:cond_61
const/4 v1, 0x0
goto :goto_1f
.end method
.method protected final onLayout(ZIIII)V
.registers 12
const/4 v1, 0x0
invoke-super/range {p0 .. p5}, Lcom/bbm/ui/CustomView;->onLayout(ZIIII)V
sub-int v2, p4, p2
sub-int v3, p5, p3
invoke-virtual {p0}, Lcom/bbm/ui/cz;->getChildCount()I
move-result v4
move v0, v1
:goto_d
if-ge v0, v4, :cond_19
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_19
return-void
.end method
.method protected final onMeasure(II)V
.registers 6
invoke-virtual {p0}, Lcom/bbm/ui/cz;->getChildCount()I
move-result v1
if-nez v1, :cond_15
iget v0, p0, Lcom/bbm/ui/cz;->h:I
invoke-static {v0, p1}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v0
iget v2, p0, Lcom/bbm/ui/cz;->i:I
invoke-static {v2, p2}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/bbm/ui/cz;->setMeasuredDimension(II)V
:cond_15
const/4 v0, 0x0
:goto_16
if-ge v0, v1, :cond_22
invoke-virtual {p0, v0}, Lcom/bbm/ui/cz;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_22
iget-object v0, p0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-nez v1, :cond_3a
iget v0, p0, Lcom/bbm/ui/cz;->h:I
invoke-static {v0, p1}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v0
iget v1, p0, Lcom/bbm/ui/cz;->i:I
invoke-static {v1, p2}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/cz;->setMeasuredDimension(II)V
:goto_39
return-void
:cond_3a
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
iget-object v2, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
iput v1, v2, Lcom/bbm/ui/ct;->b:I
iget-object v2, p0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
iput v0, v2, Lcom/bbm/ui/ct;->c:I
invoke-static {v1, p1}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v1
invoke-static {v0, p2}, Lcom/bbm/ui/cz;->getDefaultSize(II)I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/cz;->setMeasuredDimension(II)V
goto :goto_39
.end method