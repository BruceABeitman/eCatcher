.class public Lcom/mapquest/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"
.field private static final a:I
.field private A:Lcom/mapquest/android/maps/e;
.field private B:Landroid/graphics/Paint;
.field private C:Landroid/graphics/Paint;
.field private D:Landroid/graphics/Bitmap;
.field private E:Z
.field private F:I
.field private G:I
.field private H:F
.field private I:I
.field private J:I
.field private K:Lcom/mapquest/android/maps/bs;
.field private L:Lcom/mapquest/android/maps/an;
.field private M:Lcom/mapquest/android/maps/az;
.field private N:Lcom/mapquest/android/maps/be;
.field private O:Landroid/graphics/drawable/BitmapDrawable;
.field private P:Landroid/widget/TextView;
.field private Q:I
.field private R:I
.field private S:I
.field private T:I
.field private U:Landroid/graphics/Rect;
.field  b:Lcom/mapquest/android/maps/ce;
.field  c:I
.field  d:Lcom/mapquest/android/maps/s;
.field  e:Lcom/mapquest/android/maps/cb;
.field  f:Lcom/mapquest/android/maps/cq;
.field  g:Lcom/mapquest/android/maps/ch;
.field  h:Z
.field  i:F
.field  j:Landroid/graphics/Point;
.field  k:Ljava/util/Queue;
.field  l:Lcom/mapquest/android/maps/bm;
.field  m:Landroid/os/Handler;
.field  n:Lcom/mapquest/android/maps/c;
.field  o:Ljava/util/HashMap;
.field  p:Landroid/graphics/Point;
.field  q:Landroid/graphics/Rect;
.field private r:Landroid/content/Context;
.field private s:Lcom/mapquest/android/maps/al;
.field private t:Lcom/mapquest/android/maps/ai;
.field private u:Lcom/mapquest/android/maps/cd;
.field private v:Z
.field private w:Landroid/widget/ZoomControls;
.field private x:Landroid/widget/ZoomButtonsController;
.field private y:Z
.field private z:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xee
invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I
move-result v0
sput v0, Lcom/mapquest/android/maps/MapView;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->v:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->y:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->z:Z
const/4 v0, 0x2
iput v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
new-instance v0, Lcom/mapquest/android/maps/s;
const v1, 0x25fceea
const v2, -0x5e0421c
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->h:Z
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->E:Z
iput v3, p0, Lcom/mapquest/android/maps/MapView;->F:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->G:I
const/high16 v0, 0x3f80
iput v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->L:Lcom/mapquest/android/maps/an;
sget-object v0, Lcom/mapquest/android/maps/az;->a:Lcom/mapquest/android/maps/az;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
iput-object v5, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
iput-object v5, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
iput v3, p0, Lcom/mapquest/android/maps/MapView;->Q:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->R:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->S:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->T:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->o:Ljava/util/HashMap;
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->q:Landroid/graphics/Rect;
invoke-direct {p0, p1, v5}, Lcom/mapquest/android/maps/MapView;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;B)V
.registers 9
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->v:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->y:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->z:Z
const/4 v0, 0x2
iput v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
new-instance v0, Lcom/mapquest/android/maps/s;
const v1, 0x25fceea
const v2, -0x5e0421c
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->h:Z
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->E:Z
iput v3, p0, Lcom/mapquest/android/maps/MapView;->F:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->G:I
const/high16 v0, 0x3f80
iput v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->L:Lcom/mapquest/android/maps/an;
sget-object v0, Lcom/mapquest/android/maps/az;->a:Lcom/mapquest/android/maps/az;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
iput-object v5, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
iput-object v5, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
iput v3, p0, Lcom/mapquest/android/maps/MapView;->Q:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->R:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->S:I
iput v3, p0, Lcom/mapquest/android/maps/MapView;->T:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->o:Ljava/util/HashMap;
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->q:Landroid/graphics/Rect;
invoke-direct {p0, p1, v5}, Lcom/mapquest/android/maps/MapView;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/mapquest/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const/4 v6, 0x0
const/4 v5, -0x1
const/4 v4, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->v:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->y:Z
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->z:Z
const/4 v0, 0x2
iput v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
new-instance v0, Lcom/mapquest/android/maps/s;
const v1, 0x25fceea
const v3, -0x5e0421c
invoke-direct {v0, v1, v3}, Lcom/mapquest/android/maps/s;-><init>(II)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->h:Z
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
iput-boolean v2, p0, Lcom/mapquest/android/maps/MapView;->E:Z
iput v2, p0, Lcom/mapquest/android/maps/MapView;->F:I
iput v2, p0, Lcom/mapquest/android/maps/MapView;->G:I
const/high16 v0, 0x3f80
iput v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->L:Lcom/mapquest/android/maps/an;
sget-object v0, Lcom/mapquest/android/maps/az;->a:Lcom/mapquest/android/maps/az;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
iput-object v6, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
iput-object v6, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
iput v2, p0, Lcom/mapquest/android/maps/MapView;->Q:I
iput v2, p0, Lcom/mapquest/android/maps/MapView;->R:I
iput v2, p0, Lcom/mapquest/android/maps/MapView;->S:I
iput v2, p0, Lcom/mapquest/android/maps/MapView;->T:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->o:Ljava/util/HashMap;
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->q:Landroid/graphics/Rect;
const-string v0, ""
move v1, v2
:goto_7b
invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I
move-result v3
if-ge v1, v3, :cond_a7
const-string v3, "apiKey"
invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_9b
invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I
move-result v0
if-ne v0, v5, :cond_9e
const-string v0, "http://schemas.android.com/apk/res/android"
const-string v3, "apiKey"
invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_9b
:goto_9b
add-int/lit8 v1, v1, 0x1
goto :goto_7b
:cond_9e
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I
move-result v0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_9b
:cond_a7
invoke-direct {p0, p1, v0}, Lcom/mapquest/android/maps/MapView;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/s;IZ)I
.registers 13
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v1
if-nez v1, :cond_e
:cond_d
:goto_d
return v0
:cond_e
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v1, :cond_d
if-eqz p3, :cond_d
iget v6, p0, Lcom/mapquest/android/maps/MapView;->c:I
iget-object v7, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
if-eq p3, v1, :cond_24
if-ltz p3, :cond_24
iput p3, p0, Lcom/mapquest/android/maps/MapView;->c:I
:cond_24
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
if-eq p2, v1, :cond_2a
iput-object p2, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
:cond_2a
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
iput v0, p0, Lcom/mapquest/android/maps/MapView;->F:I
iput v0, p0, Lcom/mapquest/android/maps/MapView;->G:I
:try_start_30
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v0}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v0
sget-object v2, Lcom/mapquest/android/maps/cf;->c:Lcom/mapquest/android/maps/cf;
if-ne v0, v2, :cond_43
sget-object v2, Lcom/mapquest/android/maps/cf;->b:Lcom/mapquest/android/maps/cf;
const/4 v3, 0x0
move-object v0, p0
move-object v4, p1
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->a(ILcom/mapquest/android/maps/cf;ZLandroid/graphics/Canvas;Z)V
:cond_43
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v0}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v2
const/4 v3, 0x0
move-object v0, p0
move-object v4, p1
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->a(ILcom/mapquest/android/maps/cf;ZLandroid/graphics/Canvas;Z)V
iget v0, p0, Lcom/mapquest/android/maps/MapView;->F:I
:try_end_52
.catchall {:try_start_30 .. :try_end_52} :catchall_5f
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
if-eq v6, v1, :cond_58
iput v6, p0, Lcom/mapquest/android/maps/MapView;->c:I
:cond_58
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
if-eq v7, v1, :cond_d
iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
goto :goto_d
:catchall_5f
move-exception v0
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
if-eq v6, v1, :cond_66
iput v6, p0, Lcom/mapquest/android/maps/MapView;->c:I
:cond_66
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
if-eq v7, v1, :cond_6c
iput-object v7, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
:cond_6c
throw v0
.end method
.method static synthetic a(Lcom/mapquest/android/maps/MapView;I)I
.registers 2
iput p1, p0, Lcom/mapquest/android/maps/MapView;->c:I
return p1
.end method
.method static synthetic a(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/al;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
return-object v0
.end method
.method private a()V
.registers 20
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getChildCount()I
move-result v12
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2}, Landroid/graphics/Point;-><init>()V
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v4
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v5
const/4 v1, 0x0
move v11, v1
:goto_13
if-ge v11, v12, :cond_1ac
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Lcom/mapquest/android/maps/MapView;->getChildAt(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v3, 0x8
if-eq v1, v3, :cond_1a7
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
instance-of v1, v1, Lcom/mapquest/android/maps/av;
if-eqz v1, :cond_1a7
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Lcom/mapquest/android/maps/av;
iget v3, v1, Lcom/mapquest/android/maps/av;->b:I
if-nez v3, :cond_40
iget-object v3, v1, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
if-nez v3, :cond_a3
const-string v3, "mq.android.maps.mapview"
const-string v6, "View instance mode is set to map but geopoint is not set"
invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_40
iget v3, v1, Lcom/mapquest/android/maps/av;->d:I
iput v3, v2, Landroid/graphics/Point;->x:I
iget v3, v1, Lcom/mapquest/android/maps/av;->e:I
iput v3, v2, Landroid/graphics/Point;->y:I
:goto_48
iget v9, v1, Lcom/mapquest/android/maps/av;->a:I
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v14
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v15
iget v1, v2, Landroid/graphics/Point;->x:I
const v3, 0x7fffffff
if-eq v1, v3, :cond_112
iget v1, v2, Landroid/graphics/Point;->x:I
:goto_5b
iget v3, v2, Landroid/graphics/Point;->y:I
const v6, 0x7fffffff
if-eq v3, v6, :cond_116
iget v3, v2, Landroid/graphics/Point;->y:I
:goto_64
add-int v8, v1, v14
add-int v7, v3, v15
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingLeft()I
move-result v6
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingRight()I
move-result v10
sub-int v16, v6, v10
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingTop()I
move-result v6
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getPaddingRight()I
move-result v10
sub-int v17, v6, v10
const/4 v6, 0x0
move v10, v9
move v9, v1
move v1, v3
move v3, v6
:goto_81
if-eqz v10, :cond_19c
add-int/lit8 v6, v3, 0x1
const/16 v18, 0x3
move/from16 v0, v18
if-ge v3, v0, :cond_19c
and-int/lit8 v3, v10, 0x20
const/16 v18, 0x20
move/from16 v0, v18
if-ne v3, v0, :cond_11d
iget v3, v2, Landroid/graphics/Point;->y:I
const v7, 0x7fffffff
if-eq v3, v7, :cond_11a
:goto_9a
sub-int v3, v1, v15
xor-int/lit8 v7, v10, 0x20
move v10, v7
move v7, v1
move v1, v3
move v3, v6
goto :goto_81
:cond_a3
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v3
iget-object v6, v1, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
invoke-interface {v3, v6, v2}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v2
move-object/from16 v0, p0
iget v3, v0, Lcom/mapquest/android/maps/MapView;->i:F
const/high16 v6, 0x3f80
cmpl-float v3, v3, v6
if-eqz v3, :cond_eb
iget v3, v2, Landroid/graphics/Point;->x:I
iget v6, v2, Landroid/graphics/Point;->y:I
move-object/from16 v0, p0
iget-boolean v7, v0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v7, :cond_109
move-object/from16 v0, p0
iget-object v7, v0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v8, v7, Landroid/graphics/Point;->y:I
int-to-float v8, v8
iget v9, v7, Landroid/graphics/Point;->y:I
sub-int/2addr v6, v9
int-to-float v6, v6
move-object/from16 v0, p0
iget v9, v0, Lcom/mapquest/android/maps/MapView;->i:F
mul-float/2addr v6, v9
add-float/2addr v6, v8
const/high16 v8, 0x3f00
add-float/2addr v6, v8
float-to-int v6, v6
iput v6, v2, Landroid/graphics/Point;->y:I
iget v6, v7, Landroid/graphics/Point;->x:I
int-to-float v6, v6
iget v7, v7, Landroid/graphics/Point;->x:I
sub-int/2addr v3, v7
int-to-float v3, v3
move-object/from16 v0, p0
iget v7, v0, Lcom/mapquest/android/maps/MapView;->i:F
mul-float/2addr v3, v7
add-float/2addr v3, v6
const/high16 v6, 0x3f00
add-float/2addr v3, v6
float-to-int v3, v3
iput v3, v2, Landroid/graphics/Point;->x:I
:cond_eb
:goto_eb
iget v6, v2, Landroid/graphics/Point;->x:I
iget v3, v1, Lcom/mapquest/android/maps/av;->d:I
const v7, 0x7fffffff
if-eq v3, v7, :cond_10e
iget v3, v1, Lcom/mapquest/android/maps/av;->d:I
:goto_f6
add-int/2addr v3, v6
iput v3, v2, Landroid/graphics/Point;->x:I
iget v6, v2, Landroid/graphics/Point;->y:I
iget v3, v1, Lcom/mapquest/android/maps/av;->e:I
const v7, 0x7fffffff
if-eq v3, v7, :cond_110
iget v3, v1, Lcom/mapquest/android/maps/av;->e:I
:goto_104
add-int/2addr v3, v6
iput v3, v2, Landroid/graphics/Point;->y:I
goto/16 :goto_48
:cond_109
iput v3, v2, Landroid/graphics/Point;->x:I
iput v6, v2, Landroid/graphics/Point;->y:I
goto :goto_eb
:cond_10e
const/4 v3, 0x0
goto :goto_f6
:cond_110
const/4 v3, 0x0
goto :goto_104
:cond_112
shr-int/lit8 v1, v5, 0x1
goto/16 :goto_5b
:cond_116
shr-int/lit8 v3, v4, 0x1
goto/16 :goto_64
:cond_11a
move v1, v4
goto/16 :goto_9a
:cond_11d
and-int/lit8 v3, v10, 0x10
const/16 v18, 0x10
move/from16 v0, v18
if-ne v3, v0, :cond_137
iget v3, v2, Landroid/graphics/Point;->y:I
const v7, 0x7fffffff
if-eq v3, v7, :cond_135
:goto_12c
add-int v3, v1, v15
xor-int/lit8 v7, v10, 0x10
move v10, v7
move v7, v3
move v3, v6
goto/16 :goto_81
:cond_135
const/4 v1, 0x0
goto :goto_12c
:cond_137
and-int/lit8 v3, v10, 0x8
const/16 v18, 0x8
move/from16 v0, v18
if-ne v3, v0, :cond_154
iget v3, v2, Landroid/graphics/Point;->x:I
const v8, 0x7fffffff
if-eq v3, v8, :cond_152
iget v3, v2, Landroid/graphics/Point;->x:I
:goto_148
sub-int v8, v3, v14
xor-int/lit8 v9, v10, 0x8
move v10, v9
move v9, v8
move v8, v3
move v3, v6
goto/16 :goto_81
:cond_152
move v3, v5
goto :goto_148
:cond_154
and-int/lit8 v3, v10, 0x4
const/16 v18, 0x4
move/from16 v0, v18
if-ne v3, v0, :cond_170
iget v3, v2, Landroid/graphics/Point;->x:I
const v7, 0x7fffffff
if-eq v3, v7, :cond_16e
iget v3, v2, Landroid/graphics/Point;->x:I
:goto_165
add-int v7, v3, v14
xor-int/lit8 v9, v10, 0x4
move v10, v9
move v9, v3
move v3, v6
goto/16 :goto_81
:cond_16e
const/4 v3, 0x0
goto :goto_165
:cond_170
and-int/lit8 v3, v10, 0x1
const/16 v18, 0x1
move/from16 v0, v18
if-ne v3, v0, :cond_186
shr-int/lit8 v3, v14, 0x1
sub-int v8, v9, v3
add-int v3, v8, v14
xor-int/lit8 v9, v10, 0x1
move v10, v9
move v9, v8
move v8, v3
move v3, v6
goto/16 :goto_81
:cond_186
and-int/lit8 v3, v10, 0x2
const/16 v18, 0x2
move/from16 v0, v18
if-ne v3, v0, :cond_1ad
shr-int/lit8 v3, v15, 0x1
sub-int v3, v1, v3
add-int v1, v3, v15
xor-int/lit8 v7, v10, 0x2
move v10, v7
move v7, v1
move v1, v3
move v3, v6
goto/16 :goto_81
:cond_19c
add-int v3, v9, v16
add-int v1, v1, v17
add-int v6, v8, v16
add-int v7, v7, v17
invoke-virtual {v13, v3, v1, v6, v7}, Landroid/view/View;->layout(IIII)V
:cond_1a7
add-int/lit8 v1, v11, 0x1
move v11, v1
goto/16 :goto_13
:cond_1ac
return-void
:cond_1ad
move v3, v6
goto/16 :goto_81
.end method
.method private a(ILcom/mapquest/android/maps/cf;ZLandroid/graphics/Canvas;Z)V
.registers 28
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v4
if-eqz v4, :cond_c
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v4
if-nez v4, :cond_d
:cond_c
return-void
:cond_d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
if-eqz v4, :cond_c
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v4, :cond_c
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v4
if-eqz v4, :cond_c
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v14, v4, Landroid/graphics/Point;->y:I
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v15, v4, Landroid/graphics/Point;->x:I
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
const/4 v10, 0x0
const/4 v9, 0x0
new-instance v5, Landroid/graphics/Point;
invoke-direct {v5}, Landroid/graphics/Point;-><init>()V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v8
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v11
invoke-virtual {v4, v6, v7, v8, v11}, Landroid/graphics/Rect;->set(IIII)V
move-object/from16 v0, p0
iget v4, v0, Lcom/mapquest/android/maps/MapView;->H:F
const/4 v6, 0x0
cmpl-float v4, v4, v6
if-eqz v4, :cond_5b
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
invoke-virtual {v4, v6}, Lcom/mapquest/android/maps/bs;->a(Landroid/graphics/Rect;)V
:cond_5b
const/4 v11, 0x0
:goto_5c
if-eqz v10, :cond_60
if-nez v9, :cond_c
:cond_60
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v12, 0x0
rem-int/lit8 v4, v11, 0x2
if-nez v4, :cond_103
const/16 v4, -0x100
:goto_69
div-int/lit8 v6, v11, 0x2
rem-int/lit8 v13, v11, 0x2
add-int/2addr v6, v13
mul-int/2addr v4, v6
add-int v16, v14, v4
const/4 v6, 0x0
move-object v4, v12
:goto_73
if-eqz v8, :cond_77
if-nez v7, :cond_1bd
:cond_77
rem-int/lit8 v4, v6, 0x2
if-nez v4, :cond_107
const/16 v4, -0x100
:goto_7d
div-int/lit8 v12, v6, 0x2
rem-int/lit8 v13, v6, 0x2
add-int/2addr v12, v13
mul-int/2addr v4, v12
add-int/2addr v4, v15
move-object/from16 v0, p0
iget-object v12, v0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
move/from16 v0, v16
invoke-virtual {v12, v4, v0, v5}, Lcom/mapquest/android/maps/bs;->b(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v13
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
iget v5, v13, Landroid/graphics/Point;->x:I
iget v12, v13, Landroid/graphics/Point;->y:I
move/from16 v0, p1
move-object/from16 v1, p2
invoke-interface {v4, v5, v12, v0, v1}, Lcom/mapquest/android/maps/ce;->a(IIILcom/mapquest/android/maps/cf;)Lcom/mapquest/android/maps/ca;
move-result-object v12
if-eqz v12, :cond_209
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v5, v12, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
invoke-virtual {v4, v5}, Lcom/mapquest/android/maps/bs;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
iget-object v5, v12, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v4
if-eqz v4, :cond_d8
if-eqz p3, :cond_10b
move-object/from16 v0, p0
iget v4, v0, Lcom/mapquest/android/maps/MapView;->G:I
add-int/lit8 v4, v4, 0x1
move-object/from16 v0, p0
iput v4, v0, Lcom/mapquest/android/maps/MapView;->G:I
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
sget-object v5, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v4, v5}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v4
invoke-interface {v4, v12}, Lcom/mapquest/android/maps/x;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v4
if-nez v4, :cond_d8
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v4, v12}, Lcom/mapquest/android/maps/cd;->a(Lcom/mapquest/android/maps/ca;)V
:cond_d8
:goto_d8
rem-int/lit8 v4, v6, 0x2
if-eqz v4, :cond_1b7
if-eqz v7, :cond_206
add-int/lit8 v4, v6, 0x1
:goto_e0
iget-object v5, v12, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
if-ge v5, v6, :cond_203
const/4 v5, 0x1
:goto_ed
iget-object v6, v12, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
iget-object v7, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
if-le v6, v7, :cond_200
const/4 v6, 0x1
:goto_fa
add-int/lit8 v4, v4, 0x1
move v7, v5
move v8, v6
move v6, v4
move-object v5, v13
move-object v4, v12
goto/16 :goto_73
:cond_103
const/16 v4, 0x100
goto/16 :goto_69
:cond_107
const/16 v4, 0x100
goto/16 :goto_7d
:cond_10b
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v4, :cond_d8
iget v4, v12, Lcom/mapquest/android/maps/ca;->b:I
move-object/from16 v0, p0
iget v5, v0, Lcom/mapquest/android/maps/MapView;->c:I
if-ne v4, v5, :cond_d8
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
sget-object v5, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v4, v5}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v4
invoke-interface {v4, v12}, Lcom/mapquest/android/maps/x;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v5
move-object/from16 v0, p0
iget v4, v0, Lcom/mapquest/android/maps/MapView;->G:I
add-int/lit8 v4, v4, 0x1
move-object/from16 v0, p0
iput v4, v0, Lcom/mapquest/android/maps/MapView;->G:I
const/4 v4, 0x0
if-eqz v5, :cond_174
iget-object v4, v5, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
if-eqz v4, :cond_13e
invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v5
if-eqz v5, :cond_14c
:cond_13e
move-object/from16 v0, p0
iget-object v4, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
sget-object v5, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v4, v5}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v4
invoke-interface {v4, v12}, Lcom/mapquest/android/maps/x;->c(Lcom/mapquest/android/maps/ca;)V
goto :goto_d8
:cond_14c
move-object/from16 v0, p0
iget v5, v0, Lcom/mapquest/android/maps/MapView;->F:I
add-int/lit8 v5, v5, 0x1
move-object/from16 v0, p0
iput v5, v0, Lcom/mapquest/android/maps/MapView;->F:I
:goto_156
:cond_156
iget-object v0, v12, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
move-object/from16 v17, v0
if-nez v17, :cond_183
const-string v4, "mq.android.maps.mapview"
new-instance v5, Ljava/lang/StringBuilder;
const-string v17, "drawTile: Tile not visible with screen: "
move-object/from16 v0, v17
invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_d8
:cond_174
if-eqz p5, :cond_156
iget-object v5, v12, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;
sget-object v17, Lcom/mapquest/android/maps/cf;->c:Lcom/mapquest/android/maps/cf;
move-object/from16 v0, v17
if-eq v5, v0, :cond_156
invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/MapView;->getLoadingTile()Landroid/graphics/Bitmap;
move-result-object v4
goto :goto_156
:cond_183
if-eqz p4, :cond_d8
if-eqz v4, :cond_d8
new-instance v18, Landroid/graphics/Rect;
const/4 v5, 0x0
const/16 v19, 0x0
const/16 v20, 0x100
const/16 v21, 0x100
move-object/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
move/from16 v3, v21
invoke-direct {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v5, v12, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;
sget-object v19, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;
move-object/from16 v0, v19
if-ne v5, v0, :cond_1b2
move-object/from16 v0, p0
iget-object v5, v0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
:goto_1a7
move-object/from16 v0, p4
move-object/from16 v1, v18
move-object/from16 v2, v17
invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto/16 :goto_d8
:cond_1b2
move-object/from16 v0, p0
iget-object v5, v0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
goto :goto_1a7
:cond_1b7
if-eqz v8, :cond_206
add-int/lit8 v4, v6, 0x1
goto/16 :goto_e0
:cond_1bd
move-object v7, v5
move-object v5, v4
:goto_1bf
if-nez v5, :cond_1da
rem-int/lit8 v4, v11, 0x2
if-nez v4, :cond_1d6
const/4 v4, 0x1
move v5, v10
:goto_1c7
rem-int/lit8 v6, v11, 0x2
if-eqz v6, :cond_1f5
if-eqz v4, :cond_1fa
add-int/lit8 v6, v11, 0x1
:goto_1cf
add-int/lit8 v11, v6, 0x1
move v9, v4
move v10, v5
move-object v5, v7
goto/16 :goto_5c
:cond_1d6
const/4 v4, 0x1
move v5, v4
move v4, v9
goto :goto_1c7
:cond_1da
iget-object v4, v5, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->top:I
if-ge v4, v6, :cond_1fe
const/4 v4, 0x1
:goto_1e7
iget-object v5, v5, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
if-le v5, v6, :cond_1fc
const/4 v5, 0x1
goto :goto_1c7
:cond_1f5
if-eqz v5, :cond_1fa
add-int/lit8 v6, v11, 0x1
goto :goto_1cf
:cond_1fa
move v6, v11
goto :goto_1cf
:cond_1fc
move v5, v10
goto :goto_1c7
:cond_1fe
move v4, v9
goto :goto_1e7
:cond_200
move v6, v8
goto/16 :goto_fa
:cond_203
move v5, v7
goto/16 :goto_ed
:cond_206
move v4, v6
goto/16 :goto_e0
:cond_209
move-object v5, v12
move-object v7, v13
goto :goto_1bf
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)V
.registers 13
const/16 v9, 0x21
const/4 v8, 0x5
const/4 v7, 0x0
const/4 v6, 0x1
instance-of v0, p1, Lcom/mapquest/android/maps/ag;
if-eqz v0, :cond_11
move-object v0, p1
check-cast v0, Lcom/mapquest/android/maps/ag;
iget-object v0, v0, Lcom/mapquest/android/maps/ag;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_11
iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
new-instance v0, Lcom/mapquest/android/maps/c;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/c;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
new-instance v0, Lcom/mapquest/android/maps/al;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/al;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
new-instance v0, Lcom/mapquest/android/maps/aw;
invoke-direct {v0, p0, v7}, Lcom/mapquest/android/maps/aw;-><init>(Lcom/mapquest/android/maps/MapView;B)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(Landroid/os/Handler;)V
new-instance v0, Lcom/mapquest/android/maps/cb;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/cb;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
new-instance v0, Lcom/mapquest/android/maps/bt;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bt;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/cb;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
new-instance v0, Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/ai;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
if-eqz p2, :cond_14f
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_14f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iput-object p2, v0, Lcom/mapquest/android/maps/c;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iput-object p2, v0, Lcom/mapquest/android/maps/c;->e:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapProvider(Lcom/mapquest/android/maps/an;)V
:goto_59
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/s;I)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->B:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
invoke-virtual {p0, v6}, Lcom/mapquest/android/maps/MapView;->setFocusable(Z)V
sget v0, Lcom/mapquest/android/maps/MapView;->a:I
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setBackgroundColor(I)V
new-instance v0, Lcom/mapquest/android/maps/ch;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/ch;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
new-instance v0, Lcom/mapquest/android/maps/bs;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1}, Lcom/mapquest/android/maps/ce;->c()Lcom/mapquest/android/maps/bq;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bs;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/bq;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
new-instance v0, Lcom/mapquest/android/maps/bm;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/bm;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
new-instance v0, Lcom/mapquest/android/maps/be;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/be;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->N:Lcom/mapquest/android/maps/be;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->N:Lcom/mapquest/android/maps/be;
iget-boolean v1, v0, Lcom/mapquest/android/maps/be;->b:Z
if-nez v1, :cond_b5
:try_start_a4
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iget-object v2, v0, Lcom/mapquest/android/maps/be;->a:Landroid/content/Context;
iget-object v3, v0, Lcom/mapquest/android/maps/be;->c:Lcom/mapquest/android/maps/bf;
invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/mapquest/android/maps/be;->b:Z
:try_end_b5
.catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b5} :catch_156
:goto_b5
:cond_b5
const-string v0, "logo"
invoke-static {p1, v0}, Lcom/mapquest/android/maps/cv;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
const-string v0, "window"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v1
iput v1, p0, Lcom/mapquest/android/maps/MapView;->J:I
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
const-wide/high16 v2, 0x4039
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
float-to-double v4, v1
mul-double v1, v2, v4
const-wide/high16 v3, 0x3fe0
add-double/2addr v1, v3
double-to-int v1, v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/mapquest/android/maps/MapView;->I:I
new-instance v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
new-instance v0, Landroid/text/SpannableString;
const-string v1, "Terms"
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/text/style/StyleSpan;
invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v0, v1, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
new-instance v1, Landroid/text/style/URLSpan;
const-string v2, "http://info.mapquest.com/terms-of-use/"
invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
const/high16 v1, 0x4140
invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x7d0
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
const-wide/16 v1, 0x1b58
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V
invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->addView(Landroid/view/View;)V
new-instance v0, Lcom/mapquest/android/maps/au;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/au;-><init>(Lcom/mapquest/android/maps/MapView;)V
invoke-virtual {v0}, Lcom/mapquest/android/maps/au;->start()V
return-void
:cond_14f
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapProvider(Lcom/mapquest/android/maps/an;)V
goto/16 :goto_59
:catch_156
move-exception v0
const-string v0, "mq.maps.networkconnectivitylistener"
const-string v1, "Failed to register network connection listener"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b5
.end method
.method static synthetic b(Lcom/mapquest/android/maps/MapView;)I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
return v0
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-nez v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-nez v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iget-boolean v0, v0, Lcom/mapquest/android/maps/c;->c:Z
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iget-boolean v0, v0, Lcom/mapquest/android/maps/c;->b:Z
if-eqz v0, :cond_40
sget-object v0, Lcom/mapquest/android/maps/cf;->d:Lcom/mapquest/android/maps/cf;
:goto_1b
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1, v0}, Lcom/mapquest/android/maps/ce;->c(Lcom/mapquest/android/maps/cf;)V
:cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v0}, Lcom/mapquest/android/maps/cd;->e()V
:cond_2d
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
if-lez v0, :cond_c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
if-lez v0, :cond_c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->d()V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
goto :goto_c
:cond_40
sget-object v0, Lcom/mapquest/android/maps/cf;->b:Lcom/mapquest/android/maps/cf;
goto :goto_1b
:cond_43
sget-object v0, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;
goto :goto_1b
.end method
.method private static getSdkVersion()I
.registers 2
new-instance v0, Ljava/lang/Integer;
sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method final a(FFF)V
.registers 6
iput p1, p0, Lcom/mapquest/android/maps/MapView;->i:F
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
float-to-int v1, p2
iput v1, v0, Landroid/graphics/Point;->x:I
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
float-to-int v1, p3
iput v1, v0, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->f()V
return-void
.end method
.method final a(Lcom/mapquest/android/maps/a;)V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
return-void
.end method
.method final a(Lcom/mapquest/android/maps/b;Z)V
.registers 11
const/4 v1, 0x6
const/16 v7, 0x17
const/16 v6, 0x15
iget v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
if-ge v0, v1, :cond_b
iput v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
:cond_b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->q:Landroid/graphics/Rect;
iget v1, p0, Lcom/mapquest/android/maps/MapView;->T:I
iget v2, p0, Lcom/mapquest/android/maps/MapView;->Q:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v3
iget v4, p0, Lcom/mapquest/android/maps/MapView;->S:I
sub-int/2addr v3, v4
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v4
iget v5, p0, Lcom/mapquest/android/maps/MapView;->R:I
sub-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->q:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/br;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v2
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v3
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v4
sub-int/2addr v3, v4
invoke-interface {v0, p1, v2, v3}, Lcom/mapquest/android/maps/br;->a(Lcom/mapquest/android/maps/b;II)I
move-result v0
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->a(I)Z
move-result v2
if-eqz v2, :cond_96
const/16 v2, 0xb
invoke-static {v2}, Lcom/mapquest/android/maps/g;->a(I)V
if-eqz p2, :cond_59
invoke-static {v6}, Lcom/mapquest/android/maps/g;->a(I)V
invoke-virtual {p1}, Lcom/mapquest/android/maps/b;->a()Lcom/mapquest/android/maps/s;
move-result-object v2
iput-object v2, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
invoke-static {v7}, Lcom/mapquest/android/maps/g;->a(I)V
:cond_59
iput v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
if-eqz p2, :cond_90
invoke-virtual {p1}, Lcom/mapquest/android/maps/b;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I
move-result v3
sub-int/2addr v2, v3
add-int/2addr v0, v2
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->y:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I
move-result v1
sub-int v1, v3, v1
add-int/2addr v1, v2
invoke-static {v6}, Lcom/mapquest/android/maps/g;->a(I)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
invoke-static {v7}, Lcom/mapquest/android/maps/g;->a(I)V
:cond_90
const/16 v0, 0xc
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
:cond_95
:goto_95
return-void
:cond_96
const-string v2, "mq.android.maps.mapview"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid zoom calculated: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p2, :cond_95
invoke-virtual {p1}, Lcom/mapquest/android/maps/b;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I
move-result v3
sub-int/2addr v2, v3
add-int/2addr v0, v2
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->y:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I
move-result v1
sub-int v1, v3, v1
add-int/2addr v1, v2
invoke-static {v6}, Lcom/mapquest/android/maps/g;->a(I)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
invoke-static {v7}, Lcom/mapquest/android/maps/g;->a(I)V
goto :goto_95
.end method
.method protected final a(Lcom/mapquest/android/maps/s;I)V
.registers 8
const/4 v2, 0x0
const/4 v0, 0x1
monitor-enter p0
:try_start_3
iput p2, p0, Lcom/mapquest/android/maps/MapView;->c:I
iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
monitor-exit p0
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_43
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
const/16 v3, 0x12
if-ge v1, v3, :cond_46
move v1, v0
:goto_11
iget v3, p0, Lcom/mapquest/android/maps/MapView;->c:I
iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-le v3, v0, :cond_18
move v2, v0
:cond_18
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V
:cond_26
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ZoomControls;
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V
invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V
:cond_3c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
if-nez v0, :cond_48
:goto_42
return-void
:catchall_43
move-exception v0
monitor-exit p0
throw v0
:cond_46
move v1, v2
goto :goto_11
:cond_48
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
goto :goto_42
.end method
.method final a(I)Z
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
const/16 v0, 0x12
if-gt p1, v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-lez p1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method final c()V
.registers 5
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
const/16 v1, 0x7ae3
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Lcom/mapquest/android/maps/av;
return v0
.end method
.method public final d()V
.registers 7
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-nez v0, :cond_2a
new-instance v0, Lcom/mapquest/android/maps/bt;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/cb;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bt;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/cb;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
:cond_2a
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v0}, Lcom/mapquest/android/maps/cd;->c()V
:try_start_2f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v0}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v0
sget-object v1, Lcom/mapquest/android/maps/cf;->c:Lcom/mapquest/android/maps/cf;
if-ne v0, v1, :cond_50
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
sget-object v1, Lcom/mapquest/android/maps/cf;->b:Lcom/mapquest/android/maps/cf;
invoke-interface {v0, v1}, Lcom/mapquest/android/maps/ce;->b(Lcom/mapquest/android/maps/cf;)Z
move-result v0
if-eqz v0, :cond_50
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v1
sget-object v2, Lcom/mapquest/android/maps/cf;->b:Lcom/mapquest/android/maps/cf;
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->a(ILcom/mapquest/android/maps/cf;ZLandroid/graphics/Canvas;Z)V
:cond_50
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v1
invoke-interface {v0, v1}, Lcom/mapquest/android/maps/ce;->b(Lcom/mapquest/android/maps/cf;)Z
move-result v0
if-eqz v0, :cond_6f
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v1
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v0}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v2
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/MapView;->a(ILcom/mapquest/android/maps/cf;ZLandroid/graphics/Canvas;Z)V
:cond_6f
:try_end_6f
.catchall {:try_start_2f .. :try_end_6f} :catchall_75
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v0}, Lcom/mapquest/android/maps/cd;->d()V
goto :goto_c
:catchall_75
move-exception v0
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v1}, Lcom/mapquest/android/maps/cd;->d()V
throw v0
.end method
.method public final e()V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
invoke-virtual {v0}, Lcom/mapquest/android/maps/cq;->a()V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
:cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
iput-object v3, v0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iput-object v3, v0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
:cond_19
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v0}, Lcom/mapquest/android/maps/cd;->b()V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
:cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
invoke-virtual {v0}, Lcom/mapquest/android/maps/cb;->b()V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
:cond_2f
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
iget-object v0, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_39
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
goto :goto_39
:cond_49
iget-object v0, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
if-eqz v0, :cond_5c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
instance-of v0, v0, Lcom/mapquest/android/maps/ch;
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
:cond_5a
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
:cond_5c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->N:Lcom/mapquest/android/maps/be;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->N:Lcom/mapquest/android/maps/be;
iget-boolean v1, v0, Lcom/mapquest/android/maps/be;->b:Z
if-eqz v1, :cond_6f
:try_start_66
iget-object v1, v0, Lcom/mapquest/android/maps/be;->a:Landroid/content/Context;
iget-object v2, v0, Lcom/mapquest/android/maps/be;->c:Lcom/mapquest/android/maps/bf;
invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_6d
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6d} :catch_ad
iput-boolean v4, v0, Lcom/mapquest/android/maps/be;->b:Z
:cond_6f
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->N:Lcom/mapquest/android/maps/be;
:cond_71
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
invoke-virtual {v0, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
iput-boolean v4, p0, Lcom/mapquest/android/maps/MapView;->v:Z
:cond_7e
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
invoke-static {v0}, Lcom/mapquest/android/maps/g;->b(Landroid/os/Handler;)V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->m:Landroid/os/Handler;
:cond_8b
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
if-eqz v0, :cond_9a
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
:cond_9a
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->destroyDrawingCache()V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
instance-of v0, v0, Lcom/mapquest/android/maps/ag;
if-eqz v0, :cond_ac
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
check-cast v0, Lcom/mapquest/android/maps/ag;
iget-object v0, v0, Lcom/mapquest/android/maps/ag;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_ac
return-void
:catch_ad
move-exception v1
const-string v1, "mq.maps.networkconnectivitylistener"
const-string v2, "Failed to unregister network connection listener"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_6d
.end method
.method final f()V
.registers 1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getLeft()I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTop()I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getLeft()I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTop()I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->a()V
return-void
.end method
.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 5
const-wide/16 v2, 0x0
new-instance v0, Lcom/mapquest/android/maps/av;
new-instance v1, Lcom/mapquest/android/maps/s;
invoke-direct {v1, v2, v3, v2, v3}, Lcom/mapquest/android/maps/s;-><init>(DD)V
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/av;-><init>(Lcom/mapquest/android/maps/s;I)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Lcom/mapquest/android/maps/av;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/mapquest/android/maps/av;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Lcom/mapquest/android/maps/av;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/av;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method public getBottomMargin()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->R:I
return v0
.end method
.method public getConfiguration()Lcom/mapquest/android/maps/c;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
return-object v0
.end method
.method public getController()Lcom/mapquest/android/maps/al;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->s:Lcom/mapquest/android/maps/al;
return-object v0
.end method
.method public getFocalPoint()Landroid/graphics/Point;
.registers 3
new-instance v0, Landroid/graphics/Point;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V
return-object v0
.end method
.method public getLatitudeSpan()I
.registers 5
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
invoke-interface {v0, v3, v3}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iget v0, v0, Lcom/mapquest/android/maps/s;->a:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v2
invoke-interface {v1, v3, v2}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v1
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
sub-int v0, v1, v0
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
return v0
.end method
.method public getLeftMargin()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->T:I
return v0
.end method
.method  getLoadingTile()Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
if-nez v0, :cond_2c
const-string v0, "/com/mapquest/android/maps/loading.jpg"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
if-nez v1, :cond_2c
const-string v1, "mq.android.maps.mapview"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "loading is null: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getLongitudeSpan()I
.registers 5
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
invoke-interface {v0, v3, v3}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v2
invoke-interface {v1, v2, v3}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v1
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
if-ge v1, v0, :cond_22
const v2, 0x15752a00
add-int/2addr v1, v2
sub-int v0, v1, v0
:goto_21
return v0
:cond_22
sub-int v0, v1, v0
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
goto :goto_21
.end method
.method public getMapCenter()Lcom/mapquest/android/maps/s;
.registers 4
new-instance v0, Lcom/mapquest/android/maps/s;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V
return-object v0
.end method
.method public getMapHeight()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->I:I
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/mapquest/android/maps/MapView;->I:I
goto :goto_8
.end method
.method  getMapProvider()Lcom/mapquest/android/maps/an;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v0}, Lcom/mapquest/android/maps/ce;->b()Lcom/mapquest/android/maps/an;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getMapRotation()F
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
return v0
.end method
.method public getMapWidth()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->J:I
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/mapquest/android/maps/MapView;->J:I
goto :goto_8
.end method
.method public getMaxZoomLevel()I
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
const/16 v0, 0x12
return v0
.end method
.method public getOverlays()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
iget-object v0, v0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
return-object v0
.end method
.method public getProjection()Lcom/mapquest/android/maps/bq;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
return-object v0
.end method
.method public getRightMargin()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->S:I
return v0
.end method
.method  getTileCacher()Lcom/mapquest/android/maps/cb;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
return-object v0
.end method
.method  getTileFactory()Lcom/mapquest/android/maps/ce;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
return-object v0
.end method
.method public getTopMargin()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->Q:I
return v0
.end method
.method public getZoomControls()Landroid/view/View;
.registers 5
const/4 v3, 0x4
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-nez v0, :cond_2d
new-instance v0, Landroid/widget/ZoomControls;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
const-wide/16 v1, 0x7d0
invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
new-instance v1, Lcom/mapquest/android/maps/aq;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/aq;-><init>(Lcom/mapquest/android/maps/MapView;)V
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
new-instance v1, Lcom/mapquest/android/maps/ar;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/ar;-><init>(Lcom/mapquest/android/maps/MapView;)V
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
:cond_2d
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setVisibility(I)V
:cond_36
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
:cond_3a
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setVisibility(I)V
:cond_43
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
return-object v0
.end method
.method public getZoomLevel()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
return v0
.end method
.method protected onAttachedToWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
:cond_11
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
:cond_d
return-void
.end method
.method protected final onDraw(Landroid/graphics/Canvas;)V
.registers 12
const/16 v1, 0xa
const/4 v2, 0x0
const/4 v7, 0x0
const/4 v6, 0x1
const/high16 v9, 0x3f80
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
if-nez v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
if-eqz v0, :cond_d
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
if-eqz v0, :cond_d
if-eqz p1, :cond_d
:try_start_1c
invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;
move-result-object v8
invoke-virtual {v8}, Landroid/graphics/Rect;->width()I
move-result v0
if-le v0, v1, :cond_d
invoke-virtual {v8}, Landroid/graphics/Rect;->height()I
move-result v0
if-le v0, v1, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->size()I
move-result v0
if-lez v0, :cond_66
invoke-virtual {v8}, Landroid/graphics/Rect;->width()I
move-result v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v1
if-ne v0, v1, :cond_1f1
invoke-virtual {v8}, Landroid/graphics/Rect;->height()I
move-result v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v1
if-ne v0, v1, :cond_1f1
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/a;
invoke-virtual {v0}, Lcom/mapquest/android/maps/a;->c()Z
move-result v0
if-nez v0, :cond_5b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
:cond_5b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->k:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->size()I
move-result v0
if-lez v0, :cond_66
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
:goto_66
:cond_66
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
cmpl-float v0, v0, v2
if-eqz v0, :cond_b1
invoke-virtual {v8}, Landroid/graphics/Rect;->width()I
move-result v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v1
if-ne v0, v1, :cond_83
invoke-virtual {v8}, Landroid/graphics/Rect;->height()I
move-result v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v1
if-eq v0, v1, :cond_26a
:cond_83
const/4 v0, 0x2
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
int-to-float v3, v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
int-to-float v4, v0
sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z
move v0, v6
:goto_9a
iget v1, p0, Lcom/mapquest/android/maps/MapView;->H:F
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
int-to-float v3, v3
invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V
invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z
if-eqz v0, :cond_b1
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_b1
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-eqz v0, :cond_149
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v1, v1, Landroid/graphics/Point;->x:I
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->y:I
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/mapquest/android/maps/bs;->a(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget v2, v0, Landroid/graphics/Point;->x:I
iget v3, v0, Landroid/graphics/Point;->y:I
invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/bs;->c(IILandroid/graphics/Point;)Landroid/graphics/Point;
iget v1, p0, Lcom/mapquest/android/maps/MapView;->i:F
iget v2, p0, Lcom/mapquest/android/maps/MapView;->i:F
iget v3, v0, Landroid/graphics/Point;->x:I
int-to-float v3, v3
iget v0, v0, Landroid/graphics/Point;->y:I
int-to-float v0, v0
invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v0, :cond_202
iget v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
move v1, v0
:goto_e6
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->x:I
if-ne v2, v3, :cond_fc
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->y:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
if-eq v2, v3, :cond_142
:cond_fc
invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/MapView;->a(I)Z
move-result v2
if-eqz v2, :cond_142
iget v2, p0, Lcom/mapquest/android/maps/MapView;->c:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v4, v4, Landroid/graphics/Point;->x:I
iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v5, v5, Landroid/graphics/Point;->y:I
invoke-interface {v0, v4, v5}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iput v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v4, v4, Landroid/graphics/Point;->x:I
iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v5, v5, Landroid/graphics/Point;->x:I
sub-int/2addr v4, v5
add-int/2addr v0, v4
iget-object v4, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v4, v4, Landroid/graphics/Point;->y:I
iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v5, v5, Landroid/graphics/Point;->y:I
iget-object v8, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v8, v8, Landroid/graphics/Point;->y:I
sub-int/2addr v5, v8
add-int/2addr v4, v5
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v5
invoke-interface {v5, v0, v4}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
iput v2, p0, Lcom/mapquest/android/maps/MapView;->c:I
iput-object v3, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
:cond_142
const/4 v2, 0x1
invoke-direct {p0, p1, v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/s;IZ)I
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_149
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v0, :cond_153
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-nez v0, :cond_18b
:cond_153
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-nez v0, :cond_215
move v0, v6
:goto_15a
iget v1, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v1, v1, v9
if-eqz v1, :cond_163
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->d()V
:cond_163
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v2, p0, Lcom/mapquest/android/maps/MapView;->c:I
invoke-direct {p0, p1, v1, v2, v0}, Lcom/mapquest/android/maps/MapView;->a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/s;IZ)I
move-result v0
int-to-float v0, v0
const/high16 v1, 0x3f00
iget v2, p0, Lcom/mapquest/android/maps/MapView;->G:I
int-to-float v2, v2
mul-float/2addr v1, v2
cmpl-float v0, v0, v1
if-ltz v0, :cond_18b
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-eqz v0, :cond_18b
const/high16 v0, 0x3f80
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v1, v1, Landroid/graphics/Point;->x:I
int-to-float v1, v1
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->y:I
int-to-float v2, v2
invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->a(FFF)V
:cond_18b
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
sget-object v1, Lcom/mapquest/android/maps/az;->c:Lcom/mapquest/android/maps/az;
if-ne v0, v1, :cond_199
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
invoke-static {p1, p0, v0}, Lcom/mapquest/android/maps/ay;->a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Point;)V
:cond_199
:try_start_199
:try_end_199
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_199} :catch_1f6
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-eqz v0, :cond_1b8
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v0, :cond_1b8
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
iget v1, p0, Lcom/mapquest/android/maps/MapView;->i:F
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
int-to-float v3, v3
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V
:cond_1b8
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
if-eqz v0, :cond_1c8
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
iget-boolean v1, v0, Lcom/mapquest/android/maps/cq;->f:Z
if-eqz v1, :cond_1c8
iget-object v0, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
const/4 v1, 0x0
invoke-virtual {v0, p1, p0, v1}, Lcom/mapquest/android/maps/cu;->a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
:cond_1c8
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
iget-object v0, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_235
iget-object v2, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v2
:try_end_1d5
.catchall {:try_start_199 .. :try_end_1d5} :catchall_25b
:try_start_1d5
iget-object v0, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1db
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_218
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
:try_end_1e7
.catchall {:try_start_1d5 .. :try_end_1e7} :catchall_258
const/4 v4, 0x1
:try_start_1e8
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getDrawingTime()J
invoke-virtual {v0, p1, p0, v4}, Lcom/mapquest/android/maps/bh;->b(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)Z
:try_end_1ee
.catchall {:try_start_1e8 .. :try_end_1ee} :catchall_258
.catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1ee} :catch_1ef
goto :goto_1db
:catch_1ef
move-exception v0
goto :goto_1db
:try_start_1f1
:cond_1f1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
:try_end_1f4
.catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f4} :catch_1f6
goto/16 :goto_66
:catch_1f6
move-exception v0
const-string v1, "mq.android.maps.mapview"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_d
:cond_202
:try_start_202
iget v0, p0, Lcom/mapquest/android/maps/MapView;->c:I
int-to-double v0, v0
iget v2, p0, Lcom/mapquest/android/maps/MapView;->i:F
float-to-double v2, v2
invoke-static {v2, v3}, Lcom/mapquest/android/maps/cv;->a(D)D
move-result-wide v2
sub-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
:try_end_210
.catch Ljava/lang/Exception; {:try_start_202 .. :try_end_210} :catch_1f6
move-result-wide v0
long-to-int v0, v0
move v1, v0
goto/16 :goto_e6
:cond_215
move v0, v7
goto/16 :goto_15a
:try_start_218
:cond_218
iget-object v0, v1, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_21e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_234
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
:try_end_22a
.catchall {:try_start_218 .. :try_end_22a} :catchall_258
const/4 v3, 0x0
:try_start_22b
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getDrawingTime()J
invoke-virtual {v0, p1, p0, v3}, Lcom/mapquest/android/maps/bh;->b(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)Z
:try_end_231
.catchall {:try_start_22b .. :try_end_231} :catchall_258
.catch Ljava/lang/Exception; {:try_start_22b .. :try_end_231} :catch_232
goto :goto_21e
:catch_232
move-exception v0
goto :goto_21e
:try_start_234
:cond_234
monitor-exit v2
:try_start_235
:cond_235
:try_end_235
.catchall {:try_start_234 .. :try_end_235} :catchall_258
iget v0, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v0, v0, v9
if-eqz v0, :cond_242
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v0, :cond_242
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_242
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
sget-object v1, Lcom/mapquest/android/maps/az;->b:Lcom/mapquest/android/maps/az;
if-ne v0, v1, :cond_24d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
invoke-static {p1, p0, v0}, Lcom/mapquest/android/maps/ay;->a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Point;)V
:cond_24d
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->y:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
:try_end_256
.catch Ljava/lang/Exception; {:try_start_235 .. :try_end_256} :catch_1f6
goto/16 :goto_d
:catchall_258
move-exception v0
:try_start_259
monitor-exit v2
throw v0
:try_end_25b
.catchall {:try_start_259 .. :try_end_25b} :catchall_25b
:catchall_25b
move-exception v0
:try_start_25c
iget v1, p0, Lcom/mapquest/android/maps/MapView;->i:F
cmpl-float v1, v1, v9
if-eqz v1, :cond_269
iget-boolean v1, p0, Lcom/mapquest/android/maps/MapView;->h:Z
if-eqz v1, :cond_269
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_269
throw v0
:cond_26a
:try_end_26a
.catch Ljava/lang/Exception; {:try_start_25c .. :try_end_26a} :catch_1f6
move v0, v7
goto/16 :goto_9a
.end method
.method public onFocusChanged(ZILandroid/graphics/Rect;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
invoke-virtual {v2}, Lcom/mapquest/android/maps/bm;->a()Z
const/16 v2, 0x13
if-ne p1, v2, :cond_19
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v2
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v3
div-int/lit8 v3, v3, 0x4
invoke-virtual {v2, v1, v3}, Lcom/mapquest/android/maps/al;->a(II)V
:goto_18
return v0
:cond_19
const/16 v2, 0x14
if-ne p1, v2, :cond_2c
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v2
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v3
div-int/lit8 v3, v3, 0x4
neg-int v3, v3
invoke-virtual {v2, v1, v3}, Lcom/mapquest/android/maps/al;->a(II)V
goto :goto_18
:cond_2c
const/16 v2, 0x16
if-ne p1, v2, :cond_3e
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v2
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v3
div-int/lit8 v3, v3, 0x4
invoke-virtual {v2, v3, v1}, Lcom/mapquest/android/maps/al;->a(II)V
goto :goto_18
:cond_3e
const/16 v2, 0x15
if-ne p1, v2, :cond_51
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v2
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v3
div-int/lit8 v3, v3, 0x4
neg-int v3, v3
invoke-virtual {v2, v3, v1}, Lcom/mapquest/android/maps/al;->a(II)V
goto :goto_18
:cond_51
move v0, v1
goto :goto_18
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
invoke-virtual {v0, p1, p2, p0}, Lcom/mapquest/android/maps/bm;->a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
return v0
.end method
.method protected onLayout(ZIIII)V
.registers 6
invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->a()V
return-void
.end method
.method protected onMeasure(II)V
.registers 10
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V
invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/MapView;->measureChildren(II)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMeasuredWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/mapquest/android/maps/MapView;->resolveSize(II)I
move-result v0
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMeasuredHeight()I
move-result v1
invoke-static {v1, p2}, Lcom/mapquest/android/maps/MapView;->resolveSize(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapView;->setMeasuredDimension(II)V
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I
move-result v2
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I
move-result v3
add-int/lit8 v4, v1, -0x5
sub-int v2, v4, v2
add-int/lit8 v3, v3, 0x5
iget-object v5, p0, Lcom/mapquest/android/maps/MapView;->O:Landroid/graphics/drawable/BitmapDrawable;
const/4 v6, 0x5
invoke-virtual {v5, v6, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
:cond_35
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
if-eqz v2, :cond_59
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v2
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v3
div-int/lit8 v4, v3, 0x2
sub-int/2addr v1, v4
add-int/lit8 v1, v1, -0x5
div-int/lit8 v4, v2, 0x2
sub-int/2addr v0, v4
add-int/lit8 v0, v0, -0x5
new-instance v4, Lcom/mapquest/android/maps/av;
invoke-direct {v4, v2, v3, v0, v1}, Lcom/mapquest/android/maps/av;-><init>(IIII)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_59
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/mapquest/android/maps/MapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
invoke-interface {v0}, Lcom/mapquest/android/maps/cd;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
:cond_c
const-string v1, " - Lcom/mapquest/android/maps/MapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/mapquest/android/maps/MapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
if-nez v0, :cond_d
new-instance v0, Lcom/mapquest/android/maps/bt;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bt;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/cb;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->u:Lcom/mapquest/android/maps/cd;
:cond_d
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->d()V
const-string v1, " - Lcom/mapquest/android/maps/MapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/mapquest/android/maps/MapView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
if-eqz v0, :cond_16
const-string v0, "STATE_CENTER_LAT"
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "STATE_CENTER_LNG"
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_16
const-string v0, "STATE_ZOOM_LEVEL"
iget v1, p0, Lcom/mapquest/android/maps/MapView;->c:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, " - Lcom/mapquest/android/maps/MapView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 9
const/4 v3, 0x1
if-gtz p1, :cond_6
if-gtz p2, :cond_6
:goto_5
return-void
:cond_6
iget v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-eqz v0, :cond_55
iget v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V
:goto_12
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v1
shr-int/lit8 v1, v1, 0x1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v2
shr-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v1, v1, Landroid/graphics/Point;->x:I
iput v1, v0, Landroid/graphics/Point;->x:I
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->j:Landroid/graphics/Point;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v1, v1, Landroid/graphics/Point;->y:I
iput v1, v0, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/cb;
move-result-object v0
if-eqz v0, :cond_44
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/cb;
move-result-object v0
iget v1, p0, Lcom/mapquest/android/maps/MapView;->I:I
iget v2, p0, Lcom/mapquest/android/maps/MapView;->J:I
invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/cb;->a(II)V
:cond_44
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->E:Z
if-nez v0, :cond_4d
iput-boolean v3, p0, Lcom/mapquest/android/maps/MapView;->E:Z
invoke-static {v3}, Lcom/mapquest/android/maps/g;->a(I)V
:cond_4d
const/4 v0, 0x5
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->d()V
goto :goto_5
:cond_55
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->J:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->I:I
goto :goto_12
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->r:Landroid/content/Context;
const-string v3, "input_method"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWindowToken()Landroid/os/IBinder;
move-result-object v3
invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->isClickable()Z
move-result v0
if-eqz v0, :cond_59
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->isEnabled()Z
move-result v0
if-eqz v0, :cond_59
iget-boolean v0, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
:goto_34
:cond_34
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->requestFocus()Z
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/bm;->a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_4b
move v0, v1
:goto_40
return v0
:cond_41
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V
goto :goto_34
:cond_4b
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->g:Lcom/mapquest/android/maps/ch;
invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/ch;->a(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_59
move v0, v1
goto :goto_40
:cond_59
move v0, v2
goto :goto_40
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 9
const/high16 v4, 0x42c8
const/4 v1, 0x1
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->l:Lcom/mapquest/android/maps/bm;
invoke-virtual {v0, p1, p0}, Lcom/mapquest/android/maps/bm;->b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_c
:cond_b
:goto_b
return v1
:cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->A:Lcom/mapquest/android/maps/e;
if-nez v0, :cond_17
new-instance v0, Lcom/mapquest/android/maps/e;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/e;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->A:Lcom/mapquest/android/maps/e;
:cond_17
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->A:Lcom/mapquest/android/maps/e;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v0, v0, 0xff
if-nez v0, :cond_40
iget-boolean v0, v2, Lcom/mapquest/android/maps/e;->b:Z
if-nez v0, :cond_3e
move v0, v1
:goto_26
iput-boolean v0, v2, Lcom/mapquest/android/maps/e;->b:Z
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
const/4 v3, 0x6
iput v3, v0, Landroid/os/Message;->what:I
invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "state"
iget-boolean v2, v2, Lcom/mapquest/android/maps/e;->b:Z
invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(Landroid/os/Message;)V
goto :goto_b
:cond_3e
const/4 v0, 0x0
goto :goto_26
:cond_40
const/4 v3, 0x2
if-ne v0, v3, :cond_b
iget-boolean v0, v2, Lcom/mapquest/android/maps/e;->b:Z
if-eqz v0, :cond_87
const-string v0, "com.mapquest.android.maps.defaulttrackballhandler"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "zoom mode:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-double v3, v0
const-wide/16 v5, 0x0
cmpl-double v0, v3, v5
if-eqz v0, :cond_b
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
cmpg-float v0, v0, v3
if-gez v0, :cond_7d
iget-object v0, v2, Lcom/mapquest/android/maps/e;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->b()Z
goto :goto_b
:cond_7d
iget-object v0, v2, Lcom/mapquest/android/maps/e;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->a()Z
goto :goto_b
:cond_87
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
mul-float/2addr v0, v4
neg-float v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
mul-float/2addr v3, v4
neg-float v3, v3
iget-object v2, v2, Lcom/mapquest/android/maps/e;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v2
float-to-int v0, v0
float-to-int v3, v3
invoke-virtual {v2, v0, v3}, Lcom/mapquest/android/maps/al;->a(II)V
goto/16 :goto_b
.end method
.method public setBottomMargin(I)V
.registers 2
iput p1, p0, Lcom/mapquest/android/maps/MapView;->R:I
return-void
.end method
.method public setBuiltInZoomControls(Z)V
.registers 5
const/4 v1, 0x0
iput-boolean p1, p0, Lcom/mapquest/android/maps/MapView;->v:Z
if-eqz p1, :cond_36
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-nez v0, :cond_21
new-instance v0, Landroid/widget/ZoomButtonsController;
invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
const-wide/16 v1, 0x7d0
invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
new-instance v1, Lcom/mapquest/android/maps/as;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/as;-><init>(Lcom/mapquest/android/maps/MapView;)V
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V
:cond_21
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V
:cond_35
:goto_35
return-void
:cond_36
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->x:Landroid/widget/ZoomButtonsController;
invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
:cond_3f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->w:Landroid/widget/ZoomControls;
invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V
goto :goto_35
.end method
.method public setFocalPoint(Landroid/graphics/Point;)V
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v1, p1, Landroid/graphics/Point;->x:I
iget v2, p1, Landroid/graphics/Point;->y:I
invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget v1, p0, Lcom/mapquest/android/maps/MapView;->H:F
iget v2, p1, Landroid/graphics/Point;->x:I
iget v3, p1, Landroid/graphics/Point;->y:I
invoke-virtual {v0, v1, v2, v3}, Lcom/mapquest/android/maps/bs;->a(FII)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->f()V
const/16 v0, 0x17
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
return-void
.end method
.method public setLeftMargin(I)V
.registers 2
iput p1, p0, Lcom/mapquest/android/maps/MapView;->T:I
return-void
.end method
.method public setLoadingTile(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->D:Landroid/graphics/Bitmap;
return-void
.end method
.method  setLogoShown(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mapquest/android/maps/MapView;->y:Z
return-void
.end method
.method  setMapFactory(Lcom/mapquest/android/maps/an;)V
.registers 4
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/an;
move-result-object v0
if-ne p1, v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/an;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Lcom/mapquest/android/maps/ao;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ao;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
:cond_18
:goto_18
new-instance v0, Lcom/mapquest/android/maps/bs;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1}, Lcom/mapquest/android/maps/ce;->c()Lcom/mapquest/android/maps/bq;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bs;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/bq;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
sget-object v1, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
if-eqz v0, :cond_32
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->a()V
:cond_32
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
if-lez v0, :cond_6
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v0
if-lez v0, :cond_6
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
goto :goto_6
:cond_42
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/an;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
new-instance v0, Lcom/mapquest/android/maps/ap;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ap;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
goto :goto_18
:cond_54
sget-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/an;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
new-instance v0, Lcom/mapquest/android/maps/cg;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/cg;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
goto :goto_18
.end method
.method  setMapProvider(Lcom/mapquest/android/maps/an;)V
.registers 4
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/an;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/c;
move-result-object v0
iget-object v0, v0, Lcom/mapquest/android/maps/c;->d:Ljava/lang/String;
if-nez v0, :cond_32
:cond_10
new-instance v0, Lcom/mapquest/android/maps/ao;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ao;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
:goto_19
new-instance v0, Lcom/mapquest/android/maps/bs;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1}, Lcom/mapquest/android/maps/ce;->c()Lcom/mapquest/android/maps/bq;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bs;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/bq;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iget-boolean v0, v0, Lcom/mapquest/android/maps/c;->c:Z
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iget-boolean v0, v0, Lcom/mapquest/android/maps/c;->b:Z
invoke-direct {p0}, Lcom/mapquest/android/maps/MapView;->b()V
return-void
:cond_32
sget-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/an;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
new-instance v0, Lcom/mapquest/android/maps/cg;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/cg;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
goto :goto_19
:cond_44
new-instance v0, Lcom/mapquest/android/maps/ap;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->t:Lcom/mapquest/android/maps/ai;
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ap;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
goto :goto_19
.end method
.method  setMapRotation(F)V
.registers 7
const/4 v4, 0x0
const/high16 v1, 0x43b4
iget v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
cmpl-float v0, v0, p1
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
add-float v0, p1, v1
rem-float/2addr v0, v1
iput v0, p0, Lcom/mapquest/android/maps/MapView;->H:F
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
iget-object v3, p0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->y:I
invoke-virtual {v1, v0, v2, v3}, Lcom/mapquest/android/maps/bs;->a(FII)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v2
invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->K:Lcom/mapquest/android/maps/bs;
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/bs;->a(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->J:I
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->U:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/MapView;->I:I
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->f()V
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
goto :goto_9
.end method
.method public setReticleDrawMode(Lcom/mapquest/android/maps/az;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->M:Lcom/mapquest/android/maps/az;
return-void
.end method
.method public setRightMargin(I)V
.registers 2
iput p1, p0, Lcom/mapquest/android/maps/MapView;->S:I
return-void
.end method
.method public setSatellite(Z)V
.registers 5
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iput-boolean p1, v0, Lcom/mapquest/android/maps/c;->c:Z
iget-object v1, v0, Lcom/mapquest/android/maps/c;->a:Lcom/mapquest/android/maps/MapView;
iget-boolean v2, v0, Lcom/mapquest/android/maps/c;->c:Z
iget-boolean v0, v0, Lcom/mapquest/android/maps/c;->b:Z
invoke-direct {v1}, Lcom/mapquest/android/maps/MapView;->b()V
return-void
.end method
.method public setStreetView(Z)V
.registers 2
return-void
.end method
.method  setTermsShown(Z)V
.registers 4
iput-boolean p1, p0, Lcom/mapquest/android/maps/MapView;->z:Z
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
if-eqz v0, :cond_e
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->P:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_e
.end method
.method public setTileLayerPaint(Landroid/graphics/Paint;)V
.registers 3
const/4 v0, 0x1
if-nez p1, :cond_8
new-instance p1, Landroid/graphics/Paint;
invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V
:cond_8
invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V
invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iput-object p1, p0, Lcom/mapquest/android/maps/MapView;->C:Landroid/graphics/Paint;
return-void
.end method
.method public setTopMargin(I)V
.registers 2
iput p1, p0, Lcom/mapquest/android/maps/MapView;->Q:I
return-void
.end method
.method public setTraffic(Z)V
.registers 8
const/4 v5, 0x0
const-string v0, "mq.android.maps.mapview"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "setTraffic in MapView: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mapquest/android/maps/MapView;->L:Lcom/mapquest/android/maps/an;
iget-object v2, v2, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p1, :cond_84
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/c;
move-result-object v0
iget-object v1, v0, Lcom/mapquest/android/maps/c;->g:Ljava/lang/String;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->n:Lcom/mapquest/android/maps/c;
iget-object v2, v0, Lcom/mapquest/android/maps/c;->e:Ljava/lang/String;
if-nez v2, :cond_6b
iget-object v0, v0, Lcom/mapquest/android/maps/c;->d:Ljava/lang/String;
:goto_29
const-string v2, "mq.android.maps.mapview"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Creating traffic manager with key: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Lcom/mapquest/android/maps/cq;
invoke-direct {v2, p0, v1, v0}, Lcom/mapquest/android/maps/cq;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
if-eqz p1, :cond_6e
iget-boolean v1, v0, Lcom/mapquest/android/maps/cq;->g:Z
if-eqz v1, :cond_6e
new-instance v1, Lcom/mapquest/android/maps/cu;
invoke-direct {v1, v0, v5}, Lcom/mapquest/android/maps/cu;-><init>(Lcom/mapquest/android/maps/cq;B)V
iput-object v1, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
iget-object v2, v0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/c;
move-result-object v2
iget v2, v2, Lcom/mapquest/android/maps/c;->f:I
iput v2, v1, Lcom/mapquest/android/maps/cu;->a:I
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->h:Landroid/os/Handler;
invoke-static {v1}, Lcom/mapquest/android/maps/g;->a(Landroid/os/Handler;)V
invoke-virtual {v0}, Lcom/mapquest/android/maps/cq;->b()V
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/mapquest/android/maps/cq;->f:Z
:goto_6a
:cond_6a
return-void
:cond_6b
iget-object v0, v0, Lcom/mapquest/android/maps/c;->e:Ljava/lang/String;
goto :goto_29
:cond_6e
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
if-eqz v1, :cond_77
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
invoke-virtual {v1}, Lcom/mapquest/android/maps/cu;->c()V
:cond_77
iput-boolean v5, v0, Lcom/mapquest/android/maps/cq;->f:Z
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->h:Landroid/os/Handler;
invoke-static {v1}, Lcom/mapquest/android/maps/g;->b(Landroid/os/Handler;)V
iget-object v0, v0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
goto :goto_6a
:cond_84
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
invoke-virtual {v0}, Lcom/mapquest/android/maps/cq;->a()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/MapView;->f:Lcom/mapquest/android/maps/cq;
invoke-virtual {p0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
goto :goto_6a
.end method
.method  setZoomLevel(I)V
.registers 4
const/16 v0, 0x12
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-le p1, v0, :cond_9
iget-object v1, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
move p1, v0
:cond_9
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-gtz p1, :cond_10
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
const/4 p1, 0x1
:cond_10
iget-object v0, p0, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;
invoke-virtual {p0, v0, p1}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/s;I)V
return-void
.end method