.class public Lcom/bbm/ui/EmoticonInputPanel;
.super Landroid/widget/LinearLayout;
.source "EmoticonInputPanel.java"
.implements Lcom/bbm/ui/br;
.field static a:I
.field  b:Lcom/bbm/ui/bl;
.field public final c:Landroid/widget/ImageButton;
.field public final d:Landroid/widget/FrameLayout;
.field final e:Landroid/widget/FrameLayout;
.field private final f:Lcom/bbm/ui/SendEditText;
.field private g:Z
.field private final h:Lcom/bbm/ui/views/EphemeralPickerPin;
.field private final i:Landroid/widget/ImageButton;
.field private final j:Landroid/view/View;
.field private k:Lcom/bbm/ui/EmoticonStickerPager;
.field private l:Lcom/bbm/ui/gi;
.field private m:Landroid/view/View$OnClickListener;
.field private n:Lcom/bbm/util/b/i;
.field private o:Z
.field private p:I
.field private q:I
.field private r:I
.field private final s:Ljava/util/Map;
.field private final t:Ljava/util/List;
.field private u:Lcom/bbm/j/r;
.field private v:Lcom/bbm/ui/bm;
.field private w:I
.field private final x:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/EmoticonInputPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/EmoticonInputPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v2, 0x0
const/4 v4, 0x1
const/4 v3, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
iput-boolean v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->g:Z
iput-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->l:Lcom/bbm/ui/gi;
iput-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->m:Landroid/view/View$OnClickListener;
iput-boolean v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->o:Z
iput v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
iput v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->q:I
iput v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->r:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->t:Ljava/util/List;
new-instance v0, Lcom/bbm/util/cr;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-direct {v0, v2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->u:Lcom/bbm/j/r;
iput v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
new-instance v0, Lcom/bbm/ui/bk;
invoke-direct {v0, p0}, Lcom/bbm/ui/bk;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->x:Landroid/view/View$OnClickListener;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f03011c
invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
const v0, 0x7f09006b
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setBackgroundResource(I)V
invoke-virtual {p0, v4}, Lcom/bbm/ui/EmoticonInputPanel;->setFocusable(Z)V
invoke-virtual {p0, v4}, Lcom/bbm/ui/EmoticonInputPanel;->setFocusableInTouchMode(Z)V
const v0, 0x7f0a0572
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->d:Landroid/widget/FrameLayout;
const v0, 0x7f0a0574
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
invoke-static {}, Lcom/bbm/ui/EmoticonInputPanel;->getLowePaneHeight()I
move-result v2
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
new-instance v2, Lcom/bbm/ui/bb;
invoke-direct {v2, p0}, Lcom/bbm/ui/bb;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a0573
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->j:Landroid/view/View;
const v0, 0x7f0a056f
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
const v0, 0x7f0a02b6
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->i:Landroid/widget/ImageButton;
const v0, 0x7f0a0571
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/views/EphemeralPickerPin;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
new-instance v2, Lcom/bbm/ui/bd;
invoke-direct {v2, p0}, Lcom/bbm/ui/bd;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->i:Landroid/widget/ImageButton;
new-instance v2, Lcom/bbm/ui/be;
invoke-direct {v2, p0}, Lcom/bbm/ui/be;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
new-instance v2, Lcom/bbm/ui/bf;
invoke-direct {v2, p0}, Lcom/bbm/ui/bf;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/views/EphemeralPickerPin;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0570
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/SendEditText;
iput-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getId()I
move-result v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/SendEditText;->setNextFocusLeftId(I)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getId()I
move-result v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/SendEditText;->setNextFocusRightId(I)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
new-instance v2, Lcom/bbm/ui/bg;
invoke-direct {v2, p0}, Lcom/bbm/ui/bg;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/SendEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget-object v2, Lcom/bbm/ad;->EmoticonInputPanel:[I
invoke-virtual {v0, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
const/4 v0, 0x3
:try_start_f7
invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-virtual {v3, v0}, Lcom/bbm/ui/SendEditText;->setHint(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
const/4 v3, 0x0
invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
iget-object v3, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
if-eqz v0, :cond_123
move v0, v1
:goto_10b
invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
const/4 v0, 0x2
const/4 v1, 0x0
invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->a(Z)V
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->g:Z
:try_end_11f
.catchall {:try_start_f7 .. :try_end_11f} :catchall_126
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_123
const/16 v0, 0x8
goto :goto_10b
:catchall_126
move-exception v0
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
throw v0
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/bl;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/EmoticonInputPanel;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->o:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/gi;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->l:Lcom/bbm/ui/gi;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/EmoticonInputPanel;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->m:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->u:Lcom/bbm/j/r;
return-object v0
.end method
.method private e()V
.registers 10
const/4 v8, -0x2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->t:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03011d
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
const v1, 0x7f0a0575
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->v:Lcom/bbm/ui/bm;
invoke-interface {v1}, Lcom/bbm/ui/bm;->a()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_33
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_8f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/util/Pair;
iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
new-instance v4, Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V
iget-object v5, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
new-instance v7, Lcom/bbm/ui/bn;
invoke-direct {v7, v4}, Lcom/bbm/ui/bn;-><init>(Landroid/widget/ImageButton;)V
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v5, p0, Lcom/bbm/ui/EmoticonInputPanel;->t:Ljava/util/List;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
const v1, 0x106000d
invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->x:Landroid/view/View$OnClickListener;
invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v2, 0x3f80
invoke-direct {v1, v8, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_33
:cond_8f
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->q:I
if-lez v0, :cond_98
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->q:I
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setSelectedQuickShareAction(I)V
:cond_98
return-void
.end method
.method private static getLowePaneHeight()I
.registers 2
sget v0, Lcom/bbm/ui/EmoticonInputPanel;->a:I
if-nez v0, :cond_16
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0203
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v0
float-to-int v0, v0
sput v0, Lcom/bbm/ui/EmoticonInputPanel;->a:I
:cond_16
sget v0, Lcom/bbm/ui/EmoticonInputPanel;->a:I
return v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
sget-object v0, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
if-eqz p1, :cond_b
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->setVisibility(I)V
iput-boolean p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->o:Z
return-void
:cond_b
const/16 v0, 0x8
goto :goto_5
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->o:Z
if-eqz v0, :cond_a
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_28
sget-object v0, Lcom/bbm/ui/bl;->a:Lcom/bbm/ui/bl;
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->k:Lcom/bbm/ui/EmoticonStickerPager;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->k:Lcom/bbm/ui/EmoticonStickerPager;
iget-object v0, v0, Lcom/bbm/ui/EmoticonStickerPager;->a:Lcom/bbm/ui/cd;
iget-object v1, v0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;
if-eqz v1, :cond_1c
iget-object v1, v0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;
invoke-virtual {v1}, Lcom/bbm/j/u;->e()V
:cond_1c
new-instance v1, Lcom/bbm/ui/cf;
invoke-direct {v1, v0, p1}, Lcom/bbm/ui/cf;-><init>(Lcom/bbm/ui/cd;Ljava/lang/String;)V
iput-object v1, v0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;
iget-object v0, v0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
:cond_28
return-void
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
sget-object v1, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final c()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
sget-object v1, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
if-eq v0, v1, :cond_d
sget-object v0, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final d()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/bn;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/bbm/ui/bn;->c:Z
goto :goto_a
:cond_1a
return-void
.end method
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
move-result v0
if-eqz v0, :cond_24
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_24
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->b()Z
move-result v0
if-eqz v0, :cond_24
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
const/4 v0, 0x1
:goto_23
return v0
:cond_24
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_23
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v0
instance-of v1, v0, Lcom/bbm/ui/activities/ev;
if-eqz v1, :cond_14
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-nez v1, :cond_19
check-cast v0, Lcom/bbm/ui/activities/ev;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/ui/activities/ev;->y:Z
:goto_14
:cond_14
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:cond_19
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v2, :cond_14
check-cast v0, Lcom/bbm/ui/activities/ev;
iput-boolean v2, v0, Lcom/bbm/ui/activities/ev;->y:Z
goto :goto_14
.end method
.method public getLowerPanelMode()Lcom/bbm/ui/bl;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
return-object v0
.end method
.method public getTimebombCount()I
.registers 2
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
return v0
.end method
.method public setDefaultSelectedQuickShareAction(I)V
.registers 2
iput p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->q:I
return-void
.end method
.method public setHasStickerPicker(Z)V
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->g:Z
return-void
.end method
.method public setHasTimeableContent(Lcom/bbm/j/r;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->u:Lcom/bbm/j/r;
return-void
.end method
.method public setImageWorker(Lcom/bbm/util/b/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->n:Lcom/bbm/util/b/i;
return-void
.end method
.method public setLowerPanel(Lcom/bbm/ui/bl;)V
.registers 10
const/16 v7, 0x10
const/4 v6, -0x1
const/16 v5, 0x30
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
if-ne v0, p1, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
if-eqz v0, :cond_b
sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
if-ne p1, v1, :cond_20
invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_20
sget-object p1, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
:cond_20
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "EmotionInputPanel mode: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/bbm/ui/bl;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
sget-object v2, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
if-eq v1, v2, :cond_44
sget-object v2, Lcom/bbm/ui/bl;->f:Lcom/bbm/ui/bl;
if-ne v1, v2, :cond_53
:cond_44
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:cond_53
const/4 v1, 0x0
iput-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->k:Lcom/bbm/ui/EmoticonStickerPager;
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->i:Landroid/widget/ImageButton;
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
invoke-virtual {v1, v3}, Lcom/bbm/ui/views/EphemeralPickerPin;->setSelected(Z)V
sget-object v1, Lcom/bbm/ui/bc;->a:[I
invoke-virtual {p1}, Lcom/bbm/ui/bl;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_142
goto :goto_b
:pswitch_71
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->i:Landroid/widget/ImageButton;
invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V
new-instance v1, Lcom/bbm/ui/EmoticonStickerPager;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->n:Lcom/bbm/util/b/i;
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setImageWorker(Lcom/bbm/util/b/i;)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1}, Lcom/bbm/ui/EmoticonStickerPager;->getEmoticonPicker()Lcom/bbm/ui/EmoticonPicker;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/bbm/ui/EmoticonPicker;->setEmoticonPickerListener(Lcom/bbm/ui/br;)V
new-instance v2, Lcom/bbm/ui/bh;
invoke-direct {v2, p0}, Lcom/bbm/ui/bh;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setStickerPickerListener(Lcom/bbm/ui/gi;)V
new-instance v2, Lcom/bbm/ui/bi;
invoke-direct {v2, p0}, Lcom/bbm/ui/bi;-><init>(Lcom/bbm/ui/EmoticonInputPanel;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setOnCartClickedListener(Landroid/view/View$OnClickListener;)V
iget-boolean v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->g:Z
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setMonitorState(Z)V
iget-boolean v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->g:Z
invoke-virtual {v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->setStickerPickerEnabled(Z)V
iput-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->k:Lcom/bbm/ui/EmoticonStickerPager;
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V
goto/16 :goto_b
:pswitch_c7
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-virtual {v1}, Lcom/bbm/ui/SendEditText;->requestFocus()Z
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->f:Lcom/bbm/ui/SendEditText;
invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
sget-object v1, Lcom/bbm/ui/bl;->f:Lcom/bbm/ui/bl;
iput-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V
goto/16 :goto_b
:pswitch_e6
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V
invoke-direct {p0}, Lcom/bbm/ui/EmoticonInputPanel;->e()V
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V
goto/16 :goto_b
:pswitch_101
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
invoke-virtual {v1, v4}, Lcom/bbm/ui/views/EphemeralPickerPin;->setSelected(Z)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V
new-instance v1, Lcom/bbm/ui/bj;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, p0, v2}, Lcom/bbm/ui/bj;-><init>(Lcom/bbm/ui/EmoticonInputPanel;Landroid/content/Context;)V
iget v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
invoke-virtual {v1, v2}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->u:Lcom/bbm/j/r;
invoke-virtual {v1, v2}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setHasTimeableContent(Lcom/bbm/j/r;)V
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V
goto/16 :goto_b
:pswitch_131
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V
goto/16 :goto_b
nop
:pswitch_data_142
.packed-switch 0x1
:pswitch_71
:pswitch_c7
:pswitch_e6
:pswitch_101
:pswitch_131
.end packed-switch
.end method
.method public setOnCartClickedListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->m:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setOnQuickShareActionSelectedListener(Lcom/bbm/ui/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->v:Lcom/bbm/ui/bm;
return-void
.end method
.method public setPreCameraSelectedQuickShareAction()V
.registers 2
sget-object v0, Lcom/bbm/ui/bl;->d:Lcom/bbm/ui/bl;
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->r:I
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setSelectedQuickShareAction(I)V
return-void
.end method
.method public setQuickShareButtonEnabled(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V
return-void
.end method
.method public setSelectedQuickShareAction(I)V
.registers 11
const/4 v8, -0x1
const/4 v2, 0x1
const/4 v4, 0x0
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
if-eq p1, v0, :cond_5c
const v0, 0x7f0a0576
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
if-nez p1, :cond_5d
move v3, v2
:goto_13
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/bn;
if-ne p1, v2, :cond_37
iget v5, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
if-lez v5, :cond_37
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v6
const v7, 0x7f0e031c
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:cond_37
if-eqz v3, :cond_5f
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/bbm/util/fb;->b(Landroid/content/Context;)Z
move-result v5
if-nez v5, :cond_5f
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0507
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x7d0
const/16 v3, 0x11
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonInputPanel;->d()V
:goto_5c
:cond_5c
return-void
:cond_5d
move v3, v4
goto :goto_13
:cond_5f
if-eqz v1, :cond_5c
iget-object v5, v1, Lcom/bbm/ui/bn;->a:Landroid/widget/ImageButton;
if-eqz v5, :cond_6a
iget-object v5, v1, Lcom/bbm/ui/bn;->a:Landroid/widget/ImageButton;
invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setSelected(Z)V
:cond_6a
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->s:Ljava/util/Map;
iget v5, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/ui/bn;
if-eqz v2, :cond_8c
iget-object v5, v2, Lcom/bbm/ui/bn;->a:Landroid/widget/ImageButton;
if-eqz v5, :cond_8c
iget-object v5, v2, Lcom/bbm/ui/bn;->a:Landroid/widget/ImageButton;
invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v5, v2, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
if-eqz v5, :cond_8c
iget-object v2, v2, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
invoke-virtual {v2}, Lcom/bbm/ui/QuickShareBaseView;->b()V
:cond_8c
if-nez v3, :cond_91
invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
:cond_91
iget-boolean v2, v1, Lcom/bbm/ui/bn;->c:Z
if-eqz v2, :cond_9f
iput-boolean v4, v1, Lcom/bbm/ui/bn;->c:Z
iget-object v2, p0, Lcom/bbm/ui/EmoticonInputPanel;->v:Lcom/bbm/ui/bm;
invoke-interface {v2, p1}, Lcom/bbm/ui/bm;->a(I)Lcom/bbm/ui/QuickShareBaseView;
move-result-object v2
iput-object v2, v1, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
:cond_9f
iget-object v2, v1, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
if-eqz v2, :cond_b4
iget-object v2, v1, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
invoke-virtual {v2}, Lcom/bbm/ui/QuickShareBaseView;->a()V
if-nez v3, :cond_b4
new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iget-object v1, v1, Lcom/bbm/ui/bn;->b:Lcom/bbm/ui/QuickShareBaseView;
invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_b4
if-eqz v3, :cond_ba
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
iput v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->r:I
:cond_ba
iput p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->p:I
goto :goto_5c
.end method
.method public setStickerPickerListener(Lcom/bbm/ui/gi;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->l:Lcom/bbm/ui/gi;
return-void
.end method
.method public setTimebombEnabled(Z)V
.registers 4
iput-boolean p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->o:Z
if-eqz p1, :cond_a
iget v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setTimebombValue(I)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
const v1, 0x7f02040d
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPin;->setImageResrouce(I)V
goto :goto_9
.end method
.method public setTimebombValue(I)V
.registers 4
iput p1, p0, Lcom/bbm/ui/EmoticonInputPanel;->w:I
iget-object v0, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
invoke-virtual {v0, p1}, Lcom/bbm/ui/views/EphemeralPickerPin;->setValue(I)V
iget-object v1, p0, Lcom/bbm/ui/EmoticonInputPanel;->h:Lcom/bbm/ui/views/EphemeralPickerPin;
if-lez p1, :cond_12
const v0, 0x7f0203a8
:goto_e
invoke-virtual {v1, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->setImageResrouce(I)V
return-void
:cond_12
const v0, 0x7f0203a7
goto :goto_e
.end method