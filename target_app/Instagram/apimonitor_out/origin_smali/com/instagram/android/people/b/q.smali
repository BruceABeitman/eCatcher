.class public final Lcom/instagram/android/people/b/q;
.super Lcom/instagram/base/a/b;
.source "PhotosOfYouOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private b:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/4 v1, 0x1

    sget v0, Lcom/instagram/android/c/a/j;->a:I

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    :goto_a
    new-instance v0, Lcom/instagram/android/c/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/people/b/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/people/b/u;-><init>(Lcom/instagram/android/people/b/q;B)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/instagram/android/c/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/i;->h()V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/instagram/android/people/b/q;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/q;->a(I)V

    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->radio_check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method private c()V
    .registers 4

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->i()Z

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic c(Lcom/instagram/android/people/b/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->c()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 7

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->learn_more_photos_of_you:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->people_tagging_learn_more_photos:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/people/b/q;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/instagram/android/people/b/t;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/b/t;-><init>(Lcom/instagram/android/people/b/q;)V

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v3, Lcom/facebook/az;->people_tagging_review_description:I

    invoke-virtual {p0, v3}, Lcom/instagram/android/people/b/q;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->fragment_user_tag_options:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    sget v0, Lcom/facebook/av;->tag_option_automatically:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/facebook/av;->tag_option_automatically_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/b/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/r;-><init>(Lcom/instagram/android/people/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->tag_option_manually:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/facebook/av;->tag_option_manually_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/b/s;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/s;-><init>(Lcom/instagram/android/people/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->c()V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    sget v0, Lcom/facebook/az;->options:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "photos_of_you_options"

    return-object v0
.end method
