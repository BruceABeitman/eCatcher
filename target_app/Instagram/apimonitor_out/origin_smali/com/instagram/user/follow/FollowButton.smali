.class public Lcom/instagram/user/follow/FollowButton;
.super Lcom/instagram/ui/widget/b/a;
.source "FollowButton.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private final e:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/user/follow/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/user/follow/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/facebook/bb;->FollowButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->FollowButton_followButtonStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    :goto_1f
    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->a()V

    return-void

    :cond_23
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    goto :goto_1f
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    sget v0, Lcom/facebook/au;->rounded_layout_border_stroke:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget v0, Lcom/facebook/as;->grey_light:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    invoke-virtual {p0, v2}, Lcom/instagram/user/follow/FollowButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/instagram/user/follow/FollowButton;->setPadding(IIII)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;

    if-ne v1, v2, :cond_41

    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/facebook/az;->unfollow_public_user_x:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_28
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5d

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_28

    :cond_41
    invoke-virtual {p3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;

    if-ne v1, v2, :cond_1e

    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/facebook/az;->unfollow_private_user_x:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_5d
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-direct {v1, p1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unfollow:I

    new-instance v2, Lcom/instagram/user/follow/e;

    invoke-direct {v2, p0, p3, p2, p4}, Lcom/instagram/user/follow/e;-><init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/user/follow/d;

    invoke-direct {v2, p0}, Lcom/instagram/user/follow/d;-><init>(Lcom/instagram/user/follow/FollowButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_8b
    return-void
.end method

.method private a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
    .registers 8

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    if-eqz p3, :cond_27

    invoke-interface {p3, v0}, Lcom/instagram/user/follow/g;->a(Lcom/instagram/user/c/c;)V

    :cond_27
    return-void
.end method

.method private a(Lcom/instagram/user/c/c;)V
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    if-eq p1, v0, :cond_47

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setEnabled(Z)V

    sget v0, Lcom/facebook/as;->grey_light:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    sget v0, Lcom/facebook/au;->rounded_layout_border_stroke:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget-object v0, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    if-ne p1, v0, :cond_49

    const-string v0, "..."

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_1b
    iget-object v2, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    invoke-virtual {v2}, Lcom/instagram/user/follow/h;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(I)V

    :cond_28
    iget-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, p1}, Lcom/instagram/user/follow/h;->a(Lcom/instagram/user/c/c;)I

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setImageResource(I)V

    :cond_33
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    invoke-virtual {p0, v3}, Lcom/instagram/user/follow/FollowButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/instagram/user/follow/FollowButton;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->b()V

    return-void

    :cond_47
    move v0, v1

    goto :goto_6

    :cond_49
    sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne p1, v0, :cond_58

    sget v0, Lcom/facebook/az;->following_button_following:I

    sget v2, Lcom/facebook/au;->rounded_layout_border_fill:I

    iput v2, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget v2, Lcom/facebook/as;->green_medium:I

    iput v2, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    goto :goto_1b

    :cond_58
    sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-ne p1, v0, :cond_67

    sget v0, Lcom/facebook/az;->following_button_requested:I

    sget v2, Lcom/facebook/au;->rounded_layout_border_fill:I

    iput v2, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget v2, Lcom/facebook/as;->grey_light:I

    iput v2, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    goto :goto_1b

    :cond_67
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne p1, v0, :cond_72

    sget v0, Lcom/facebook/az;->following_button_follow:I

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    iput v2, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    goto :goto_1b

    :cond_72
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_1b
.end method

.method static synthetic a(Lcom/instagram/user/follow/FollowButton;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/user/follow/FollowButton;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    return-void
.end method

.method private b()V
    .registers 4

    iget v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_14
    sget v1, Lcom/facebook/as;->green_medium:I

    if-ne v0, v1, :cond_62

    sget v0, Lcom/facebook/as;->green_6:I

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v1, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget v2, Lcom/facebook/au;->rounded_layout_border_fill:I

    if-ne v1, v2, :cond_39

    sget v0, Lcom/facebook/as;->white:I

    :cond_39
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_61
    return-void

    :cond_62
    sget v1, Lcom/facebook/as;->grey_light:I

    if-ne v0, v1, :cond_69

    sget v0, Lcom/facebook/as;->grey_4:I

    goto :goto_1a

    :cond_69
    sget v1, Lcom/facebook/as;->accent_blue_medium:I

    if-ne v0, v1, :cond_1a

    sget v0, Lcom/facebook/as;->accent_blue_6:I

    goto :goto_1a
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    :cond_22
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    if-eqz p3, :cond_3d

    new-instance v0, Lcom/instagram/user/follow/b;

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/instagram/user/follow/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;)V

    invoke-virtual {v0}, Lcom/instagram/user/follow/b;->h()V

    :cond_3d
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/c;)V

    new-instance v0, Lcom/instagram/user/follow/c;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/instagram/user/follow/c;-><init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/ui/widget/b/a;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->b()V

    return-void
.end method
