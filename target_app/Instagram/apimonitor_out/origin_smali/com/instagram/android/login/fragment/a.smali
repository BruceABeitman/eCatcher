.class public final Lcom/instagram/android/login/fragment/a;
.super Lcom/instagram/base/a/b;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Lcom/instagram/android/login/fragment/f;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/login/fragment/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/f;-><init>(Lcom/instagram/android/login/fragment/a;B)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/a;)Lcom/instagram/android/login/fragment/f;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    sget v0, Lcom/facebook/aw;->fragment_forgot_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->fragment_forgot_password_email_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/b;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/b;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->fragment_forgot_password_sms:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/c;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/d;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/d;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->fragment_forgot_password_help_center:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/e;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    sget v0, Lcom/facebook/av;->facebook_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v0, Lcom/facebook/av;->help_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/instagram/o/b;->ah:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    sget v0, Lcom/facebook/az;->sign_in_help:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "forgot_password"

    return-object v0
.end method
