.class public final Lcom/instagram/android/fragment/ab;
.super Lcom/instagram/base/a/b;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:Lcom/instagram/android/h/b/c;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/EditText;

.field private ac:Landroid/widget/EditText;

.field private ad:Landroid/widget/EditText;

.field private ae:Landroid/widget/EditText;

.field private af:Landroid/widget/EditText;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/Spinner;

.field private ai:Landroid/view/View;

.field private aj:Landroid/widget/CompoundButton;

.field private ak:Landroid/view/View;

.field private final al:Landroid/view/View$OnFocusChangeListener;

.field private final am:Landroid/text/TextWatcher;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/instagram/android/fragment/an;

.field private f:Lcom/instagram/android/login/c/a;

.field private g:Lcom/instagram/android/h/a;

.field private h:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/ac;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ac;-><init>(Lcom/instagram/android/fragment/ab;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->al:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/instagram/android/fragment/ae;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ae;-><init>(Lcom/instagram/android/fragment/ab;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->am:Landroid/text/TextWatcher;

    return-void
.end method

.method private U()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/az;->add_phone_number:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private V()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ah:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/ao;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->a(I)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->U()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->e(Ljava/lang/String;)V

    :goto_60
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8b

    const-string v1, "^https?://.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8b
    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1, v0}, Lcom/instagram/android/h/b/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->aj:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;

    :goto_9a
    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1, v0}, Lcom/instagram/android/h/b/c;->a(Lcom/instagram/user/c/e;)V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v1

    if-eq v0, v1, :cond_bc

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/user/c/e;)V

    :goto_b0
    return-void

    :cond_b1
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/b/c;->e(Ljava/lang/String;)V

    goto :goto_60

    :cond_b9
    sget-object v0, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;

    goto :goto_9a

    :cond_bc
    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->W()V

    goto :goto_b0
.end method

.method private W()V
    .registers 6

    new-instance v0, Lcom/instagram/android/c/a/x;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    new-instance v4, Lcom/instagram/android/fragment/ak;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/ak;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/x;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/h/b/c;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/x;->h()V

    return-void
.end method

.method private X()V
    .registers 6

    new-instance v0, Lcom/instagram/android/login/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/am;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/am;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->f:Lcom/instagram/android/login/c/a;

    return-void
.end method

.method private Y()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->Z()V

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->ab()V

    goto :goto_4

    :cond_2f
    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->f:Lcom/instagram/android/login/c/a;

    invoke-virtual {v1}, Lcom/instagram/android/login/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->g:Lcom/instagram/android/h/a;

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->g:Lcom/instagram/android/h/a;

    invoke-virtual {v0}, Lcom/instagram/android/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->aa()V

    goto :goto_4

    :cond_4b
    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->Z()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->g:Lcom/instagram/android/h/a;

    invoke-static {v0}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/h/a;)V

    goto :goto_4

    :cond_54
    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->f:Lcom/instagram/android/login/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/a;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private Z()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username_red:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->e:Lcom/instagram/android/fragment/an;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ab;Lcom/instagram/android/h/a;)Lcom/instagram/android/h/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ab;->g:Lcom/instagram/android/h/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ab;Lcom/instagram/android/h/b/c;)Lcom/instagram/android/h/b/c;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    return-object p1
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(I)V

    return-void
.end method

.method private a(Lcom/instagram/user/c/e;)V
    .registers 5

    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;

    if-ne p1, v0, :cond_2f

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->ac()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/fragment/aj;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/aj;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2f
    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->ad()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ab;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/fragment/ab;->b:Z

    return p1
.end method

.method private aa()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username_green:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method private ab()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method private ac()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_on_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_on_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ad()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_off_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_off_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->Y()V

    return-void
.end method

.method private b()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/u/e;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    sget v0, Lcom/facebook/az;->please_enter_a_valid_email_address:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    const/4 v0, 0x0

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ab;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/fragment/ab;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 5

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ab;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/instagram/android/c/a/w;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/ai;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ai;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/w;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/w;->h()V

    goto :goto_4
.end method

.method private c(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->edit_profile_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_11
    const/16 v0, 0x8

    goto :goto_d
.end method

.method static synthetic d(Lcom/instagram/android/fragment/ab;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ah:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->j()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/ao;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->add_phone_number:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    :cond_71
    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    invoke-virtual {v0}, Lcom/instagram/android/h/b/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_78
    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method static synthetic e(Lcom/instagram/android/fragment/ab;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->U()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/h/b/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/fragment/ab;)Landroid/widget/CompoundButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->aj:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/fragment/ab;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->c(Z)V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->d()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->W()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->aa()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->Z()V

    return-void
.end method

.method static synthetic m(Lcom/instagram/android/fragment/ab;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ai:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->c()V

    return-void
.end method

.method static synthetic o(Lcom/instagram/android/fragment/ab;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/instagram/android/fragment/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->V()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ab;->d:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->al:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->am:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    if-nez v0, :cond_44

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->c(Z)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->c()V

    :cond_44
    return-void
.end method

.method public final F()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    iput-object v1, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->am:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ab;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->a(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->fragment_edit_profile:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->x()V

    new-instance v0, Lcom/instagram/android/fragment/an;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/an;-><init>(Lcom/instagram/android/fragment/ab;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->e:Lcom/instagram/android/fragment/an;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/av;->full_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->website:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->bio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->gender:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ah:Landroid/widget/Spinner;

    sget v0, Lcom/facebook/av;->change_password_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->i:Landroid/view/View;

    sget v0, Lcom/facebook/av;->change_phone_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->aa:Landroid/view/View;

    sget v0, Lcom/facebook/av;->privacy_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ak:Landroid/view/View;

    sget v0, Lcom/facebook/av;->username_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->ai:Landroid/view/View;

    sget v0, Lcom/facebook/av;->privacy_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->aj:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ah:Landroid/widget/Spinner;

    new-instance v3, Lcom/instagram/android/fragment/ao;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/android/fragment/ao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/instagram/ui/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/instagram/ui/c/c;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    const/16 v3, 0x90

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/f/a;

    iget-object v4, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/instagram/android/f/a;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/f/a;

    iget-object v4, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    sget v5, Lcom/instagram/android/f/c;->a:I

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/f/a;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->aa:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/fragment/af;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/af;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->i:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/fragment/ag;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ag;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ab;->aj:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v0

    sget-object v4, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;

    if-ne v0, v4, :cond_119

    move v0, v1

    :goto_104
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->ak:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/fragment/ah;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ah;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    if-eqz v0, :cond_118

    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/ab;->c(Z)V

    :cond_118
    return-void

    :cond_119
    move v0, v2

    goto :goto_104
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->edit_profile:I

    new-instance v1, Lcom/instagram/android/fragment/ad;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ad;-><init>(Lcom/instagram/android/fragment/ab;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->a:Lcom/instagram/android/h/b/c;

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ab;->b:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_refresh:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    :goto_2a
    return-void

    :cond_2b
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ab;->c:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    goto :goto_2a
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ab;->X()V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "edit_profile"

    return-object v0
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ab;->e:Lcom/instagram/android/fragment/an;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/an;->removeMessages(I)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ab:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ac:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ad:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ae:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->af:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ag:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ah:Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->i:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ak:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->ai:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/android/fragment/ab;->aj:Landroid/widget/CompoundButton;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ab;->a(I)V

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
