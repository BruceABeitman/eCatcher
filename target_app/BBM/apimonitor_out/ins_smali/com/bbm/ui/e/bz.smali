.class public Lcom/bbm/ui/e/bz;
.super Ljava/lang/Object;
.source "StickerHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private static b:Lcom/bbm/d/fg;
.field  a:Landroid/widget/ImageView;
.field private c:Lcom/bbm/d/fg;
.field private final d:Landroid/content/Context;
.field private final e:Z
.field private final f:Lcom/bbm/d/a;
.field private g:Lcom/bbm/ui/e/cc;
.field private final h:Lcom/bbm/ui/e/cf;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/widget/TextView;
.field private k:Lcom/bbm/ui/ObservingImageView;
.field private l:Landroid/view/View;
.field private final m:Lcom/bbm/util/b/i;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
sput-object v0, Lcom/bbm/ui/e/bz;->b:Lcom/bbm/d/fg;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/util/b/i;Lcom/bbm/ui/e/cc;Lcom/bbm/ui/e/cf;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/ui/e/bz;->b:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/bz;->g:Lcom/bbm/ui/e/cc;
iput-object p1, p0, Lcom/bbm/ui/e/bz;->d:Landroid/content/Context;
iput-boolean p2, p0, Lcom/bbm/ui/e/bz;->e:Z
iput-object p3, p0, Lcom/bbm/ui/e/bz;->f:Lcom/bbm/d/a;
iput-object p4, p0, Lcom/bbm/ui/e/bz;->m:Lcom/bbm/util/b/i;
iput-object p5, p0, Lcom/bbm/ui/e/bz;->g:Lcom/bbm/ui/e/cc;
iput-object p6, p0, Lcom/bbm/ui/e/bz;->h:Lcom/bbm/ui/e/cf;
return-void
.end method
.method private a()Lcom/bbm/d/gh;
.registers 9
new-instance v2, Lcom/bbm/d/gh;
invoke-direct {v2}, Lcom/bbm/d/gh;-><init>()V
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, v2, Lcom/bbm/d/gh;->g:Lcom/bbm/util/bh;
new-instance v0, Lcom/bbm/d/gi;
invoke-direct {v0}, Lcom/bbm/d/gi;-><init>()V
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->q:Ljava/lang/String;
invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v1
iput-object v1, v0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;
iget-object v1, p0, Lcom/bbm/ui/e/bz;->f:Lcom/bbm/d/a;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gi;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_26
move-object v1, v2
:goto_25
:cond_25
return-object v1
:cond_26
const/4 v1, 0x0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_31
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gh;
if-eqz v1, :cond_4f
iget-object v4, v1, Lcom/bbm/d/gh;->d:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
iget-object v6, v0, Lcom/bbm/d/gh;->d:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v6
cmp-long v4, v4, v6
if-lez v4, :cond_6e
:goto_4f
:cond_4f
move-object v1, v0
goto :goto_31
:cond_51
if-nez v1, :cond_25
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "No StickerImage found for stickerId "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->q:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v1, v2
goto :goto_25
:cond_6e
move-object v0, v1
goto :goto_4f
.end method
.method static synthetic a(Lcom/bbm/ui/e/bz;)Lcom/bbm/ui/e/cc;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bz;->g:Lcom/bbm/ui/e/cc;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/fg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bz;->f:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/gh;
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/e/bz;->a()Lcom/bbm/d/gh;
move-result-object v0
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/bz;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bz;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/e/bz;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/e/bz;->e:Z
return v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
iget-boolean v0, p0, Lcom/bbm/ui/e/bz;->e:Z
if-eqz v0, :cond_45
const v0, 0x7f0300e2
:goto_7
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0453
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->i:Landroid/widget/TextView;
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->j:Landroid/widget/TextView;
const v0, 0x7f0a04bb
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->k:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/e/bz;->k:Lcom/bbm/ui/ObservingImageView;
new-instance v2, Lcom/bbm/ui/e/ca;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/ca;-><init>(Lcom/bbm/ui/e/bz;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iput-object v1, p0, Lcom/bbm/ui/e/bz;->l:Landroid/view/View;
return-object v1
:cond_45
const v0, 0x7f0300e3
goto :goto_7
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 7
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-boolean v1, v1, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_82
iget-object v0, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v0, v1, :cond_7f
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
:cond_15
:goto_15
iget-object v1, p0, Lcom/bbm/ui/e/bz;->a:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/e/bz;->j:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/bz;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-wide v2, v2, Lcom/bbm/d/fg;->s:J
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bz;->f:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/bz;->i:Landroid/widget/TextView;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v0, ""
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->q:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_66
iget-object v1, p0, Lcom/bbm/ui/e/bz;->f:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->q:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->r(Ljava/lang/String;)Lcom/bbm/d/gf;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_66
iget-object v0, v1, Lcom/bbm/d/gf;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_66
invoke-direct {p0}, Lcom/bbm/ui/e/bz;->a()Lcom/bbm/d/gh;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gh;->f:Ljava/lang/String;
:cond_66
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_e1
:try_start_6c
iget-object v0, p0, Lcom/bbm/ui/e/bz;->k:Lcom/bbm/ui/ObservingImageView;
iget-object v1, p0, Lcom/bbm/ui/e/bz;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0203f5
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_7e
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_d7
return-void
:cond_7f
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto :goto_15
:cond_82
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_8d
sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;
goto :goto_15
:cond_8d
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_99
sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_99
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_a5
sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_a5
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_b7
if-eqz p2, :cond_b3
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_b3
sget-object v0, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_b7
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_c9
if-eqz p2, :cond_c5
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_c5
sget-object v0, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:cond_c9
iget-object v1, p0, Lcom/bbm/ui/e/bz;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_15
if-nez p2, :cond_15
sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;
goto/16 :goto_15
:catch_d7
move-exception v0
const-string v0, "Can\'t load default Sticker resource"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_7e
:cond_e1
iget-object v1, p0, Lcom/bbm/ui/e/bz;->m:Lcom/bbm/util/b/i;
iget-object v2, p0, Lcom/bbm/ui/e/bz;->k:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v0, v2}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto :goto_7e
.end method