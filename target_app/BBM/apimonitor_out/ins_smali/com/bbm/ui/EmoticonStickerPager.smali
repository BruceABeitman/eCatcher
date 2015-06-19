.class public Lcom/bbm/ui/EmoticonStickerPager;
.super Landroid/widget/LinearLayout;
.source "EmoticonStickerPager.java"
.field private static b:Z
.field private static c:[I
.field private static d:I
.field private static e:I
.field private static final t:Lcom/bbm/d/a;
.field private A:Lcom/bbm/ui/gi;
.field private B:Landroid/view/View$OnClickListener;
.field private C:Lcom/bbm/ui/gj;
.field private final D:Ljava/util/ArrayList;
.field private final E:Ljava/util/ArrayList;
.field private final F:Lcom/bbm/d/b/f;
.field final a:Lcom/bbm/ui/cd;
.field private final f:Landroid/support/v4/view/ViewPager;
.field private final g:Lcom/bbm/ui/EmoticonPicker;
.field private final h:Landroid/view/View;
.field private final i:Landroid/widget/ImageButton;
.field private final j:Landroid/widget/ImageButton;
.field private final k:Landroid/widget/ImageButton;
.field private final l:Landroid/view/View;
.field private m:Landroid/view/View;
.field private n:Z
.field private o:Landroid/widget/PopupWindow;
.field private p:Landroid/widget/ImageView;
.field private q:Lcom/bbm/util/b/i;
.field private r:I
.field private final s:Landroid/view/View;
.field private u:Lcom/bbm/ui/StickerPicker;
.field private final v:Lit/sephiroth/android/library/widget/HListView;
.field private final w:Lcom/bbm/ui/ch;
.field private final x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field private y:I
.field private final z:Landroid/view/View$OnClickListener;
.method static constructor <clinit>()V
.registers 2
const/4 v1, -0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/ui/EmoticonStickerPager;->b:Z
const/4 v0, 0x0
sput-object v0, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
sput v1, Lcom/bbm/ui/EmoticonStickerPager;->d:I
sput v1, Lcom/bbm/ui/EmoticonStickerPager;->e:I
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sput-object v0, Lcom/bbm/ui/EmoticonStickerPager;->t:Lcom/bbm/d/a;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/EmoticonStickerPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/EmoticonStickerPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, 0x0
const/4 v2, 0x1
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->r:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->u:Lcom/bbm/ui/StickerPicker;
iput v3, p0, Lcom/bbm/ui/EmoticonStickerPager;->y:I
new-instance v0, Lcom/bbm/ui/bs;
invoke-direct {v0, p0}, Lcom/bbm/ui/bs;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->z:Landroid/view/View$OnClickListener;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->D:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->E:Ljava/util/ArrayList;
new-instance v0, Lcom/bbm/ui/bt;
invoke-direct {v0, p0}, Lcom/bbm/ui/bt;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->F:Lcom/bbm/d/b/f;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030128
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a058c
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->h:Landroid/view/View;
const v0, 0x7f0a02b9
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->i:Landroid/widget/ImageButton;
const v0, 0x7f0a0590
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->j:Landroid/widget/ImageButton;
const v0, 0x7f0a058e
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->k:Landroid/widget/ImageButton;
const v0, 0x7f0a058f
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->l:Landroid/view/View;
const v0, 0x7f0a0593
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->s:Landroid/view/View;
new-instance v0, Lcom/bbm/ui/ch;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/ch;-><init>(Lcom/bbm/ui/EmoticonStickerPager;Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->w:Lcom/bbm/ui/ch;
const v0, 0x7f0a0591
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/HListView;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->v:Lit/sephiroth/android/library/widget/HListView;
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->v:Lit/sephiroth/android/library/widget/HListView;
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->w:Lcom/bbm/ui/ch;
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->v:Lit/sephiroth/android/library/widget/HListView;
new-instance v1, Lcom/bbm/ui/bv;
invoke-direct {v1, p0}, Lcom/bbm/ui/bv;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/v;)V
const v0, 0x7f0a02b7
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/EmoticonPicker;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->g:Lcom/bbm/ui/EmoticonPicker;
new-instance v0, Lcom/bbm/ui/cd;
invoke-direct {v0, p0}, Lcom/bbm/ui/cd;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->a:Lcom/bbm/ui/cd;
const v0, 0x7f0a0592
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->a:Lcom/bbm/ui/cd;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
new-instance v1, Lcom/bbm/ui/bw;
invoke-direct {v1, p0}, Lcom/bbm/ui/bw;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bu;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->i:Landroid/widget/ImageButton;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->i:Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->z:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->j:Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->z:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->k:Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->z:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/EmoticonStickerPager;->setStickerPickerEnabled(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
new-instance v1, Lcom/bbm/ui/bx;
invoke-direct {v1, p0}, Lcom/bbm/ui/bx;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
new-instance v0, Lcom/bbm/ui/by;
invoke-direct {v0, p0}, Lcom/bbm/ui/by;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/EmoticonStickerPager;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
invoke-direct {p0}, Lcom/bbm/ui/EmoticonStickerPager;->b()V
const-string v1, "stickers_preview_show_hint"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->n:Z
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0203
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0146
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b037d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
new-instance v2, Lcom/bbm/ui/bz;
invoke-direct {v2, p0, v1, v0}, Lcom/bbm/ui/bz;-><init>(Lcom/bbm/ui/EmoticonStickerPager;II)V
iput-object v2, p0, Lcom/bbm/ui/EmoticonStickerPager;->C:Lcom/bbm/ui/gj;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->B:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonStickerPager;Landroid/widget/ImageView;)Landroid/widget/ImageView;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->p:Landroid/widget/ImageView;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonStickerPager;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->o:Landroid/widget/PopupWindow;
return-object p1
.end method
.method static synthetic a()Lcom/bbm/d/a;
.registers 1
sget-object v0, Lcom/bbm/ui/EmoticonStickerPager;->t:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonStickerPager;Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/StickerPicker;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->u:Lcom/bbm/ui/StickerPicker;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonStickerPager;ZI)V
.registers 9
const/4 v3, 0x1
const/4 v5, -0x1
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v4, p0, Lcom/bbm/ui/EmoticonStickerPager;->g:Lcom/bbm/ui/EmoticonPicker;
if-eqz p1, :cond_79
move v0, v1
:goto_a
invoke-virtual {v4, v0}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V
iget-object v4, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
if-eqz p1, :cond_7b
move v0, v2
:goto_12
invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->i:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v4, p0, Lcom/bbm/ui/EmoticonStickerPager;->j:Landroid/widget/ImageButton;
if-nez p1, :cond_7d
move v0, v3
:goto_1f
invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setSelected(Z)V
if-eqz p1, :cond_2b
iput v5, p0, Lcom/bbm/ui/EmoticonStickerPager;->r:I
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->w:Lcom/bbm/ui/ch;
invoke-virtual {v0}, Lcom/bbm/ui/ch;->notifyDataSetChanged()V
:cond_2b
if-eq p2, v5, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, p2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_3d
invoke-virtual {p0, p2}, Lcom/bbm/ui/EmoticonStickerPager;->setTabBarPosition(I)V
:cond_3d
iget-boolean v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->n:Z
if-eqz v0, :cond_7f
if-nez p1, :cond_7f
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_7f
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
if-nez v0, :cond_73
const v0, 0x7f0a0594
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
new-instance v2, Lcom/bbm/ui/cb;
invoke-direct {v2, p0}, Lcom/bbm/ui/cb;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
const v2, 0x7f0a0596
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/bbm/ui/cc;
invoke-direct {v2, p0}, Lcom/bbm/ui/cc;-><init>(Lcom/bbm/ui/EmoticonStickerPager;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_73
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_78
:goto_78
return-void
:cond_79
move v0, v2
goto :goto_a
:cond_7b
move v0, v1
goto :goto_12
:cond_7d
move v0, v1
goto :goto_1f
:cond_7f
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
if-eqz v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_78
.end method
.method public static a(Landroid/view/MotionEvent;)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
sget-boolean v2, Lcom/bbm/ui/EmoticonStickerPager;->b:Z
if-eqz v2, :cond_36
sget-object v2, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
if-eqz v2, :cond_36
sget-object v2, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
aget v2, v2, v1
sget-object v3, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
aget v3, v3, v0
sget v4, Lcom/bbm/ui/EmoticonStickerPager;->d:I
sget v5, Lcom/bbm/ui/EmoticonStickerPager;->e:I
invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F
move-result v6
invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F
move-result v7
int-to-float v8, v2
cmpl-float v8, v6, v8
if-ltz v8, :cond_36
add-int/2addr v2, v4
int-to-float v2, v2
cmpg-float v2, v6, v2
if-gez v2, :cond_36
int-to-float v2, v3
cmpl-float v2, v7, v2
if-ltz v2, :cond_36
add-int v2, v3, v5
int-to-float v2, v2
cmpg-float v2, v7, v2
if-gez v2, :cond_36
:goto_35
return v0
:cond_36
move v0, v1
goto :goto_35
.end method
.method private b()V
.registers 8
const-wide/16 v5, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "stickers_last_viewed_time"
invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
const-string v3, "stickers_newest_publish_time"
invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
cmp-long v0, v1, v5
if-eqz v0, :cond_1e
cmp-long v0, v1, v3
if-gez v0, :cond_25
:cond_1e
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->l:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_24
return-void
:cond_25
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->l:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_24
.end method
.method static synthetic b(Lcom/bbm/ui/EmoticonStickerPager;)V
.registers 2
const/4 v0, 0x2
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
sget-object v0, Lcom/bbm/ui/EmoticonStickerPager;->c:[I
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonStickerPager;->getLocationOnScreen([I)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getWidth()I
move-result v0
sput v0, Lcom/bbm/ui/EmoticonStickerPager;->d:I
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonStickerPager;->getHeight()I
move-result v0
sput v0, Lcom/bbm/ui/EmoticonStickerPager;->e:I
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/EmoticonStickerPager;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/EmoticonStickerPager;->b()V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->o:Landroid/widget/PopupWindow;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->p:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/util/b/i;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->q:Lcom/bbm/util/b/i;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/EmoticonStickerPager;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->n:Z
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->m:Landroid/view/View;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->D:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->E:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/StickerPicker;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->u:Lcom/bbm/ui/StickerPicker;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/gi;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->A:Lcom/bbm/ui/gi;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/d/b/f;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->F:Lcom/bbm/d/b/f;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/ch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->w:Lcom/bbm/ui/ch;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->j:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic q(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/gj;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->C:Lcom/bbm/ui/gj;
return-object v0
.end method
.method static synthetic r(Lcom/bbm/ui/EmoticonStickerPager;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->r:I
return v0
.end method
.method public getEmoticonPicker()Lcom/bbm/ui/EmoticonPicker;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->g:Lcom/bbm/ui/EmoticonPicker;
return-object v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public setImageWorker(Lcom/bbm/util/b/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->q:Lcom/bbm/util/b/i;
return-void
.end method
.method public setMonitorState(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->a:Lcom/bbm/ui/cd;
invoke-virtual {v0, p1}, Lcom/bbm/ui/cd;->a(Z)V
return-void
.end method
.method public setOnCartClickedListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->B:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setStickerPickerEnabled(Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v3, p0, Lcom/bbm/ui/EmoticonStickerPager;->h:Landroid/view/View;
if-eqz p1, :cond_19
move v0, v1
:goto_8
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->s:Landroid/view/View;
if-eqz p1, :cond_10
move v2, v1
:cond_10
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
return-void
:cond_19
move v0, v2
goto :goto_8
.end method
.method public setStickerPickerListener(Lcom/bbm/ui/gi;)V
.registers 3
new-instance v0, Lcom/bbm/ui/ca;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/ca;-><init>(Lcom/bbm/ui/EmoticonStickerPager;Lcom/bbm/ui/gi;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->A:Lcom/bbm/ui/gi;
return-void
.end method
.method public setTabBarPosition(I)V
.registers 3
iget v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->r:I
if-eq v0, p1, :cond_13
const/4 v0, -0x1
if-eq p1, v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->v:Lit/sephiroth/android/library/widget/HListView;
invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
:cond_c
iput p1, p0, Lcom/bbm/ui/EmoticonStickerPager;->r:I
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->w:Lcom/bbm/ui/ch;
invoke-virtual {v0}, Lcom/bbm/ui/ch;->notifyDataSetChanged()V
:cond_13
return-void
.end method
.method public setVisibility(I)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V
if-nez p1, :cond_10
const/4 v0, 0x1
:goto_6
sput-boolean v0, Lcom/bbm/ui/EmoticonStickerPager;->b:Z
iget-object v0, p0, Lcom/bbm/ui/EmoticonStickerPager;->a:Lcom/bbm/ui/cd;
sget-boolean v1, Lcom/bbm/ui/EmoticonStickerPager;->b:Z
invoke-virtual {v0, v1}, Lcom/bbm/ui/cd;->a(Z)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_6
.end method