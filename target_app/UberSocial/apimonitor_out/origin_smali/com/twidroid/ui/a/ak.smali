.class public Lcom/twidroid/ui/a/ak;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"


# instance fields
.field public a:Z

.field protected b:Lcom/twidroid/ui/a/al;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ZZ)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/ak;->a:Z

    iput-boolean p3, p0, Lcom/twidroid/ui/a/ak;->a:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v7, 0x11

    const/high16 v6, 0x4190

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_125

    new-instance v0, Lcom/twidroid/ui/a/al;

    invoke-direct {v0, v3}, Lcom/twidroid/ui/a/al;-><init>(Lcom/twidroid/ui/a/ak$1;)V

    iput-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/ak;->a:Z

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v5, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v0, v1

    :goto_69
    iget-boolean v1, p0, Lcom/twidroid/ui/a/ak;->w:Z

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/ak;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/ak;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ad
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->M:Lcom/twidroid/ui/themes/r;

    instance-of v1, v1, Lcom/twidroid/ui/themes/a;

    if-nez v1, :cond_12e

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object p2, v0

    :goto_c5
    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/twidroid/ui/a/ak;->a:Z

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v1, v1, Lcom/twidroid/ui/a/al;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e5
    return-object p2

    :cond_e6
    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/ui/a/ak;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    iget-object v0, v0, Lcom/twidroid/ui/a/al;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto/16 :goto_69

    :cond_125
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/al;

    iput-object v0, p0, Lcom/twidroid/ui/a/ak;->b:Lcom/twidroid/ui/a/al;

    goto :goto_c5

    :cond_12e
    move-object p2, v0

    goto :goto_c5
.end method
