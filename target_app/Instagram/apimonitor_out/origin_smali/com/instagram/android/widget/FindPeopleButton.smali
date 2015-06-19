.class public Lcom/instagram/android/widget/FindPeopleButton;
.super Landroid/widget/LinearLayout;
.source "FindPeopleButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/FindPeopleButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/FindPeopleButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/FindPeopleButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/widget/FindPeopleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_find_people_button:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->find_people_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->e:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->find_people_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->f:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->find_people_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->g:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->find_people_chevron:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_91

    sget-object v0, Lcom/facebook/bb;->FindPeopleButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->FindPeopleButton_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->e:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/bb;->FindPeopleButton_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    sget v1, Lcom/facebook/bb;->FindPeopleButton_defaultTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_61

    sget v1, Lcom/facebook/bb;->FindPeopleButton_defaultTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->a:Ljava/lang/String;

    :cond_61
    sget v1, Lcom/facebook/bb;->FindPeopleButton_defaultSubtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_71

    sget v1, Lcom/facebook/bb;->FindPeopleButton_defaultSubtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->b:Ljava/lang/String;

    :cond_71
    sget v1, Lcom/facebook/bb;->FindPeopleButton_connectedTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_81

    sget v1, Lcom/facebook/bb;->FindPeopleButton_connectedTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->c:Ljava/lang/String;

    :cond_81
    sget v1, Lcom/facebook/bb;->FindPeopleButton_connectedSubtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_91

    sget v1, Lcom/facebook/bb;->FindPeopleButton_connectedSubtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->d:Ljava/lang/String;

    :cond_91
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/instagram/android/widget/FindPeopleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/instagram/android/widget/FindPeopleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->blue_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/android/widget/FindPeopleButton;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/android/widget/FindPeopleButton;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4d
    return-void

    :cond_4e
    invoke-virtual {p0}, Lcom/instagram/android/widget/FindPeopleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/android/widget/FindPeopleButton;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/android/widget/FindPeopleButton;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/instagram/android/widget/FindPeopleButton;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4d
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->i:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/widget/FindPeopleButton;->i:Z

    invoke-virtual {p0}, Lcom/instagram/android/widget/FindPeopleButton;->refreshDrawableState()V

    return-void
.end method

.method public setConnectedSubtitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/widget/FindPeopleButton;->d:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/widget/FindPeopleButton;->i:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FindPeopleButton;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
