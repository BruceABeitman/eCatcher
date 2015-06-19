.class public Lcom/glympse/android/controls/ClearableEditText;
.super Landroid/widget/FrameLayout;
.source "ClearableEditText.java"


# instance fields
.field private _editText:Lcom/glympse/android/controls/EditText;

.field private _imageButton:Landroid/widget/ImageButton;

.field private _imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/glympse/android/controls/R$attr;->glympseClearableEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/glympse/android/controls/ClearableEditText;->setBackgroundResource(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/glympse/android/controls/ClearableEditText;->setPadding(IIII)V

    sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseClearableEditText:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/glympse/android/controls/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_edit_clear:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glympse/android/controls/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/glympse/android/controls/R$drawable;->glympse_edit_search:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/glympse/android/controls/EditText;

    invoke-direct {v2, p1, p2, p3}, Lcom/glympse/android/controls/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v2, v3}, Lcom/glympse/android/controls/EditText;->setFocusable(Z)V

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v2, v3}, Lcom/glympse/android/controls/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    sget v3, Lcom/glympse/android/controls/R$id;->glympse_cet_edit:I

    invoke-virtual {v2, v3}, Lcom/glympse/android/controls/EditText;->setId(I)V

    iget-object v2, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v3}, Lcom/glympse/android/controls/EditText;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v4, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v4}, Lcom/glympse/android/controls/EditText;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/glympse/android/controls/EditText;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {p0, v1, v0}, Lcom/glympse/android/controls/ClearableEditText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/glympse/android/controls/ClearableEditText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/glympse/android/controls/ClearableEditText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/glympse/android/controls/ClearableEditText$1;

    invoke-direct {v1, p0}, Lcom/glympse/android/controls/ClearableEditText$1;-><init>(Lcom/glympse/android/controls/ClearableEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/glympse/android/controls/ClearableEditText;)Lcom/glympse/android/controls/EditText;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getEditText()Lcom/glympse/android/controls/EditText;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0}, Lcom/glympse/android/controls/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setReadOnly(ZZ)V
    .registers 5

    iget-object v1, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/glympse/android/controls/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1}, Lcom/glympse/android/controls/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/controls/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;

    invoke-virtual {v0}, Lcom/glympse/android/controls/EditText;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
