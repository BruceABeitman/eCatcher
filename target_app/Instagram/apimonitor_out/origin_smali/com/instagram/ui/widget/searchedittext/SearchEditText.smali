.class public Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/instagram/ui/widget/searchedittext/b;

.field private d:Landroid/view/inputmethod/InputMethodManager;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    return-void
.end method

.method private static a(Landroid/text/Editable;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 6

    invoke-virtual {p0, p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Lcom/instagram/ui/widget/searchedittext/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/searchedittext/a;-><init>(Lcom/instagram/ui/widget/searchedittext/SearchEditText;)V

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_31
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private static b(I)Z
    .registers 2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_c

    const/16 v0, 0x42

    if-eq p0, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static d()Z
    .registers 2

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.htc.textselection.HtcTextSelectionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method private e()Z
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    goto :goto_7
.end method


# virtual methods
.method protected a(I)Z
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v2, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    return-void
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_7
.end method

.method public clearFocus()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setFocusableInTouchMode(Z)V

    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrippedText()Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_18

    const/16 v2, 0x23

    if-ne v1, v2, :cond_a

    :cond_18
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x6

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_18

    :cond_6
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Ljava/lang/String;)V

    :cond_26
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f()V

    iput-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    :cond_10
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    iput-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    :cond_19
    return-void
.end method

.method public onPreDraw()Z
    .registers 7

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e()Z

    move-result v0

    iget-boolean v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-ne v3, v0, :cond_3d

    if-nez v0, :cond_2a

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_29
    return v2

    :cond_2a
    move v0, v2

    goto :goto_e

    :cond_2c
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    :cond_3d
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v2

    goto :goto_29
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {v0, p0, p1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_33

    iget-object v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_33

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    :cond_33
    invoke-static {}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    :goto_3f
    return v0

    :cond_40
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_3f
.end method

.method public setClearButtonAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setClearButtonColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setClearButtonEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    return-void
.end method

.method public setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    return-void
.end method
