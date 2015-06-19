.class public Lcom/twidroid/ui/a/ag;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private c:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

.field private d:Ljava/util/ArrayList;

.field private e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Ljava/util/List;)V
    .registers 5

    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/a/ag;->e:I

    iput-object p1, p0, Lcom/twidroid/ui/a/ag;->c:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    const/high16 v0, 0x4240

    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/twidroid/ui/a/ag;->e:I

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/ag;->f:Z

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v1

    iput v1, p0, Lcom/twidroid/ui/a/ag;->a:I

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/ag;->b:I

    invoke-direct {p0, p2}, Lcom/twidroid/ui/a/ag;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/ui/a/ag;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ag;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .registers 4

    if-eqz p2, :cond_11

    const v0, 0x7f0200aa

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p2, :cond_15

    const v0, 0x7f0c030f

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_11
    const v0, 0x7f020098

    goto :goto_5

    :cond_15
    const v0, 0x7f0c0132

    goto :goto_d
.end method

.method static synthetic a(Lcom/twidroid/ui/a/ag;Landroid/widget/TextView;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/a/ag;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/a/ag;->d:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget v2, v0, Lcom/twidroid/model/twitter/User;->j:I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/twidroid/ui/a/ag;->d:Ljava/util/ArrayList;

    iget-wide v3, v0, Lcom/twidroid/model/twitter/User;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    return-void
.end method

.method static synthetic b(Lcom/twidroid/ui/a/ag;)Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ag;->c:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ag;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(J)Z
    .registers 5

    iget-object v0, p0, Lcom/twidroid/ui/a/ag;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_13

    invoke-virtual {p0}, Lcom/twidroid/ui/a/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/ah;

    if-nez v0, :cond_ba

    new-instance v0, Lcom/twidroid/ui/a/ah;

    invoke-direct {v0, p2}, Lcom/twidroid/ui/a/ah;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v0

    :goto_24
    iget-object v0, v8, Lcom/twidroid/ui/a/ah;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/twidroid/ui/a/ag;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lcom/twidroid/ui/a/ah;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/twidroid/ui/a/ag;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lcom/twidroid/ui/a/ah;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/twidroid/ui/a/ag;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/twidroid/ui/a/ag$1;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/ui/a/ag$1;-><init>(Lcom/twidroid/ui/a/ag;Lcom/twidroid/model/twitter/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->e:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {p0, v2, v3}, Lcom/twidroid/ui/a/ag;->a(J)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/twidroid/ui/a/ag;->a(Landroid/widget/TextView;Z)V

    iget-object v1, v8, Lcom/twidroid/ui/a/ah;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/twidroid/ui/a/ag;->e:I

    iget-boolean v5, p0, Lcom/twidroid/ui/a/ag;->f:Z

    move-object v0, p0

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, v8, Lcom/twidroid/ui/a/ah;->a:Lcom/twidroid/ui/widgets/CachedImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageResource(I)V

    :cond_b3
    invoke-virtual {p2, v9}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-object p2

    :cond_ba
    move-object v8, v0

    goto/16 :goto_24
.end method
