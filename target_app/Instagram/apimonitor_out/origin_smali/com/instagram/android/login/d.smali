.class public final Lcom/instagram/android/login/d;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Lcom/instagram/android/login/j;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    sget v0, Lcom/facebook/au;->profile_glyph_password:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/facebook/au;->profile_glyph_password_red:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/instagram/android/login/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private static a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/d;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/login/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/instagram/android/login/d;->e:Z

    iget-object v1, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    :goto_8
    invoke-static {v1, v0}, Lcom/instagram/android/login/d;->a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method static synthetic b(Lcom/instagram/android/login/d;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/login/d;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/instagram/android/login/d;->f:Z

    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    :goto_8
    invoke-static {v1, v0}, Lcom/instagram/android/login/d;->a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method static synthetic b(Lcom/instagram/android/login/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/login/d;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/login/d;)Lcom/instagram/android/login/j;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/d;->g:Lcom/instagram/android/login/j;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/e;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/f;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/g;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/h;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/login/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/login/d;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/android/login/j;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/d;->g:Lcom/instagram/android/login/j;

    return-void
.end method

.method public final a()Z
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2e

    :cond_21
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->password_must_be_six_characters:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->passwords_do_not_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_41
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
