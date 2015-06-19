.class public Lcom/bbm/h/a;
.super Lcom/bbm/ui/gk;
.source "AddContactsAdapter.java"
.field private final f:Landroid/app/Activity;
.field private final g:Lcom/bbm/util/eq;
.field private final h:Lcom/bbm/util/b/g;
.method public constructor <init>(Landroid/app/Activity;Lcom/bbm/j/r;Lcom/bbm/util/eq;)V
.registers 7
new-instance v0, Lcom/bbm/util/bn;
new-instance v1, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
invoke-direct {v0, v1}, Lcom/bbm/util/bn;-><init>(Landroid/os/Handler;)V
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
iput-object p1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
iput-object p3, p0, Lcom/bbm/h/a;->g:Lcom/bbm/util/eq;
new-instance v0, Lcom/bbm/util/b/g;
const/4 v1, -0x1
invoke-direct {v0, p1, v1}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iput-object v0, p0, Lcom/bbm/h/a;->h:Lcom/bbm/util/b/g;
iget-object v0, p0, Lcom/bbm/h/a;->h:Lcom/bbm/util/b/g;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/util/b/i;->j:Z
iget-object v0, p0, Lcom/bbm/h/a;->h:Lcom/bbm/util/b/g;
new-instance v1, Lcom/bbm/util/b/f;
invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V
invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V
iget-object v0, p0, Lcom/bbm/h/a;->h:Lcom/bbm/util/b/g;
const v1, 0x7f0200d7
invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/bbm/h/a;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
return-object v0
.end method
.method private a(Landroid/view/View;Lcom/bbm/d/fn;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/h/l;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p2, Lcom/bbm/d/fn;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iget-object v2, v0, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v4, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v5, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v2, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-static {v3, v1, p2}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Lcom/bbm/d/gp;Lcom/bbm/d/fn;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v1, p2, Lcom/bbm/d/fn;->f:Z
if-eqz v1, :cond_6b
iget-object v1, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_3d
iget-object v1, v0, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
iget-wide v3, p2, Lcom/bbm/d/fn;->i:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p2, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v2, Lcom/bbm/d/fp;->c:Lcom/bbm/d/fp;
if-ne v1, v2, :cond_76
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
const v2, 0x7f0e057e
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_5e
iget-boolean v0, p2, Lcom/bbm/d/fn;->d:Z
if-eqz v0, :cond_93
new-instance v0, Lcom/bbm/h/f;
invoke-direct {v0, p0, p2}, Lcom/bbm/h/f;-><init>(Lcom/bbm/h/a;Lcom/bbm/d/fn;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_6a
return-void
:cond_6b
iget-object v1, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_3d
:cond_76
iget-object v1, p2, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v2, Lcom/bbm/d/fp;->d:Lcom/bbm/d/fp;
if-ne v1, v2, :cond_8b
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
const v2, 0x7f0e0580
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5e
:cond_8b
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p2, Lcom/bbm/d/fn;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5e
:cond_93
new-instance v0, Lcom/bbm/h/g;
invoke-direct {v0, p0, p2}, Lcom/bbm/h/g;-><init>(Lcom/bbm/h/a;Lcom/bbm/d/fn;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_6a
.end method
.method private a(Landroid/view/View;Lcom/bbm/g/t;)V
.registers 11
const/4 v7, 0x0
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/h/l;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p2, Lcom/bbm/g/t;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v2, v0, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v4
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v4, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
invoke-virtual {v3, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v1, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
iget-object v2, p2, Lcom/bbm/g/t;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v1, p2, Lcom/bbm/g/t;->l:Z
if-eqz v1, :cond_77
iget-object v1, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_3f
iget-object v1, v0, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
iget-wide v3, p2, Lcom/bbm/g/t;->o:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p2, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->a:Lcom/bbm/g/u;
if-ne v1, v2, :cond_82
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0585
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_6e
new-instance v0, Lcom/bbm/h/h;
invoke-direct {v0, p0, p2}, Lcom/bbm/h/h;-><init>(Lcom/bbm/h/a;Lcom/bbm/g/t;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_77
iget-object v1, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_3f
:cond_82
iget-object v1, p2, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->b:Lcom/bbm/g/u;
if-ne v1, v2, :cond_a5
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0579
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_6e
:cond_a5
iget-object v1, p2, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->c:Lcom/bbm/g/u;
if-ne v1, v2, :cond_c8
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e057c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_6e
:cond_c8
iget-object v0, v0, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e057b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v6, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_6e
.end method
.method static synthetic a(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
.registers 7
invoke-virtual {p1}, Lcom/bbm/iceberg/j;->a()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/bbm/h/aq;->a(Lcom/bbm/iceberg/j;)V
:goto_f
return-void
:cond_10
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_30
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e049f
const v3, 0x7f0202e9
new-instance v4, Lcom/bbm/h/d;
invoke-direct {v4, p0, p1}, Lcom/bbm/h/d;-><init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_30
iget-object v1, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4d
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a2
const v3, 0x7f0202ec
new-instance v4, Lcom/bbm/h/e;
invoke-direct {v4, p0, p1}, Lcom/bbm/h/e;-><init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_4d
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-static {v1, v0}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;)V
goto :goto_f
.end method
.method protected final a()Landroid/view/View;
.registers 3
new-instance v0, Lcom/bbm/ui/ListHeaderView;
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 8
const/16 v4, 0x8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300c4
invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/h/l;
invoke-direct {v2, v3}, Lcom/bbm/h/l;-><init>(B)V
const v0, 0x7f0a044d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0464
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/h/l;->c:Landroid/widget/ImageView;
const v0, 0x7f0a044f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
const v0, 0x7f0a0452
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
const v0, 0x7f0a0463
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-eq p2, v0, :cond_6f
sget-object v0, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-eq p2, v0, :cond_6f
sget-object v0, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-eq p2, v0, :cond_6f
sget-object v0, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-ne p2, v0, :cond_b0
:cond_6f
iget-object v0, v2, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v2, Lcom/bbm/h/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, v2, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
sget-object v0, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-ne p2, v0, :cond_af
iget-object v0, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f090181
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v0, v2, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f090182
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, v2, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:cond_af
:goto_af
return-object v1
:cond_b0
sget-object v0, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-eq p2, v0, :cond_c0
sget-object v0, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
if-ne p2, v0, :cond_af
:cond_c0
iget-object v0, v2, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v2, Lcom/bbm/h/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, v2, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_af
.end method
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Lcom/bbm/h/al;
sget-object v0, Lcom/bbm/h/am;->a:[I
iget-object v1, p1, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
const-string v0, ""
:goto_11
return-object v0
:pswitch_12
iget-object v0, p1, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->d:Ljava/lang/String;
goto :goto_11
:pswitch_17
iget-object v0, p1, Lcom/bbm/h/al;->c:Lcom/bbm/iceberg/j;
iget-object v0, v0, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;
goto :goto_11
:pswitch_data_1c
.packed-switch 0x1
:pswitch_12
:pswitch_12
:pswitch_12
:pswitch_12
:pswitch_17
:pswitch_17
.end packed-switch
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 6
check-cast p2, Lcom/bbm/h/an;
check-cast p1, Lcom/bbm/ui/ListHeaderView;
const/4 v0, 0x0
sget-object v1, Lcom/bbm/h/c;->a:[I
invoke-virtual {p2}, Lcom/bbm/h/an;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_42
:goto_10
iget-object v1, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/bbm/h/a;->b(Ljava/lang/Object;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V
return-void
:pswitch_29
const v0, 0x7f0e00f9
goto :goto_10
:pswitch_2d
const v0, 0x7f0e00fa
goto :goto_10
:pswitch_31
const v0, 0x7f0e00fb
goto :goto_10
:pswitch_35
const v0, 0x7f0e00f8
goto :goto_10
:pswitch_39
const v0, 0x7f0e00fc
goto :goto_10
:pswitch_3d
const v0, 0x7f0e00fd
goto :goto_10
nop
:pswitch_data_42
.packed-switch 0x1
:pswitch_29
:pswitch_2d
:pswitch_31
:pswitch_35
:pswitch_39
:pswitch_3d
.end packed-switch
.end method
.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
.registers 11
const v7, 0x7f0200d6
check-cast p2, Lcom/bbm/h/al;
sget-object v0, Lcom/bbm/h/c;->a:[I
iget-object v1, p2, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_196
:cond_12
:goto_12
return-void
:pswitch_13
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/b/a;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/h/l;
iget-object v2, p0, Lcom/bbm/h/a;->h:Lcom/bbm/util/b/g;
iget-object v3, v0, Lcom/bbm/b/a;->p:Ljava/lang/String;
iget-object v4, v1, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v3, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
iget-object v2, v1, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
iget-object v3, v0, Lcom/bbm/b/a;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
iget-wide v4, v0, Lcom/bbm/b/a;->c:J
invoke-static {v3, v4, v5}, Lcom/bbm/util/bd;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v3, v0, Lcom/bbm/b/a;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v2, v0, Lcom/bbm/b/a;->l:Z
if-nez v2, :cond_58
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v2
sget-object v3, Lcom/bbm/b/ai;->a:Lcom/bbm/b/ai;
sget-object v4, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v5, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-static {v3, v4, v5}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_58
iget-boolean v2, v0, Lcom/bbm/b/a;->n:Z
if-nez v2, :cond_67
new-instance v2, Lcom/bbm/b/al;
iget-object v3, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/h/a;->g:Lcom/bbm/util/eq;
invoke-direct {v2, v3, p1, v4}, Lcom/bbm/b/al;-><init>(Ljava/lang/String;Landroid/view/View;Lcom/bbm/util/eq;)V
iput-object v2, v1, Lcom/bbm/h/l;->f:Lcom/bbm/b/al;
:cond_67
new-instance v1, Lcom/bbm/h/j;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/j;-><init>(Lcom/bbm/h/a;Lcom/bbm/b/a;)V
invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/h/k;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/k;-><init>(Lcom/bbm/h/a;Lcom/bbm/b/a;)V
invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
goto :goto_12
:pswitch_78
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fn;
invoke-direct {p0, p1, v0}, Lcom/bbm/h/a;->a(Landroid/view/View;Lcom/bbm/d/fn;)V
goto :goto_12
:pswitch_82
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/t;
invoke-direct {p0, p1, v0}, Lcom/bbm/h/a;->a(Landroid/view/View;Lcom/bbm/g/t;)V
goto :goto_12
:pswitch_8c
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;
sget-object v1, Lcom/bbm/h/ap;->a:Lcom/bbm/h/ap;
if-ne v0, v1, :cond_9f
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/d/fn;
invoke-direct {p0, p1, v0}, Lcom/bbm/h/a;->a(Landroid/view/View;Lcom/bbm/d/fn;)V
goto/16 :goto_12
:cond_9f
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;
sget-object v1, Lcom/bbm/h/ap;->b:Lcom/bbm/h/ap;
if-ne v0, v1, :cond_b2
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/t;
invoke-direct {p0, p1, v0}, Lcom/bbm/h/a;->a(Landroid/view/View;Lcom/bbm/g/t;)V
goto/16 :goto_12
:cond_b2
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;
sget-object v1, Lcom/bbm/h/ap;->c:Lcom/bbm/h/ap;
if-ne v0, v1, :cond_12
iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;
iget-object v0, v0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/v;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/h/l;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, v0, Lcom/bbm/g/v;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v3
iget-object v2, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;
const-string v4, "pin"
invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
iget-object v4, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v4
iget-object v5, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;
add-int/lit8 v4, v4, 0x1
iget-object v6, v0, Lcom/bbm/g/v;->e:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
if-eqz v2, :cond_131
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-static {v4, v2}, Lcom/bbm/d/b/a;->a(Ljava/lang/String;Lcom/bbm/d/a;)Lcom/bbm/j/r;
move-result-object v2
:goto_f8
if-eqz v2, :cond_133
iget-object v5, v1, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v5, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
:goto_ff
iget-object v2, v1, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/bbm/h/l;->d:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
iget-wide v5, v0, Lcom/bbm/g/v;->g:J
invoke-static {v4, v5, v6}, Lcom/bbm/util/bd;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/bbm/h/l;->e:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/h/a;->f:Landroid/app/Activity;
const v4, 0x7f0e0585
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v7, v3, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v7, v5, v6
invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v1, Lcom/bbm/h/i;
invoke-direct {v1, p0, v0, v3}, Lcom/bbm/h/i;-><init>(Lcom/bbm/h/a;Lcom/bbm/g/v;Lcom/bbm/g/a;)V
invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_12
:cond_131
const/4 v2, 0x0
goto :goto_f8
:cond_133
iget-object v2, v1, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v7}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto :goto_ff
:pswitch_139
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/h/l;
iget-object v1, p2, Lcom/bbm/h/al;->c:Lcom/bbm/iceberg/j;
iget-object v2, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
iget-object v3, v1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v0, Lcom/bbm/h/l;->a:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V
iget-object v2, p2, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;
sget-object v3, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;
if-ne v2, v3, :cond_186
iget-object v2, v0, Lcom/bbm/h/l;->c:Landroid/widget/ImageView;
const v3, 0x7f0203a9
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_15b
:cond_15b
invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;
move-result-object v2
iget-object v3, v0, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v3}, Lcom/d/a/b/f;->a(Landroid/widget/ImageView;)V
iget-object v2, v0, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v7}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
iget-object v2, v1, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
invoke-static {v2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_17c
invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;
move-result-object v2
iget-object v3, v1, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/h/l;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v3, v0}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
:cond_17c
new-instance v0, Lcom/bbm/h/b;
invoke-direct {v0, p0, v1}, Lcom/bbm/h/b;-><init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_12
:cond_186
iget-object v2, p2, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;
sget-object v3, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;
if-ne v2, v3, :cond_15b
iget-object v2, v0, Lcom/bbm/h/l;->c:Landroid/widget/ImageView;
const v3, 0x7f02002f
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_15b
nop
:pswitch_data_196
.packed-switch 0x1
:pswitch_13
:pswitch_78
:pswitch_82
:pswitch_139
:pswitch_139
:pswitch_8c
.end packed-switch
.end method
.method public getItemViewType(I)I
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/h/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/h/al;
iget-object v0, v0, Lcom/bbm/h/al;->a:Lcom/bbm/h/an;
invoke-virtual {v0}, Lcom/bbm/h/an;->ordinal()I
move-result v0
return v0
.end method
.method public getViewTypeCount()I
.registers 2
invoke-static {}, Lcom/bbm/h/an;->values()[Lcom/bbm/h/an;
move-result-object v0
array-length v0, v0
return v0
.end method