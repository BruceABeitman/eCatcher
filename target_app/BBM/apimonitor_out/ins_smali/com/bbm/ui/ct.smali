.class public final Lcom/bbm/ui/ct;
.super Ljava/lang/Object;
.source "IncrementalListAdapter.java"
.implements Landroid/widget/ListAdapter;
.implements Lcom/bbm/j/y;
.field private A:Z
.field private B:Ljava/lang/reflect/Method;
.field private C:Ljava/lang/reflect/Method;
.field public a:J
.field public b:I
.field public c:I
.field public d:Z
.field  e:Lcom/google/b/a/l;
.field protected f:I
.field public g:Z
.field public h:I
.field private i:J
.field private j:Z
.field private k:Z
.field private l:I
.field private m:I
.field private n:I
.field private o:Ljava/lang/Runnable;
.field private final p:Landroid/database/DataSetObservable;
.field private final q:Landroid/os/Handler;
.field private r:Landroid/widget/ListAdapter;
.field private final s:Landroid/database/DataSetObserver;
.field private final t:Landroid/content/Context;
.field private final u:Ljava/util/LinkedList;
.field private v:Z
.field private final w:Ljava/lang/Runnable;
.field private x:Z
.field private final y:Ljava/util/Set;
.field private final z:Lcom/bbm/ui/u;
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
.registers 8
const/16 v4, 0x40
const/4 v3, 0x0
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x4b
iput-wide v0, p0, Lcom/bbm/ui/ct;->a:J
const-wide/16 v0, 0x11
iput-wide v0, p0, Lcom/bbm/ui/ct;->i:J
iput v4, p0, Lcom/bbm/ui/ct;->b:I
iput v4, p0, Lcom/bbm/ui/ct;->c:I
iput-boolean v2, p0, Lcom/bbm/ui/ct;->d:Z
iput-boolean v2, p0, Lcom/bbm/ui/ct;->j:Z
iput-boolean v2, p0, Lcom/bbm/ui/ct;->k:Z
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ct;->e:Lcom/google/b/a/l;
iput v3, p0, Lcom/bbm/ui/ct;->n:I
new-instance v0, Lcom/bbm/ui/cu;
invoke-direct {v0, p0}, Lcom/bbm/ui/cu;-><init>(Lcom/bbm/ui/ct;)V
iput-object v0, p0, Lcom/bbm/ui/ct;->o:Ljava/lang/Runnable;
new-instance v0, Landroid/database/DataSetObservable;
invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/ct;->p:Landroid/database/DataSetObservable;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/ct;->q:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/cv;
invoke-direct {v0, p0}, Lcom/bbm/ui/cv;-><init>(Lcom/bbm/ui/ct;)V
iput-object v0, p0, Lcom/bbm/ui/ct;->s:Landroid/database/DataSetObserver;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
new-instance v0, Lcom/bbm/ui/cw;
invoke-direct {v0, p0}, Lcom/bbm/ui/cw;-><init>(Lcom/bbm/ui/ct;)V
iput-object v0, p0, Lcom/bbm/ui/ct;->w:Ljava/lang/Runnable;
iput-boolean v3, p0, Lcom/bbm/ui/ct;->x:Z
iput-boolean v3, p0, Lcom/bbm/ui/ct;->g:Z
iput v2, p0, Lcom/bbm/ui/ct;->h:I
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
new-instance v0, Lcom/bbm/ui/u;
invoke-direct {v0}, Lcom/bbm/ui/u;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/ct;->z:Lcom/bbm/ui/u;
iput-boolean v2, p0, Lcom/bbm/ui/ct;->A:Z
iput-object p2, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/bbm/ui/ct;->s:Landroid/database/DataSetObserver;
invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iput-object p1, p0, Lcom/bbm/ui/ct;->t:Landroid/content/Context;
:try_start_72
const-class v0, Landroid/view/View;
const-string v1, "getLayoutDirection"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ct;->B:Ljava/lang/reflect/Method;
const-class v0, Landroid/view/View;
const-string v1, "setLayoutDirection"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ct;->C:Ljava/lang/reflect/Method;
:try_end_91
.catch Ljava/lang/NoSuchMethodException; {:try_start_72 .. :try_end_91} :catch_92
:goto_91
return-void
:catch_92
move-exception v0
goto :goto_91
.end method
.method static synthetic a(Lcom/bbm/ui/ct;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/ct;->n:I
return v0
.end method
.method static synthetic a(Lcom/bbm/ui/ct;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/ct;->n:I
return p1
.end method
.method public static a(Landroid/view/View;)Landroid/view/View;
.registers 3
instance-of v0, p0, Lcom/bbm/ui/cz;
if-eqz v0, :cond_16
move-object v0, p0
check-cast v0, Lcom/bbm/ui/cz;
iget-object v0, v0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
:goto_15
return-object v0
:cond_16
move-object v0, p0
goto :goto_15
.end method
.method static synthetic a(Landroid/view/View;F)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
const/high16 v1, 0x3f80
const v0, 0x38d1b717
cmpg-float v0, p1, v0
if-gez v0, :cond_13
const/4 v0, 0x4
invoke-static {p0, v0}, Lcom/bbm/ui/ct;->a(Landroid/view/View;I)V
invoke-virtual {p0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
:goto_12
return-void
:cond_13
invoke-static {p0, v2}, Lcom/bbm/ui/ct;->a(Landroid/view/View;I)V
const v0, 0x3f7ff972
cmpl-float v0, p1, v0
if-lez v0, :cond_21
invoke-virtual {p0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
goto :goto_12
:cond_21
new-instance v0, Landroid/graphics/ColorMatrix;
invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V
invoke-virtual {v0, v1, v1, v1, p1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
new-instance v1, Landroid/graphics/ColorMatrixColorFilter;
invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
const/4 v1, 0x2
invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
goto :goto_12
.end method
.method private static a(Landroid/view/View;I)V
.registers 3
invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, p1, :cond_9
invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
:cond_9
return-void
.end method
.method private a(Landroid/view/View;Landroid/view/View;)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/ct;->B:Ljava/lang/reflect/Method;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/bbm/ui/ct;->C:Ljava/lang/reflect/Method;
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
:try_start_a
iget-object v0, p0, Lcom/bbm/ui/ct;->B:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1e
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object v0, v1, v2
invoke-direct {p0, p1, v1}, Lcom/bbm/ui/ct;->a(Landroid/view/View;[Ljava/lang/Object;)V
goto :goto_9
:catch_1e
move-exception v0
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/ct;->B:Ljava/lang/reflect/Method;
goto :goto_9
.end method
.method private a(Landroid/view/View;[Ljava/lang/Object;)V
.registers 7
instance-of v0, p1, Landroid/view/ViewGroup;
if-eqz v0, :cond_18
move-object v0, p1
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
const/4 v1, 0x0
:goto_c
if-ge v1, v2, :cond_18
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-direct {p0, v3, p2}, Lcom/bbm/ui/ct;->a(Landroid/view/View;[Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_18
:try_start_18
iget-object v0, p0, Lcom/bbm/ui/ct;->C:Ljava/lang/reflect/Method;
invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/ct;->C:Ljava/lang/reflect/Method;
goto :goto_1d
.end method
.method static synthetic a(Lcom/bbm/ui/ct;Landroid/view/View;Landroid/view/View;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/ct;->a(Landroid/view/View;Landroid/view/View;)V
return-void
.end method
.method private a(Lcom/bbm/ui/cz;)V
.registers 4
iget-boolean v0, p1, Lcom/bbm/ui/cz;->c:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_b
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cz;
if-eq v0, p1, :cond_21
if-nez v0, :cond_b
:cond_21
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_b
:cond_25
const/4 v0, 0x0
iput-boolean v0, p1, Lcom/bbm/ui/cz;->c:Z
goto :goto_4
.end method
.method static synthetic b(Lcom/bbm/ui/ct;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->o:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/ct;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->q:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/ct;)Lcom/bbm/ui/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->z:Lcom/bbm/ui/u;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/ct;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/ct;->x:Z
return v0
.end method
.method static synthetic f(Lcom/bbm/ui/ct;)Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/ct;)I
.registers 3
iget v0, p0, Lcom/bbm/ui/ct;->l:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/bbm/ui/ct;->l:I
return v0
.end method
.method private g()V
.registers 5
iget-boolean v0, p0, Lcom/bbm/ui/ct;->v:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/ct;->v:Z
iget-object v0, p0, Lcom/bbm/ui/ct;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/ct;->w:Ljava/lang/Runnable;
iget-wide v2, p0, Lcom/bbm/ui/ct;->i:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_4
.end method
.method static synthetic h(Lcom/bbm/ui/ct;)I
.registers 3
iget v0, p0, Lcom/bbm/ui/ct;->m:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/bbm/ui/ct;->m:I
return v0
.end method
.method static synthetic i(Lcom/bbm/ui/ct;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->e:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/ct;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/ct;->a:J
return-wide v0
.end method
.method static synthetic k(Lcom/bbm/ui/ct;)V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
return-void
.end method
.method static synthetic l(Lcom/bbm/ui/ct;)Landroid/database/DataSetObservable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->p:Landroid/database/DataSetObservable;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/ct;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/ct;->v:Z
return v0
.end method
.method final a()V
.registers 3
const/4 v1, 0x2
iget v0, p0, Lcom/bbm/ui/ct;->n:I
if-ne v0, v1, :cond_6
:goto_5
return-void
:cond_6
iget v0, p0, Lcom/bbm/ui/ct;->n:I
if-nez v0, :cond_15
const/4 v0, 0x1
iput v0, p0, Lcom/bbm/ui/ct;->n:I
iget-object v0, p0, Lcom/bbm/ui/ct;->q:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/ct;->o:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_5
:cond_15
iput v1, p0, Lcom/bbm/ui/ct;->n:I
goto :goto_5
.end method
.method public final areAllItemsEnabled()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v0
return v0
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
instance-of v0, v0, Lcom/bbm/j/y;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
check-cast v0, Lcom/bbm/j/y;
invoke-interface {v0}, Lcom/bbm/j/y;->b()V
:cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/ct;->x:Z
return-void
.end method
.method public final c()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/ct;->x:Z
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/bbm/ui/ct;->g()V
:cond_e
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
instance-of v0, v0, Lcom/bbm/j/y;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
check-cast v0, Lcom/bbm/j/y;
invoke-interface {v0}, Lcom/bbm/j/y;->c()V
:cond_1b
return-void
.end method
.method protected final d()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cz;
invoke-virtual {v0}, Lcom/bbm/ui/cz;->c()V
goto :goto_6
:cond_16
iget-object v0, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_1c
:goto_1c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cz;
iget-boolean v2, v0, Lcom/bbm/ui/cz;->e:Z
if-eqz v2, :cond_1c
invoke-virtual {v0}, Lcom/bbm/ui/cz;->a()V
goto :goto_1c
:cond_30
return-void
.end method
.method public final e()V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/ct;->b()V
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
iget-object v0, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cz;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/cz;->a(Lcom/google/b/a/l;)V
invoke-virtual {v0}, Lcom/bbm/ui/cz;->removeAllViews()V
goto :goto_e
:cond_25
iget-object v0, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/bbm/ui/ct;->z:Lcom/bbm/ui/u;
iget-object v0, v0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
iget-object v1, p0, Lcom/bbm/ui/ct;->s:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method
.method public final f()V
.registers 5
const/4 v1, 0x0
const/4 v3, 0x0
:goto_2
iget v0, p0, Lcom/bbm/ui/ct;->f:I
iget v2, p0, Lcom/bbm/ui/ct;->h:I
if-ge v0, v2, :cond_50
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_50
move-object v0, v1
:cond_11
:goto_11
if-nez v0, :cond_47
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_24
iput-boolean v3, p0, Lcom/bbm/ui/ct;->k:Z
:goto_1d
iget v0, p0, Lcom/bbm/ui/ct;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/ui/ct;->f:I
goto :goto_2
:cond_24
iget-boolean v0, p0, Lcom/bbm/ui/ct;->k:Z
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
:goto_30
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/cz;
if-eqz v0, :cond_11
iget-boolean v2, v0, Lcom/bbm/ui/cz;->c:Z
if-nez v2, :cond_11
move-object v0, v1
goto :goto_11
:cond_3e
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
goto :goto_30
:cond_47
iput-boolean v3, v0, Lcom/bbm/ui/cz;->c:Z
invoke-virtual {v0}, Lcom/bbm/ui/cz;->a()V
invoke-virtual {v0}, Lcom/bbm/ui/cz;->b()V
goto :goto_1d
:cond_50
iput v3, p0, Lcom/bbm/ui/ct;->f:I
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_5d
invoke-direct {p0}, Lcom/bbm/ui/ct;->g()V
:cond_5d
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v0
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 3
iget-boolean v0, p0, Lcom/bbm/ui/ct;->A:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
goto :goto_5
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
const/4 v2, 0x1
const/4 v3, 0x0
move-object v0, p2
check-cast v0, Lcom/bbm/ui/cz;
iget-object v1, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v5
iget-object v1, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v6
if-nez v0, :cond_88
new-instance v0, Lcom/bbm/ui/cz;
iget-object v1, p0, Lcom/bbm/ui/ct;->t:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/cz;-><init>(Lcom/bbm/ui/ct;Landroid/content/Context;)V
if-eqz p3, :cond_1f
invoke-direct {p0, v0, p3}, Lcom/bbm/ui/ct;->a(Landroid/view/View;Landroid/view/View;)V
:cond_1f
iget-object v1, p0, Lcom/bbm/ui/ct;->y:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move v1, v2
move-object v4, v0
:goto_26
iget-object v0, p0, Lcom/bbm/ui/ct;->z:Lcom/bbm/ui/u;
iget-object v0, v0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;
invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_9d
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
:goto_36
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_3d
move v1, v3
:cond_3d
iget-wide v8, v4, Lcom/bbm/ui/cz;->d:J
cmp-long v0, v8, v6
if-nez v0, :cond_ba
move v0, v2
:goto_44
if-nez v0, :cond_53
if-eqz p2, :cond_53
iget-object v0, v4, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_53
invoke-static {v4}, Lcom/bbm/ui/cz;->b(Lcom/bbm/ui/cz;)V
:cond_53
iput p1, v4, Lcom/bbm/ui/cz;->a:I
if-eqz v1, :cond_bc
iget-boolean v0, p0, Lcom/bbm/ui/ct;->d:Z
if-eqz v0, :cond_bc
iget v0, p0, Lcom/bbm/ui/ct;->f:I
iget v1, p0, Lcom/bbm/ui/ct;->h:I
if-ge v0, v1, :cond_63
if-nez p2, :cond_bc
:cond_63
iget-boolean v0, p0, Lcom/bbm/ui/ct;->j:Z
if-nez v0, :cond_bc
iget-object v0, p0, Lcom/bbm/ui/ct;->u:Ljava/util/LinkedList;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iput-boolean v2, v4, Lcom/bbm/ui/cz;->c:Z
invoke-direct {p0}, Lcom/bbm/ui/ct;->g()V
invoke-virtual {v4}, Lcom/bbm/ui/cz;->c()V
const/4 v0, 0x0
invoke-virtual {v4, v0}, Lcom/bbm/ui/cz;->a(F)V
:goto_7d
iget v0, p0, Lcom/bbm/ui/ct;->c:I
invoke-static {v4, v0}, Lcom/bbm/ui/cz;->a(Lcom/bbm/ui/cz;I)I
iget v0, p0, Lcom/bbm/ui/ct;->b:I
invoke-static {v4, v0}, Lcom/bbm/ui/cz;->b(Lcom/bbm/ui/cz;I)I
return-object v4
:cond_88
iget-object v1, v0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_e4
iget-boolean v1, p0, Lcom/bbm/ui/ct;->g:Z
if-eqz v1, :cond_9a
iget-wide v8, v0, Lcom/bbm/ui/cz;->d:J
cmp-long v1, v8, v6
if-nez v1, :cond_e4
:cond_9a
move v1, v3
move-object v4, v0
goto :goto_26
:cond_9d
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/v;
if-nez v0, :cond_aa
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
goto :goto_36
:cond_aa
iget-object v0, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
goto/16 :goto_36
:cond_ba
move v0, v3
goto :goto_44
:cond_bc
iget v0, p0, Lcom/bbm/ui/ct;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/ui/ct;->f:I
invoke-direct {p0, v4}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/cz;)V
invoke-virtual {v4}, Lcom/bbm/ui/cz;->a()V
iget-boolean v0, p0, Lcom/bbm/ui/ct;->j:Z
if-eqz v0, :cond_db
invoke-virtual {v4, v3, v3}, Lcom/bbm/ui/cz;->measure(II)V
invoke-virtual {v4}, Lcom/bbm/ui/cz;->getMeasuredWidth()I
move-result v0
iput v0, p0, Lcom/bbm/ui/ct;->b:I
invoke-virtual {v4}, Lcom/bbm/ui/cz;->getMeasuredHeight()I
move-result v0
iput v0, p0, Lcom/bbm/ui/ct;->c:I
:cond_db
iput-boolean v3, p0, Lcom/bbm/ui/ct;->j:Z
invoke-static {v4}, Lcom/bbm/ui/cz;->a(Lcom/bbm/ui/cz;)V
invoke-direct {p0}, Lcom/bbm/ui/ct;->g()V
goto :goto_7d
:cond_e4
move v1, v2
move-object v4, v0
goto/16 :goto_26
.end method
.method public final getViewTypeCount()I
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/ct;->A:Z
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v0
goto :goto_5
.end method
.method public final hasStableIds()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z
move-result v0
return v0
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v0
return v0
.end method
.method public final isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ct;->r:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v0
return v0
.end method
.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ct;->p:Landroid/database/DataSetObservable;
invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V
return-void
.end method
.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ct;->p:Landroid/database/DataSetObservable;
invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
return-void
.end method