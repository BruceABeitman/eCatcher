.class public Lcom/bbm/ui/views/a;
.super Ljava/lang/Object;
.source "ChannelFeaturedPostsView.java"
.field public a:Lcom/bbm/j/w;
.field public final b:Lcom/bbm/d/a;
.field public c:Landroid/content/Context;
.field public d:Landroid/app/Activity;
.field public e:Lcom/bbm/ui/ef;
.field public f:Landroid/view/View;
.field public g:Landroid/widget/ListView;
.field public h:Landroid/view/View$OnClickListener;
.field public i:Ljava/util/HashMap;
.field public j:Landroid/widget/GridLayout;
.field public k:Lcom/bbm/util/b/g;
.field public final l:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/views/a;->b:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/views/b;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/b;-><init>(Lcom/bbm/ui/views/a;)V
iput-object v0, p0, Lcom/bbm/ui/views/a;->l:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/views/a;Landroid/view/ViewGroup;Lcom/bbm/ui/views/f;)Landroid/view/View;
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300b6
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a042b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0362
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0228
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->c:Landroid/widget/TextView;
const v0, 0x7f0a0229
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->d:Landroid/widget/TextView;
const v0, 0x7f0a0365
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->e:Landroid/widget/ImageView;
const v0, 0x7f0a0364
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->f:Landroid/widget/ImageView;
const v0, 0x7f0a042d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p2, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p2, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
const v0, 0x7f0a042e
invoke-static {v1, v0}, Lcom/bbm/ui/views/a;->a(Landroid/view/View;I)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p2, Lcom/bbm/ui/views/f;->j:Landroid/widget/TextView;
const v0, 0x7f0a042f
invoke-static {v1, v0}, Lcom/bbm/ui/views/a;->a(Landroid/view/View;I)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p2, Lcom/bbm/ui/views/f;->g:Landroid/widget/TextView;
const v0, 0x7f0a0432
invoke-static {v1, v0}, Lcom/bbm/ui/views/a;->a(Landroid/view/View;I)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p2, Lcom/bbm/ui/views/f;->k:Landroid/widget/TextView;
const v0, 0x7f0a0436
invoke-static {v1, v0}, Lcom/bbm/ui/views/a;->a(Landroid/view/View;I)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p2, Lcom/bbm/ui/views/f;->i:Landroid/widget/TextView;
const v0, 0x7f0a0438
invoke-static {v1, v0}, Lcom/bbm/ui/views/a;->a(Landroid/view/View;I)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p2, Lcom/bbm/ui/views/f;->h:Landroid/widget/TextView;
const v0, 0x7f0a0435
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p2, Lcom/bbm/ui/views/f;->m:Landroid/widget/ImageButton;
const v0, 0x7f0a0437
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p2, Lcom/bbm/ui/views/f;->l:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->f:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->j:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->g:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->k:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->i:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->h:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->m:Landroid/widget/ImageButton;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p2, Lcom/bbm/ui/views/f;->l:Landroid/widget/ImageButton;
iget-object v2, p0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00a1
invoke-virtual {v1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
return-object v1
.end method
.method private static a(Landroid/view/View;I)Landroid/widget/TextView;
.registers 3
invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/views/a;)Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->a:Lcom/bbm/j/w;
return-object v0
.end method
.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
const/16 v0, 0x8
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V
sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
goto :goto_b
.end method
.method static synthetic a(Lcom/bbm/ui/views/a;Lcom/bbm/d/ec;Lcom/bbm/d/fw;Lcom/bbm/ui/views/f;)V
.registers 10
const/4 v1, 0x0
const/16 v2, 0x8
iget-object v0, p3, Lcom/bbm/ui/views/f;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_15
iget-object v3, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_32
:cond_15
iget-object v0, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0b003c
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iget-object v3, p0, Lcom/bbm/ui/views/a;->k:Lcom/bbm/util/b/g;
iget-object v4, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iget-object v5, p3, Lcom/bbm/ui/views/f;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v4, v5, v0, v0}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V
iget-object v0, p3, Lcom/bbm/ui/views/f;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v3, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setTag(Ljava/lang/Object;)V
:cond_32
iget-object v0, p3, Lcom/bbm/ui/views/f;->c:Landroid/widget/TextView;
iget-object v3, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p3, Lcom/bbm/ui/views/f;->d:Landroid/widget/TextView;
iget-object v3, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p3, Lcom/bbm/ui/views/f;->e:Landroid/widget/ImageView;
iget-boolean v0, p1, Lcom/bbm/d/ec;->b:Z
if-eqz v0, :cond_e6
move v0, v1
:goto_47
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p3, Lcom/bbm/ui/views/f;->f:Landroid/widget/ImageView;
iget-boolean v3, p1, Lcom/bbm/d/ec;->w:Z
if-nez v3, :cond_54
iget-boolean v3, p1, Lcom/bbm/d/ec;->t:Z
if-eqz v3, :cond_55
:cond_54
move v1, v2
:cond_55
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/a;->i:Ljava/util/HashMap;
iget-object v1, p2, Lcom/bbm/d/fw;->j:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/o;
if-nez v0, :cond_7f
iget-object v1, p2, Lcom/bbm/d/fw;->k:Ljava/util/List;
if-eqz v1, :cond_7f
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_7f
iget-object v0, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v3, p2, Lcom/bbm/d/fw;->j:Ljava/lang/String;
invoke-static {v1, v0, v3}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v0
if-eqz v0, :cond_7f
iget-object v1, p0, Lcom/bbm/ui/views/a;->i:Ljava/util/HashMap;
iget-object v3, p2, Lcom/bbm/d/fw;->j:Ljava/lang/String;
invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_7f
if-eqz v0, :cond_89
iget-object v1, v0, Lcom/bbm/util/o;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e9
:cond_89
iget-object v0, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-static {v0}, Lcom/bbm/util/b/i;->a(Landroid/widget/ImageView;)Lcom/bbm/util/b/k;
move-result-object v0
if-eqz v0, :cond_94
invoke-virtual {v0}, Lcom/bbm/util/b/k;->a()Z
:cond_94
iget-object v0, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:goto_99
iget-object v0, p3, Lcom/bbm/ui/views/f;->j:Landroid/widget/TextView;
iget-object v1, p2, Lcom/bbm/d/fw;->s:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/views/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V
iget-object v0, p3, Lcom/bbm/ui/views/f;->g:Landroid/widget/TextView;
iget-object v1, p2, Lcom/bbm/d/fw;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/views/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V
iget-object v0, p3, Lcom/bbm/ui/views/f;->k:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
iget-object v2, p2, Lcom/bbm/d/fw;->q:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p3, Lcom/bbm/ui/views/f;->i:Landroid/widget/TextView;
iget-object v0, p2, Lcom/bbm/d/fw;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_154
const-string v0, "0"
:goto_c7
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p3, Lcom/bbm/ui/views/f;->h:Landroid/widget/TextView;
iget-object v0, p2, Lcom/bbm/d/fw;->n:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_158
const-string v0, "0"
:goto_d6
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p3, Lcom/bbm/ui/views/f;->l:Landroid/widget/ImageButton;
iget-boolean v0, p2, Lcom/bbm/d/fw;->i:Z
if-eqz v0, :cond_15c
const v0, 0x7f020356
:goto_e2
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
return-void
:cond_e6
move v0, v2
goto/16 :goto_47
:cond_e9
iget-object v1, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
const v3, 0x7f0b02c2
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
mul-int/lit8 v1, v1, 0x2
sub-int v1, v2, v1
iget v2, v0, Lcom/bbm/util/o;->b:I
int-to-float v2, v2
iget v3, v0, Lcom/bbm/util/o;->a:I
int-to-float v3, v3
div-float/2addr v2, v3
int-to-float v3, v1
mul-float/2addr v2, v3
float-to-int v2, v2
iget-object v3, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
invoke-static {v3}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I
move-result v3
if-le v2, v3, :cond_143
iget-object v1, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iget v2, v0, Lcom/bbm/util/o;->a:I
mul-int/2addr v2, v3
iget v4, v0, Lcom/bbm/util/o;->b:I
div-int/2addr v2, v4
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
:goto_128
iget-object v1, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v2, p0, Lcom/bbm/ui/views/a;->k:Lcom/bbm/util/b/g;
iget-object v2, v2, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
iget-object v3, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v4, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V
goto/16 :goto_99
:cond_143
iget-object v3, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v2, p3, Lcom/bbm/ui/views/f;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
goto :goto_128
:cond_154
iget-object v0, p2, Lcom/bbm/d/fw;->c:Ljava/lang/String;
goto/16 :goto_c7
:cond_158
iget-object v0, p2, Lcom/bbm/d/fw;->n:Ljava/lang/String;
goto/16 :goto_d6
:cond_15c
const v0, 0x7f020355
goto :goto_e2
.end method
.method static synthetic b(Lcom/bbm/ui/views/a;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/views/a;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_10
iget-object v0, p0, Lcom/bbm/ui/views/a;->f:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_10
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->b:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/views/a;)V
.registers 3
const/16 v1, 0x8
iget-object v0, p0, Lcom/bbm/ui/views/a;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v1, :cond_f
iget-object v0, p0, Lcom/bbm/ui/views/a;->f:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
return-void
.end method
.method static synthetic e(Lcom/bbm/ui/views/a;)Lcom/bbm/ui/ef;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/views/a;)Landroid/widget/GridLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->j:Landroid/widget/GridLayout;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/views/a;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->g:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/views/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/views/a;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/a;->d:Landroid/app/Activity;
return-object v0
.end method