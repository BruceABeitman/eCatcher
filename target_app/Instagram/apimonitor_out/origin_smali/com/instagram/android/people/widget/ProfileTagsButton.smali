.class public Lcom/instagram/android/people/widget/ProfileTagsButton;
.super Landroid/widget/FrameLayout;
.source "ProfileTagsButton.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_button_profile_tags:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->button_profile_tags_imageview:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->a:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->button_profile_tags_textview:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public setPhotosOfYouCount(I)V
    .registers 4

    if-lez p1, :cond_19

    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->b:Landroid/widget/TextView;

    const/16 v0, 0x64

    if-ge p1, v0, :cond_16

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v1, v0}, Lcom/instagram/android/widget/q;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    const-string v0, "\u2022\u2022\u2022"

    goto :goto_12

    :cond_19
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method

.method public setUser(Lcom/instagram/user/c/a;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->z()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->z()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_32

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    iget-object v1, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_34

    const/16 v1, 0xff

    :goto_2b
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setClickable(Z)V

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_1d

    :cond_34
    const/16 v1, 0x80

    goto :goto_2b
.end method
