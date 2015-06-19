.class public Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;
.super Lcom/instagram/android/widget/IgAutoCompleteTextView;
.source "CommentAutoCompleteTextView.java"


# instance fields
.field private a:Lcom/instagram/android/feed/comments/ui/a;

.field private b:Lcom/instagram/android/feed/comments/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_17

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_17
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_26

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_26
    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    invoke-interface {v0}, Lcom/instagram/android/feed/comments/ui/a;->a()V

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    invoke-interface {v0}, Lcom/instagram/android/feed/comments/ui/b;->a()V

    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onLayout(ZIIII)V

    return-void
.end method

.method public setBackButtonListener(Lcom/instagram/android/feed/comments/ui/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    return-void
.end method

.method public setSimpleChangedLayoutListener(Lcom/instagram/android/feed/comments/ui/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    return-void
.end method
