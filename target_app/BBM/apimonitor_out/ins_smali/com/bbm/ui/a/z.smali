.class public Lcom/bbm/ui/a/z;
.super Lcom/bbm/ui/ef;
.source "UpdatesAdapter.java"
.field public final b:Lcom/bbm/util/eq;
.field public c:Ljava/util/HashMap;
.field private final d:Landroid/content/Context;
.field private final e:Landroid/app/Activity;
.field private final f:Lcom/bbm/d;
.field private final g:Lcom/bbm/j/t;
.field private final h:Ljava/util/Set;
.field private final i:Ljava/util/HashMap;
.field private final j:Lcom/bbm/util/b/a;
.field private k:Z
.field private final l:Lcom/bbm/util/b/g;
.field private final m:Lcom/bbm/util/b/g;
.field private final n:Lcom/bbm/f/ac;
.method public constructor <init>(Lcom/bbm/j/r;Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/util/b/a;Lcom/bbm/j/t;)V
.registers 11
const/4 v4, 0x0
const/4 v3, -0x1
invoke-direct {p0, p1}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/a/z;->f:Lcom/bbm/d;
new-instance v0, Lcom/bbm/util/eq;
invoke-direct {v0}, Lcom/bbm/util/eq;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/a/z;->b:Lcom/bbm/util/eq;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/a/z;->h:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x20
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/bbm/ui/a/z;->c:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/a/z;->i:Ljava/util/HashMap;
new-instance v0, Lcom/bbm/ui/a/aa;
invoke-direct {v0, p0}, Lcom/bbm/ui/a/aa;-><init>(Lcom/bbm/ui/a/z;)V
iput-object v0, p0, Lcom/bbm/ui/a/z;->n:Lcom/bbm/f/ac;
iput-object p2, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/a/z;->e:Landroid/app/Activity;
iput-object p4, p0, Lcom/bbm/ui/a/z;->j:Lcom/bbm/util/b/a;
iput-object p5, p0, Lcom/bbm/ui/a/z;->g:Lcom/bbm/j/t;
if-eqz p4, :cond_7a
iget-object v0, p4, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
move-object v1, v0
:goto_3d
new-instance v0, Lcom/bbm/util/b/g;
invoke-direct {v0, p3, v3}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iput-object v0, p0, Lcom/bbm/ui/a/z;->l:Lcom/bbm/util/b/g;
iget-object v0, p0, Lcom/bbm/ui/a/z;->l:Lcom/bbm/util/b/g;
iput-boolean v4, v0, Lcom/bbm/util/b/i;->j:Z
iget-object v0, p0, Lcom/bbm/ui/a/z;->l:Lcom/bbm/util/b/g;
iput-object v1, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v0}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_62
iget-object v2, p0, Lcom/bbm/ui/a/z;->l:Lcom/bbm/util/b/g;
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, v2, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;
:cond_62
new-instance v0, Lcom/bbm/util/b/g;
invoke-direct {v0, p3, v3}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iput-object v0, p0, Lcom/bbm/ui/a/z;->m:Lcom/bbm/util/b/g;
iget-object v0, p0, Lcom/bbm/ui/a/z;->m:Lcom/bbm/util/b/g;
iput-boolean v4, v0, Lcom/bbm/util/b/i;->j:Z
iget-object v0, p0, Lcom/bbm/ui/a/z;->m:Lcom/bbm/util/b/g;
iput-object v1, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
iget-object v0, p0, Lcom/bbm/ui/a/z;->m:Lcom/bbm/util/b/g;
const v1, 0x7f0200e9
invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(I)V
return-void
:cond_7a
const/4 v0, 0x0
move-object v1, v0
goto :goto_3d
.end method
.method private static a(Ljava/util/List;)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fy;
:try_start_15
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v4, "channelUri"
iget-object v5, v0, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "postId"
iget-object v0, v0, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_2b
.catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2b} :catch_2c
goto :goto_9
:catch_2c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_9
:cond_31
return-object v1
.end method
.method private static a(Lcom/bbm/d/fy;)Z
.registers 5
iget-object v0, p0, Lcom/bbm/d/fy;->p:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/d/fy;->p:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/32 v2, 0x1b7740
cmp-long v0, v0, v2
if-lez v0, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method static synthetic a(Lcom/bbm/ui/a/z;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/a/z;->k:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/a/z;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/a/z;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/a/z;->e:Landroid/app/Activity;
return-object v0
.end method
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const v4, 0x7f0a03dd
const v3, 0x7f03009a
const/4 v2, 0x0
invoke-virtual {p0, p1}, Lcom/bbm/ui/a/z;->getItemViewType(I)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_51
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009b
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
invoke-static {}, Lcom/bbm/util/dy;->a()Lcom/bbm/util/ep;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/util/dy;->a(Landroid/view/View;Lcom/bbm/util/ep;)V
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/a/z;->h:Ljava/util/Set;
invoke-static {v2, v0, v3}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/ey;Landroid/content/Context;Ljava/util/Set;)V
new-instance v3, Lcom/bbm/ui/a/ab;
invoke-direct {v3, p0, v2}, Lcom/bbm/ui/a/ab;-><init>(Lcom/bbm/ui/a/z;Lcom/bbm/util/ep;)V
new-instance v4, Lcom/bbm/ui/a/ac;
invoke-direct {v4, p0, v2}, Lcom/bbm/ui/a/ac;-><init>(Lcom/bbm/ui/a/z;Lcom/bbm/util/ep;)V
const v0, 0x7f0a03e5
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, v2, Lcom/bbm/util/ep;->d:Landroid/widget/ImageButton;
iget-object v0, v2, Lcom/bbm/util/ep;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03e4
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v0, v1
:goto_50
return-object v0
:cond_51
invoke-virtual {p0, p1}, Lcom/bbm/ui/a/z;->getItemViewType(I)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_6f
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009e
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {}, Lcom/bbm/util/dy;->c()Lcom/bbm/util/eo;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/a/z;->e:Landroid/app/Activity;
invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Landroid/view/View;Lcom/bbm/util/eo;Landroid/app/Activity;)V
goto :goto_50
:cond_6f
invoke-virtual {p0, p1}, Lcom/bbm/ui/a/z;->getItemViewType(I)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_8d
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/a/ad;
invoke-direct {v1, p0}, Lcom/bbm/ui/a/ad;-><init>(Lcom/bbm/ui/a/z;)V
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_50
:cond_8d
invoke-virtual {p0, p1}, Lcom/bbm/ui/a/z;->getItemViewType(I)I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_c0
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a03db
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b039e
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
goto :goto_50
:cond_c0
iget-object v0, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009c
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {}, Lcom/bbm/util/dy;->b()Lcom/bbm/util/ey;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/dy;->a(Landroid/view/View;Lcom/bbm/util/ey;)V
iget-object v2, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/a/z;->h:Ljava/util/Set;
invoke-static {v1, v2, v3}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/ey;Landroid/content/Context;Ljava/util/Set;)V
goto/16 :goto_50
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/util/ew;
invoke-virtual {p1}, Lcom/bbm/util/ew;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 18
check-cast p2, Lcom/bbm/util/ew;
sget-object v1, Lcom/bbm/ui/a/af;->a:[I
move-object/from16 v0, p2
iget-object v2, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
invoke-virtual {v2}, Lcom/bbm/util/ex;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_508
:cond_11
:goto_11
:pswitch_11
return-void
:pswitch_12
move-object/from16 v0, p2
iget-object v5, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v5, Lcom/bbm/d/fz;
iget-object v4, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iget-object v7, p0, Lcom/bbm/ui/a/z;->h:Ljava/util/Set;
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ey;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v3
iget-object v1, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v6, v5, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v1, v6}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v6
iget-object v1, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v1
iget-object v8, v5, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_9a
const v1, 0x7f0e0761
invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_43
iget-object v8, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
iget-object v9, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v10, v6, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v11, v6, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v9, v10, v11}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v8, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
const/4 v9, 0x0
invoke-virtual {v8, v9}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v8, v2, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;
const/4 v9, 0x0
invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v8, v2, Lcom/bbm/util/ey;->l:Landroid/widget/TextView;
iget-wide v9, v5, Lcom/bbm/d/fz;->e:J
invoke-static {v4, v9, v10}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v8, v2, Lcom/bbm/util/ey;->m:Landroid/widget/TextView;
invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v5, Lcom/bbm/d/fz;->a:Ljava/lang/String;
iput-object v1, v2, Lcom/bbm/util/ey;->o:Ljava/lang/String;
iget-object v1, v5, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
invoke-static/range {v1 .. v7}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/ga;Lcom/bbm/util/ey;Lcom/bbm/d;Landroid/content/Context;Lcom/bbm/d/fz;Lcom/bbm/d/gp;Ljava/util/Set;)[Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
aget-object v3, v1, v3
const/4 v4, 0x1
aget-object v1, v1, v4
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_89
iget-object v4, v2, Lcom/bbm/util/ey;->n:Landroid/widget/TextView;
invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_89
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_11
iget-object v1, v2, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;
check-cast v1, Lcom/bbm/ui/LinkifyTextView;
sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;
invoke-virtual {v1, v3, v2}, Lcom/bbm/ui/LinkifyTextView;->setHtmlText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
goto/16 :goto_11
:cond_9a
invoke-static {v6}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
goto :goto_43
:pswitch_9f
move-object/from16 v0, p2
iget-object v1, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v1, Lcom/bbm/g/ak;
move-object/from16 v0, p2
iget-object v3, v0, Lcom/bbm/util/ew;->d:Ljava/lang/String;
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ey;
iget-object v4, p0, Lcom/bbm/ui/a/z;->f:Lcom/bbm/d;
iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v4, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v4
iget-object v3, v4, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_141
iget-object v3, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
iget-object v5, v4, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-virtual {v3, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Ljava/lang/String;)V
:goto_c6
iget-object v3, v2, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;
const/4 v5, 0x0
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, v2, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;
const/16 v5, 0x8
invoke-virtual {v3, v5}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v3, v2, Lcom/bbm/util/ey;->l:Landroid/widget/TextView;
iget-object v5, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iget-wide v6, v1, Lcom/bbm/g/ak;->k:J
invoke-static {v5, v6, v7}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v5, v1, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;
sget-object v3, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;
if-ne v5, v3, :cond_10b
iget-object v3, p0, Lcom/bbm/ui/a/z;->f:Lcom/bbm/d;
iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v6, v1, Lcom/bbm/g/ak;->c:Ljava/lang/String;
invoke-virtual {v3, v6}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v3
iget-object v6, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-static {v6, v3}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v3
invoke-virtual {v3}, Lcom/google/b/a/l;->a()Z
move-result v6
if-eqz v6, :cond_160
iget-object v6, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/j/r;
invoke-virtual {v6, v3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
:cond_10b
:goto_10b
iget-object v3, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-static {v5, v3, v1, v4}, Lcom/bbm/util/dy;->a(Lcom/bbm/g/al;Landroid/content/Context;Lcom/bbm/g/ak;Lcom/bbm/g/a;)[Ljava/lang/String;
move-result-object v1
const/4 v3, 0x1
aget-object v3, v1, v3
const/4 v5, 0x2
aget-object v5, v1, v5
const/4 v6, 0x0
aget-object v6, v1, v6
invoke-static {v6}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_169
iget-object v1, v4, Lcom/bbm/g/a;->r:Ljava/lang/String;
:goto_122
iget-object v4, v2, Lcom/bbm/util/ey;->m:Landroid/widget/TextView;
invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_132
iget-object v1, v2, Lcom/bbm/util/ey;->n:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_132
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_11
iget-object v1, v2, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;
check-cast v1, Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1, v3}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V
goto/16 :goto_11
:cond_141
iget-object v3, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v5, 0x7f070007
invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v3
iget-wide v5, v4, Lcom/bbm/g/a;->h:J
long-to-int v5, v5
const/4 v6, 0x0
invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v5
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
iget-object v3, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
goto/16 :goto_c6
:cond_160
iget-object v3, v2, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;
const v6, 0x7f0200d6
invoke-virtual {v3, v6}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto :goto_10b
:cond_169
const/4 v4, 0x0
aget-object v1, v1, v4
goto :goto_122
:pswitch_16d
move-object/from16 v0, p2
iget-object v1, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v1, Lcom/bbm/d/fy;
iget-boolean v2, p0, Lcom/bbm/ui/a/z;->k:Z
if-nez v2, :cond_214
invoke-static {v1}, Lcom/bbm/ui/a/z;->a(Lcom/bbm/d/fy;)Z
move-result v2
if-eqz v2, :cond_214
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/bbm/ui/a/z;->k:Z
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/a/z;->a()Ljava/util/List;
move-result-object v7
move-object/from16 v0, p2
invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v5
if-ltz v5, :cond_204
move-object/from16 v0, p2
iget-object v2, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v2, Lcom/bbm/d/fy;
invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v3, 0x0
move v2, v5
:goto_19c
const/16 v4, 0x1e
if-ge v3, v4, :cond_204
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v4
const/16 v8, 0x14
if-ge v4, v8, :cond_204
if-lez v2, :cond_505
add-int/lit8 v4, v2, -0x1
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ew;
iget-object v2, v2, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
sget-object v8, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;
if-ne v2, v8, :cond_1cb
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ew;
iget-object v2, v2, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v2, Lcom/bbm/d/fy;
invoke-static {v2}, Lcom/bbm/ui/a/z;->a(Lcom/bbm/d/fy;)Z
move-result v8
if-eqz v8, :cond_1cb
invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1cb
add-int/lit8 v2, v3, 0x1
move v3, v2
:goto_1ce
invoke-virtual {p0}, Lcom/bbm/ui/a/z;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ge v5, v2, :cond_502
add-int/lit8 v5, v5, 0x1
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ew;
iget-object v2, v2, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
sget-object v8, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;
if-ne v2, v8, :cond_1f7
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ew;
iget-object v2, v2, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v2, Lcom/bbm/d/fy;
invoke-static {v2}, Lcom/bbm/ui/a/z;->a(Lcom/bbm/d/fy;)Z
move-result v8
if-eqz v8, :cond_1f7
invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1f7
add-int/lit8 v3, v3, 0x1
move v2, v5
:goto_1fa
if-gtz v4, :cond_4fe
invoke-virtual {p0}, Lcom/bbm/ui/a/z;->getCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
if-lt v2, v5, :cond_4fe
:cond_204
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-static {v6}, Lcom/bbm/ui/a/z;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v3
new-instance v4, Lcom/bbm/d/aw;
invoke-direct {v4, v3}, Lcom/bbm/d/aw;-><init>(Ljava/util/List;)V
invoke-virtual {v2, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_214
iget-object v6, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
iget-object v7, p0, Lcom/bbm/ui/a/z;->c:Ljava/util/HashMap;
iget-object v4, p0, Lcom/bbm/ui/a/z;->i:Ljava/util/HashMap;
iget-object v8, p0, Lcom/bbm/ui/a/z;->j:Lcom/bbm/util/b/a;
iget-object v9, p0, Lcom/bbm/ui/a/z;->h:Ljava/util/Set;
const v2, 0x7f0a00a0
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/ep;
iget-object v3, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/ep;->o:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v5, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v3, v5}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v10
iget-object v3, v10, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_24c
iget-object v3, v10, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iget-object v5, v2, Lcom/bbm/util/ep;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v8, v3, v5}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iget-object v3, v2, Lcom/bbm/util/ep;->i:Lcom/bbm/ui/ObservingImageView;
const/4 v5, 0x0
invoke-virtual {v3, v5}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
:cond_24c
iget-object v3, v2, Lcom/bbm/util/ep;->m:Landroid/widget/TextView;
iget-object v5, v10, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v5, v1, Lcom/bbm/d/fy;->k:Ljava/util/List;
iget-object v3, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/util/o;
iput-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
if-nez v3, :cond_27c
if-eqz v5, :cond_27c
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_27c
iget-object v3, v10, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v11, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-static {v5, v3, v11}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v3
iput-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget-object v3, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
iget-object v5, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_27c
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
if-eqz v3, :cond_28a
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget-object v3, v3, Lcom/bbm/util/o;->c:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_356
:cond_28a
iget-object v3, v2, Lcom/bbm/util/ep;->j:Lcom/bbm/ui/ObservingImageView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:goto_291
iget-object v3, v2, Lcom/bbm/util/ep;->o:Ljava/lang/String;
invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_38d
const/4 v3, 0x0
invoke-static {v2, v6, v3}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/ey;Landroid/content/Context;Z)V
:goto_29d
iget-object v3, v2, Lcom/bbm/util/ep;->l:Landroid/widget/TextView;
iget-object v4, v1, Lcom/bbm/d/fy;->q:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
const-wide/16 v8, 0x3e8
div-long/2addr v4, v8
invoke-static {v6, v4, v5}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, v1, Lcom/bbm/d/fy;->s:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_393
iget-object v3, v2, Lcom/bbm/util/ep;->a:Lcom/bbm/ui/LinkifyTextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
:goto_2be
:cond_2be
iget-object v3, v1, Lcom/bbm/d/fy;->d:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3b2
iget-object v3, v2, Lcom/bbm/util/ep;->b:Lcom/bbm/ui/LinkifyTextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
:goto_2cd
:cond_2cd
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0d0010
iget-object v8, v1, Lcom/bbm/d/fy;->n:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v8
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v11, 0x0
iget-object v12, v1, Lcom/bbm/d/fy;->n:Ljava/lang/String;
aput-object v12, v9, v11
invoke-virtual {v4, v5, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0d000f
iget-object v6, v1, Lcom/bbm/d/fy;->c:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
iget-object v11, v1, Lcom/bbm/d/fy;->c:Ljava/lang/String;
aput-object v11, v8, v9
invoke-virtual {v4, v5, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v4, v2, Lcom/bbm/util/ep;->c:Landroid/widget/TextView;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/ep;->e:Ljava/lang/String;
iget-object v3, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/ep;->f:Ljava/lang/String;
iget-boolean v3, v1, Lcom/bbm/d/fy;->i:Z
iput-boolean v3, v2, Lcom/bbm/util/ep;->h:Z
iget-object v4, v2, Lcom/bbm/util/ep;->d:Landroid/widget/ImageButton;
iget-boolean v3, v2, Lcom/bbm/util/ep;->h:Z
if-eqz v3, :cond_3d1
const v3, 0x7f020356
:goto_32d
invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setImageResource(I)V
iget-object v2, v2, Lcom/bbm/util/ep;->k:Landroid/widget/TextView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v2, v1, Lcom/bbm/d/fy;->m:Z
if-nez v2, :cond_11
iget-boolean v2, v10, Lcom/bbm/d/ec;->w:Z
if-eqz v2, :cond_11
iget-object v2, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d6
iget-object v2, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
iget-object v1, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_11
:cond_356
iget-object v3, v2, Lcom/bbm/util/ep;->j:Lcom/bbm/ui/ObservingImageView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget v3, v3, Lcom/bbm/util/o;->a:I
iget-object v4, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget v5, v4, Lcom/bbm/util/o;->b:I
invoke-static {v6}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I
move-result v4
if-le v5, v4, :cond_4fb
int-to-double v11, v4
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget v3, v3, Lcom/bbm/util/o;->b:I
int-to-double v13, v3
div-double/2addr v11, v13
iget-object v3, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget v3, v3, Lcom/bbm/util/o;->a:I
int-to-double v13, v3
mul-double/2addr v11, v13
invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D
move-result-wide v11
double-to-int v3, v11
:goto_37c
iget-object v5, v2, Lcom/bbm/util/ep;->g:Lcom/bbm/util/o;
iget-object v11, v2, Lcom/bbm/util/ep;->j:Lcom/bbm/ui/ObservingImageView;
iget-object v8, v8, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v5, v11, v8, v3, v4}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V
iget-object v3, v2, Lcom/bbm/util/ep;->j:Lcom/bbm/ui/ObservingImageView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
goto/16 :goto_291
:cond_38d
const/4 v3, 0x0
invoke-static {v2, v6, v3}, Lcom/bbm/util/dy;->b(Lcom/bbm/util/ey;Landroid/content/Context;Z)V
goto/16 :goto_29d
:cond_393
iget-object v3, v2, Lcom/bbm/util/ep;->a:Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {v3}, Lcom/bbm/ui/LinkifyTextView;->getText()Ljava/lang/CharSequence;
move-result-object v3
iget-object v4, v1, Lcom/bbm/d/fy;->s:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2be
iget-object v3, v2, Lcom/bbm/util/ep;->a:Lcom/bbm/ui/LinkifyTextView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
iget-object v3, v2, Lcom/bbm/util/ep;->a:Lcom/bbm/ui/LinkifyTextView;
iget-object v4, v1, Lcom/bbm/d/fy;->s:Ljava/lang/String;
sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v3, v4, v5}, Lcom/bbm/ui/LinkifyTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
goto/16 :goto_2be
:cond_3b2
iget-object v3, v2, Lcom/bbm/util/ep;->b:Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {v3}, Lcom/bbm/ui/LinkifyTextView;->getText()Ljava/lang/CharSequence;
move-result-object v3
iget-object v4, v1, Lcom/bbm/d/fy;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2cd
iget-object v3, v2, Lcom/bbm/util/ep;->b:Lcom/bbm/ui/LinkifyTextView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
iget-object v3, v2, Lcom/bbm/util/ep;->b:Lcom/bbm/ui/LinkifyTextView;
iget-object v4, v1, Lcom/bbm/d/fy;->d:Ljava/lang/String;
sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v3, v4, v5}, Lcom/bbm/ui/LinkifyTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
goto/16 :goto_2cd
:cond_3d1
const v3, 0x7f020355
goto/16 :goto_32d
:cond_3d6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, v1, Lcom/bbm/d/fy;->j:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_11
:pswitch_3e7
move-object/from16 v0, p2
iget-object v1, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;
check-cast v1, Lcom/bbm/b/a;
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/util/eo;
iget-object v3, v2, Lcom/bbm/util/eo;->c:Landroid/widget/TextView;
iget-object v4, v1, Lcom/bbm/b/a;->q:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/a/z;->m:Lcom/bbm/util/b/g;
iget-object v4, v1, Lcom/bbm/b/a;->i:Ljava/lang/String;
iget-object v5, v2, Lcom/bbm/util/eo;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v4, v5}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iget-object v3, v2, Lcom/bbm/util/eo;->f:Landroid/widget/TextView;
iget-object v4, v1, Lcom/bbm/b/a;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, v2, Lcom/bbm/util/eo;->e:Landroid/widget/TextView;
iget-object v4, v1, Lcom/bbm/b/a;->g:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/eo;->i:Ljava/lang/String;
iget-object v3, v1, Lcom/bbm/b/a;->a:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/eo;->k:Ljava/lang/String;
iget-object v3, v1, Lcom/bbm/b/a;->b:Ljava/lang/String;
iput-object v3, v2, Lcom/bbm/util/eo;->j:Ljava/lang/String;
iget-boolean v3, v1, Lcom/bbm/b/a;->n:Z
iput-boolean v3, v2, Lcom/bbm/util/eo;->m:Z
iget-object v3, p0, Lcom/bbm/ui/a/z;->b:Lcom/bbm/util/eq;
iget-object v4, p0, Lcom/bbm/ui/a/z;->g:Lcom/bbm/j/t;
move-object/from16 v0, p1
invoke-static {v3, v2, v0, v4}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/eq;Lcom/bbm/util/eo;Landroid/view/View;Lcom/bbm/j/t;)V
iget-boolean v3, v1, Lcom/bbm/b/a;->l:Z
if-nez v3, :cond_43f
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v3
sget-object v4, Lcom/bbm/b/ai;->a:Lcom/bbm/b/ai;
sget-object v5, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v6, v2, Lcom/bbm/util/eo;->i:Ljava/lang/String;
invoke-static {v4, v5, v6}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_43f
iget-object v4, v2, Lcom/bbm/util/eo;->h:Landroid/widget/ImageButton;
iget-boolean v3, v1, Lcom/bbm/b/a;->m:Z
if-eqz v3, :cond_498
const/4 v3, 0x0
:goto_446
invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v3, v1, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;
iput-object v3, v2, Lcom/bbm/util/eo;->p:Lcom/bbm/b/b;
iget-object v3, v2, Lcom/bbm/util/eo;->o:Lcom/bbm/j/k;
if-eqz v3, :cond_459
iget-object v3, v2, Lcom/bbm/util/eo;->o:Lcom/bbm/j/k;
invoke-virtual {v3}, Lcom/bbm/j/k;->e()V
const/4 v3, 0x0
iput-object v3, v2, Lcom/bbm/util/eo;->o:Lcom/bbm/j/k;
:cond_459
iget-object v3, v2, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V
sget-object v3, Lcom/bbm/ui/a/af;->b:[I
iget-object v4, v2, Lcom/bbm/util/eo;->p:Lcom/bbm/b/b;
invoke-virtual {v4}, Lcom/bbm/b/b;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_518
iget-object v3, v2, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Failed to set the button image for adId="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " due to unrecognized ad subtype="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, v2, Lcom/bbm/util/eo;->p:Lcom/bbm/b/b;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_11
:cond_498
const/16 v3, 0x8
goto :goto_446
:pswitch_49b
iget-object v1, v2, Lcom/bbm/util/eo;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v3, 0x0
iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I
const/4 v3, 0x0
iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I
iget-object v1, v2, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;
const v3, 0x7f020345
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V
iget-object v1, v2, Lcom/bbm/util/eo;->d:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
const v3, 0x7f0e0763
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_11
:pswitch_4c1
iget-object v3, p0, Lcom/bbm/ui/a/z;->l:Lcom/bbm/util/b/g;
iget-object v4, v1, Lcom/bbm/b/a;->p:Ljava/lang/String;
iget-object v5, v2, Lcom/bbm/util/eo;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v4, v5}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iget-boolean v1, v1, Lcom/bbm/b/a;->f:Z
if-eqz v1, :cond_4f2
iget-object v1, v2, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;
const v3, 0x7f0200f3
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V
:goto_4d6
iget-object v1, v2, Lcom/bbm/util/eo;->d:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/ui/a/z;->d:Landroid/content/Context;
const v4, 0x7f0e0764
invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v1, Lcom/bbm/ui/a/ae;
invoke-direct {v1, p0, v2}, Lcom/bbm/ui/a/ae;-><init>(Lcom/bbm/ui/a/z;Lcom/bbm/util/eo;)V
iput-object v1, v2, Lcom/bbm/util/eo;->o:Lcom/bbm/j/k;
iget-object v1, v2, Lcom/bbm/util/eo;->o:Lcom/bbm/j/k;
invoke-virtual {v1}, Lcom/bbm/j/k;->c()V
goto/16 :goto_11
:cond_4f2
iget-object v1, v2, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;
const v3, 0x7f0202fb
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V
goto :goto_4d6
:cond_4fb
move v4, v5
goto/16 :goto_37c
:cond_4fe
move v5, v2
move v2, v4
goto/16 :goto_19c
:cond_502
move v2, v5
goto/16 :goto_1fa
:cond_505
move v4, v2
goto/16 :goto_1ce
:pswitch_data_508
.packed-switch 0x1
:pswitch_16d
:pswitch_3e7
:pswitch_11
:pswitch_11
:pswitch_12
:pswitch_9f
.end packed-switch
:pswitch_data_518
.packed-switch 0x1
:pswitch_49b
:pswitch_4c1
.end packed-switch
.end method
.method public final b()V
.registers 3
invoke-super {p0}, Lcom/bbm/ui/ef;->b()V
invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/z;->n:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
return-void
.end method
.method public final c()V
.registers 3
invoke-super {p0}, Lcom/bbm/ui/ef;->c()V
invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/z;->n:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/a/z;->i:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/o;
invoke-virtual {v0}, Lcom/bbm/util/o;->a()V
goto :goto_a
:cond_1a
return-void
.end method
.method public getItemViewType(I)I
.registers 4
sget-object v1, Lcom/bbm/ui/a/af;->a:[I
invoke-virtual {p0, p1}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/ew;
iget-object v0, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;
invoke-virtual {v0}, Lcom/bbm/util/ex;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_1e
const/4 v0, 0x0
:goto_14
return v0
:pswitch_15
const/4 v0, 0x1
goto :goto_14
:pswitch_17
const/4 v0, 0x2
goto :goto_14
:pswitch_19
const/4 v0, 0x3
goto :goto_14
:pswitch_1b
const/4 v0, 0x4
goto :goto_14
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_15
:pswitch_17
:pswitch_19
:pswitch_1b
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x5
return v0
.end method