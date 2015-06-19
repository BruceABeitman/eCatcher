.class public Lcom/bbm/ui/c/l;
.super Landroid/app/Fragment;
.source "ChannelDetailsFragment.java"
.field private A:Z
.field private B:Z
.field private C:Landroid/widget/ProgressBar;
.field private final D:Landroid/view/View$OnFocusChangeListener;
.field public a:Lcom/bbm/j/k;
.field public b:Lcom/bbm/j/k;
.field public c:Lcom/bbm/ui/FooterActionBar;
.field public d:Ljava/lang/String;
.field protected final e:Lcom/bbm/j/a;
.field public final f:Landroid/view/View$OnLongClickListener;
.field public final g:Landroid/view/View$OnLongClickListener;
.field public final h:Landroid/view/View$OnLongClickListener;
.field public final i:Landroid/view/View$OnLongClickListener;
.field private j:Landroid/widget/Spinner;
.field private k:I
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Lcom/cropimage/f;
.field private o:Landroid/widget/ImageView;
.field private final p:Lcom/bbm/d/a;
.field private final q:Ljava/lang/String;
.field private final r:Ljava/lang/String;
.field private final s:Ljava/lang/String;
.field private final t:Ljava/lang/String;
.field private final u:Ljava/lang/String;
.field private final v:Ljava/lang/String;
.field private w:Landroid/view/View;
.field private x:I
.field private final y:Lcom/bbm/d/a;
.field private z:Lcom/bbm/ui/activities/cn;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/l;->p:Lcom/bbm/d/a;
const-string v0, "channelUri"
iput-object v0, p0, Lcom/bbm/ui/c/l;->q:Ljava/lang/String;
const-string v0, "timeRange"
iput-object v0, p0, Lcom/bbm/ui/c/l;->r:Ljava/lang/String;
const-string v0, "AllTime"
iput-object v0, p0, Lcom/bbm/ui/c/l;->s:Ljava/lang/String;
const-string v0, "country"
iput-object v0, p0, Lcom/bbm/ui/c/l;->t:Ljava/lang/String;
const-string v0, "city"
iput-object v0, p0, Lcom/bbm/ui/c/l;->u:Ljava/lang/String;
const-string v0, "address"
iput-object v0, p0, Lcom/bbm/ui/c/l;->v:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/l;->y:Lcom/bbm/d/a;
iput-boolean v1, p0, Lcom/bbm/ui/c/l;->A:Z
iput-boolean v1, p0, Lcom/bbm/ui/c/l;->B:Z
new-instance v0, Lcom/bbm/ui/c/m;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/m;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/ui/c/x;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/x;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->D:Landroid/view/View$OnFocusChangeListener;
new-instance v0, Lcom/bbm/ui/c/t;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/t;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->f:Landroid/view/View$OnLongClickListener;
new-instance v0, Lcom/bbm/ui/c/v;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/v;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->g:Landroid/view/View$OnLongClickListener;
new-instance v0, Lcom/bbm/ui/c/y;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/y;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->h:Landroid/view/View$OnLongClickListener;
new-instance v0, Lcom/bbm/ui/c/aa;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/aa;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->i:Landroid/view/View$OnLongClickListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;Landroid/widget/Spinner;)Landroid/widget/Spinner;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;Lcom/cropimage/f;)Lcom/cropimage/f;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/l;->n:Lcom/cropimage/f;
return-object p1
.end method
.method private a()Ljava/lang/String;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v0, ""
:try_start_7
const-string v2, "channelUri"
iget-object v3, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "timeRange"
const-string v3, "AllTime"
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_18
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_1a
move-result-object v0
:goto_19
return-object v0
:catch_1a
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_19
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/l;->l:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;Lcom/bbm/d/em;)V
.registers 10
const/4 v7, 0x0
iget-object v0, p1, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_39
const-string v0, "0"
move-object v1, v0
:goto_c
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05ef
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f0e021d
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;
move-result-object v4
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v7
invoke-virtual {p0, v2, v3}, Lcom/bbm/ui/c/l;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-array v2, v7, [Ljava/lang/Object;
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_39
iget-object v0, p1, Lcom/bbm/d/em;->h:Ljava/lang/String;
move-object v1, v0
goto :goto_c
.end method
.method static synthetic a(Lcom/bbm/ui/c/l;Z)V
.registers 14
if-nez p1, :cond_4a
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0362
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05e8
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0365
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
check-cast v0, Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e019a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Ljava/lang/String;)V
:cond_49
:goto_49
return-void
:cond_4a
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->v:Z
if-eqz v0, :cond_92
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_92
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z
if-nez v0, :cond_92
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->a:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->b:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
check-cast v0, Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e01f9
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Ljava/lang/String;)V
goto :goto_49
:cond_92
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0362
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iget-object v2, p0, Lcom/bbm/ui/c/l;->p:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
invoke-virtual {v2, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
move-result-object v2
iget-boolean v1, p0, Lcom/bbm/ui/c/l;->A:Z
if-nez v1, :cond_136
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fd;
iget-object v1, v1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_cc
new-instance v1, Lcom/bbm/util/cr;
new-instance v2, Lcom/bbm/d/fd;
iget-object v3, p0, Lcom/bbm/ui/c/l;->y:Lcom/bbm/d/a;
iget-object v3, v3, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v3}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-direct {v2, v3}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v1, v2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
move-object v2, v1
:cond_cc
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I
move-result v3
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fd;
iget-object v1, v1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
int-to-float v5, v1
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fd;
iget-object v1, v1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
int-to-float v1, v1
div-float v2, v5, v1
int-to-float v1, v4
mul-float/2addr v1, v2
float-to-int v1, v1
if-le v1, v3, :cond_7b7
mul-int/lit8 v1, v3, 0x1
int-to-float v1, v1
div-float/2addr v1, v2
float-to-int v1, v1
move v2, v1
move v1, v3
:goto_106
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
new-instance v2, Lcom/bbm/util/b/a;
iget-object v1, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-direct {v2, v1, v3, v4}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;II)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
:cond_136
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z
if-eqz v1, :cond_161
new-instance v1, Lcom/bbm/ui/c/ai;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/ai;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ea
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/c/l;->o:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/bbm/ui/c/l;->o:Landroid/widget/ImageView;
new-instance v1, Lcom/bbm/ui/c/n;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/n;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_161
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v4, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0228
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05eb
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
iget-object v2, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v3, 0x7f0a011b
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/LinearLayout;
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;
invoke-static {v4}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3c5
const/4 v4, 0x0
const/4 v6, 0x0
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x1
const v6, 0x7f0a05eb
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v4, 0xb
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v4, 0x9
const/4 v6, 0x0
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x5
invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V
const/16 v4, 0x9
invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v4, 0xb
const/4 v6, 0x0
invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
:goto_1c7
invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget v0, p0, Lcom/bbm/ui/c/l;->x:I
div-int/lit8 v0, v0, 0xa
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_3ed
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v1, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05eb
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v2, Lcom/bbm/ui/c/o;
invoke-direct {v2, p0, v1}, Lcom/bbm/ui/c/o;-><init>(Lcom/bbm/ui/c/l;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_201
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0365
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->b:Z
if-eqz v0, :cond_3fd
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_3fd
const/4 v0, 0x0
:goto_223
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ee
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
const/16 v1, 0xa0
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z
if-eqz v1, :cond_401
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const v1, 0x7f0200f9
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V
const/16 v1, 0xf
const/16 v2, 0xf
const/16 v3, 0xf
const/16 v4, 0xf
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V
:goto_264
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ef
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_43b
const/16 v0, 0x8
:goto_27b
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0229
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_43e
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_2a6
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05f1
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iget-object v2, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/ec;
iget-boolean v2, v2, Lcom/bbm/d/ec;->t:Z
if-eqz v2, :cond_461
iget-object v2, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/ec;
iget-object v2, v2, Lcom/bbm/d/ec;->j:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V
new-instance v3, Lcom/bbm/ui/c/p;
invoke-direct {v3, p0, v0, v1, v2}, Lcom/bbm/ui/c/p;-><init>(Lcom/bbm/ui/c/l;Landroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;)V
invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_2d3
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z
if-eqz v0, :cond_468
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_2f9
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z
if-eqz v0, :cond_486
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_321
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z
if-eqz v0, :cond_6e6
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f8
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v6, v1, Lcom/bbm/d/ec;->D:Ljava/util/List;
invoke-static {v6}, Lcom/bbm/util/ac;->a(Ljava/util/List;)V
invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_6c6
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a05f9
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
iget-object v2, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/ec;
iget-object v2, v2, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v7
new-instance v8, Ljava/text/DateFormatSymbols;
invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V
invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V
const/4 v2, 0x0
move v5, v2
:goto_36e
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v2
if-ge v5, v2, :cond_4a0
invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
move-object v3, v2
check-cast v3, Lorg/json/JSONObject;
iget-object v2, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const v4, 0x7f0300b4
const/4 v9, 0x0
invoke-virtual {v2, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v9
const v2, 0x7f0a0426
invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
move-object v4, v2
check-cast v4, Landroid/widget/TextView;
const v2, 0x7f0a0427
invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iget v10, p0, Lcom/bbm/ui/c/l;->x:I
div-int/lit8 v10, v10, 0xa
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setWidth(I)V
invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;
move-result-object v10
const-string v11, "dayOfWeek"
invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v11
add-int/lit8 v11, v11, 0x1
aget-object v10, v10, v11
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
const/4 v10, 0x1
invoke-static {v4, v3, v7, v10}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/TimeZone;Z)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
add-int/lit8 v2, v5, 0x1
move v5, v2
goto :goto_36e
:cond_3c5
const/16 v4, 0xb
invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v4, 0x9
const/4 v6, 0x0
invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v4, 0x9
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v4, 0xb
const/4 v6, 0x0
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x0
const v6, 0x7f0a05eb
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x1
const/4 v6, 0x0
invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x3
invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V
goto/16 :goto_1c7
:cond_3ed
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05eb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_201
:cond_3fd
const/16 v0, 0x8
goto/16 :goto_223
:cond_401
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ec
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_434
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_264
:cond_434
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_264
:cond_43b
const/4 v0, 0x0
goto/16 :goto_27b
:cond_43e
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z
if-eqz v1, :cond_45a
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0224
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_2a6
:cond_45a
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_2a6
:cond_461
const/16 v0, 0x8
invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V
goto/16 :goto_2d3
:cond_468
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_2f9
:cond_486
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_321
:cond_4a0
new-instance v1, Lcom/bbm/ui/c/r;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/r;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090020
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_4b6
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_708
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fc
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fe
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_4f6
:cond_4f6
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_732
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0601
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0603
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_536
:cond_536
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_75c
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0606
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0608
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_576
:cond_576
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0609
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a060a
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v2}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/ec;
iget-boolean v2, v2, Lcom/bbm/d/ec;->t:Z
if-eqz v2, :cond_786
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_5a0
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a060b
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridLayout;
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z
if-eqz v1, :cond_798
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v2, 0x7f0a0611
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Spinner;
iput-object v1, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
new-instance v2, Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f070001
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v1, Lcom/bbm/ui/l;
iget-object v3, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
const v4, 0x7f0e01ae
invoke-virtual {p0, v4}, Lcom/bbm/ui/c/l;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v3, v4, v2}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iget-object v3, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v3, Lcom/bbm/ui/q;
new-instance v4, Lcom/bbm/ui/c/q;
invoke-direct {v4, p0}, Lcom/bbm/ui/c/q;-><init>(Lcom/bbm/ui/c/l;)V
invoke-direct {v3, v1, v4}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
:try_start_5fe
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
const-string v3, "country"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/util/bb;->a(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/bbm/ui/c/l;->k:I
iget v1, p0, Lcom/bbm/ui/c/l;->k:I
if-ltz v1, :cond_620
iget v1, p0, Lcom/bbm/ui/c/l;->k:I
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-le v1, v2, :cond_639
:cond_620
new-instance v1, Ljava/lang/IndexOutOfBoundsException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Country code index out of bounds: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/bbm/ui/c/l;->k:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_639
iget-object v1, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
iget v2, p0, Lcom/bbm/ui/c/l;->k:I
invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V
:try_end_640
.catch Lorg/json/JSONException; {:try_start_5fe .. :try_end_640} :catch_792
:goto_640
iget-object v1, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-object v3, v1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
const/4 v2, 0x1
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v4, 0x7f0a060e
invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const-string v4, "address"
const-string v5, ""
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_79f
const/4 v2, 0x0
const-string v4, "address"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_674
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v4, 0x7f0a060f
invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const-string v4, "city"
const-string v5, ""
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_7a6
const/4 v2, 0x0
const-string v4, "city"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_697
iget-object v1, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v4, 0x7f0a0610
invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const-string v4, "country"
const-string v5, ""
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_7b0
const/4 v4, 0x0
iget-object v2, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
invoke-static {v2, v3}, Lcom/bbm/util/bb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_7ad
:goto_6b9
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move v2, v4
:goto_6bd
if-eqz v2, :cond_49
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V
goto/16 :goto_49
:cond_6c6
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->E:Z
if-eqz v1, :cond_6e6
iget-object v1, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/ec;
iget-boolean v1, v1, Lcom/bbm/d/ec;->d:Z
if-eqz v1, :cond_6e6
const v1, 0x7f0e0185
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
goto/16 :goto_4b6
:cond_6e6
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f7
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fa
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_4b6
:cond_708
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_4f6
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ff
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_4f6
:cond_732
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_536
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0600
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0604
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_536
:cond_75c
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_576
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0605
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0366
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_576
:cond_786
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
const/16 v0, 0x8
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_5a0
:catch_792
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_640
:cond_798
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V
goto/16 :goto_49
:cond_79f
const/16 v4, 0x8
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_674
:cond_7a6
const/16 v4, 0x8
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_697
:cond_7ad
move-object v2, v3
goto/16 :goto_6b9
:cond_7b0
const/16 v3, 0x8
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_6bd
:cond_7b7
move v2, v4
goto/16 :goto_106
.end method
.method private a(Ljava/lang/String;)V
.registers 10
const/16 v7, 0x8
const/4 v6, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0362
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/bbm/ui/ObservingImageView;
new-instance v0, Lcom/bbm/ui/c/ah;
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getActivity()Landroid/app/Activity;
move-result-object v2
move-object v1, p0
move-object v4, p1
move-object v5, v3
invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/c/ah;-><init>(Lcom/bbm/ui/c/l;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;Lcom/bbm/ui/ObservingImageView;)V
new-array v1, v6, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/e/a;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_29
const/4 v0, 0x0
invoke-virtual {v3, v0}, Lcom/bbm/ui/ObservingImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_29
invoke-virtual {v3, v7}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05ea
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/c/l;->o:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/bbm/ui/c/l;->o:Landroid/widget/ImageView;
invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/c/l;->A:Z
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05e9
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/c/l;->C:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/bbm/ui/c/l;->C:Landroid/widget/ProgressBar;
invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/c/l;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->y:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/c/l;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/l;->m:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/bbm/ui/c/l;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/c/l;->B:Z
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/c/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/c/l;)V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->a(I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
iget-object v2, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
const v3, 0x7f020366
const v4, 0x7f0e06a0
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
goto :goto_12
.end method
.method static synthetic f(Lcom/bbm/ui/c/l;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/c/l;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/c/l;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->p:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/c/l;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/c/l;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->C:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/c/l;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->o:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/c/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->l:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/c/l;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/c/l;->B:Z
return v0
.end method
.method static synthetic n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->n:Lcom/cropimage/f;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/c/l;)Landroid/view/View$OnFocusChangeListener;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->D:Landroid/view/View$OnFocusChangeListener;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/c/l;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/c/l;->k:I
return v0
.end method
.method static synthetic q(Lcom/bbm/ui/c/l;)Landroid/widget/Spinner;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/l;->j:Landroid/widget/Spinner;
return-object v0
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v0, 0x1
if-ne p1, v0, :cond_12
const/16 v0, 0xa
if-ne p2, v0, :cond_12
const-string v0, "imageUrl"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12
invoke-direct {p0, v0}, Lcom/bbm/ui/c/l;->a(Ljava/lang/String;)V
:cond_12
const/4 v0, 0x2
if-ne p1, v0, :cond_25
const/4 v0, -0x1
if-ne p2, v0, :cond_25
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/c/l;->a(Ljava/lang/String;)V
:cond_25
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 4
invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V
instance-of v0, p1, Lcom/bbm/ui/activities/cn;
if-eqz v0, :cond_c
check-cast p1, Lcom/bbm/ui/activities/cn;
iput-object p1, p0, Lcom/bbm/ui/c/l;->z:Lcom/bbm/ui/activities/cn;
:goto_b
return-void
:cond_c
new-instance v0, Ljava/lang/Exception;
const-string v1, "ChannelDetailsFragment may only be added to an activity of type ChannelChildActivity"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_b
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v3, 0x7f0200f9
const/16 v2, 0xf
iget-object v0, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
if-nez v0, :cond_13
if-eqz p3, :cond_13
const-string v0, "mChannelUri"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
:cond_13
const-string v0, "onCreateView"
const-class v1, Lcom/bbm/ui/c/l;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
if-nez v0, :cond_28
const v0, 0x7f030081
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
:cond_28
invoke-virtual {p0}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
iput v0, p0, Lcom/bbm/ui/c/l;->x:I
new-instance v0, Lcom/bbm/ui/c/ac;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/ac;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->a:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/c/ad;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/ad;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v0, p0, Lcom/bbm/ui/c/l;->b:Lcom/bbm/j/k;
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05e7
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/c/ae;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/ae;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v1, Lcom/bbm/ui/c/af;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/af;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fe
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0603
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0608
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0609
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/c/ag;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/c/ag;-><init>(Lcom/bbm/ui/c/l;Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05f4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->f:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->g:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a05fc
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->g:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0600
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->i:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0601
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->i:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0605
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->h:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
const v1, 0x7f0a0606
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/l;->h:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->w:Landroid/view/View;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/l; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/ui/c/s;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/s;-><init>(Lcom/bbm/ui/c/l;)V
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v0, "onDestroy"
const-class v1, Lcom/bbm/ui/c/l;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, " - Lcom/bbm/ui/c/l; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/l; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/l;->a:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->b:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/l;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, " - Lcom/bbm/ui/c/l; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/l; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->a:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->b:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;)V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/l;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, " - Lcom/bbm/ui/c/l; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/c/l; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "mChannelUri"
iget-object v1, p0, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "onSaveInstanceState"
const-class v1, Lcom/bbm/ui/c/l;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, " - Lcom/bbm/ui/c/l; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method