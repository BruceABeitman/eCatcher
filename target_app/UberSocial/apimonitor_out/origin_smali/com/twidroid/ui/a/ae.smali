.class public Lcom/twidroid/ui/a/ae;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Lcom/twidroid/net/b/f;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;

.field private e:Lcom/twidroid/ui/themes/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/a/ae;->a:I

    iput-object p1, p0, Lcom/twidroid/ui/a/ae;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/ae;->e:Lcom/twidroid/ui/themes/r;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/ae;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/net/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/ae;->b:Lcom/twidroid/net/b/f;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/ae;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/User;)Z
    .registers 9

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public b(Lcom/twidroid/model/twitter/User;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/ae;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v5, 0x1

    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_11
    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    const v1, 0x7f090040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ubermedia/ui/widgets/ThumbView;

    const v2, 0x7f09012d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09012e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twidroid/ui/a/ae;->e:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/twidroid/ui/a/ae;->e:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/twidroid/ui/a/ae;->e:Lcom/twidroid/ui/themes/r;

    iget v4, v4, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/twidroid/ui/a/ae;->e:Lcom/twidroid/ui/themes/r;

    iget v4, v4, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_73
    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x4240

    iget-object v4, p0, Lcom/twidroid/ui/a/ae;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    const/high16 v4, 0x3f00

    add-float/2addr v0, v4

    float-to-int v4, v0

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->i()Z

    move-result v5

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->b:Lcom/twidroid/net/b/f;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/twidroid/ui/a/ae;->b:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v3, v1}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :cond_bc
    :goto_bc
    return-object p2

    :cond_bd
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_bc

    const v0, 0x7f0200f7

    invoke-virtual {v1, v0}, Lcom/ubermedia/ui/widgets/ThumbView;->setImageResource(I)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_cc} :catch_cd

    goto :goto_bc

    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bc
.end method
