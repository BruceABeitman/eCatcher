.class public abstract Lcom/twidroid/ui/a/p;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/util/List;

.field protected c:I

.field protected d:Landroid/text/util/Linkify$TransformFilter;

.field protected e:Landroid/app/Activity;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/twidroid/ui/themes/r;

.field private h:I

.field private final i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/twidroid/ui/a/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/ui/a/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;

    const/16 v0, 0xc

    iput v0, p0, Lcom/twidroid/ui/a/p;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/a/p;->h:I

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->az()I

    move-result v1

    iput v1, p0, Lcom/twidroid/ui/a/p;->c:I

    const/high16 v1, 0x4240

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/twidroid/ui/a/p;->h:I

    invoke-virtual {v0}, Lcom/twidroid/d/v;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/p;->i:Z

    iput-object p1, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/ui/a/p;->f:Ljava/lang/String;

    new-instance v0, Lcom/twidroid/ui/a/p$1;

    invoke-direct {v0, p0}, Lcom/twidroid/ui/a/p$1;-><init>(Lcom/twidroid/ui/a/p;)V

    iput-object v0, p0, Lcom/twidroid/ui/a/p;->d:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    new-instance v1, Lcom/twidroid/ui/a/p$2;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/a/p$2;-><init>(Lcom/twidroid/ui/a/p;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/p;->j:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/p;->j:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/twidroid/ui/a/p;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    new-instance v1, Lcom/twidroid/ui/a/p$3;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/a/p$3;-><init>(Lcom/twidroid/ui/a/p;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-wide v0, v0, Lcom/twidroid/model/twitter/User;->b:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const v5, 0x7f090101

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    if-eqz p2, :cond_13

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_16c

    :cond_13
    iget-object v1, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030060

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/twidroid/ui/a/q;

    invoke-direct {v2, v3}, Lcom/twidroid/ui/a/q;-><init>(Lcom/twidroid/ui/a/p$1;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->a:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->a:Landroid/widget/TextView;

    iget v3, p0, Lcom/twidroid/ui/a/p;->c:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f090040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->b:Landroid/widget/ImageView;

    const v1, 0x7f090144

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->c:Landroid/widget/TextView;

    const v1, 0x7f09013d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->e:Landroid/widget/TextView;

    const v1, 0x7f090141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->d:Landroid/widget/TextView;

    const v1, 0x7f0900d9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twidroid/ui/a/q;->f:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/twidroid/ui/a/q;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->g:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v2

    :goto_b2
    if-eqz v0, :cond_16b

    iget-object v1, v8, Lcom/twidroid/ui/a/q;->b:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/q;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    const v4, 0x7f0c0134

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/twidroid/model/twitter/User;->k:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/ui/a/p;->e:Landroid/app/Activity;

    const v4, 0x7f0c0135

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/twidroid/model/twitter/User;->l:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/q;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/q;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_135
    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v8, Lcom/twidroid/ui/a/q;->b:Landroid/widget/ImageView;

    iget v4, p0, Lcom/twidroid/ui/a/p;->h:I

    iget-boolean v5, p0, Lcom/twidroid/ui/a/p;->i:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, v8, Lcom/twidroid/ui/a/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_16b} :catch_175

    :cond_16b
    :goto_16b
    return-object p2

    :cond_16c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/ui/a/q;

    move-object v8, v1

    goto/16 :goto_b2

    :catch_175
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/twidroid/ui/a/p;->a:Ljava/lang/String;

    const-string v2, "FollowersAdapter::getView failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16b
.end method
