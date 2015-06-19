.class public Lco/vine/android/widget/TypefacesEditText;
.super Lco/vine/android/views/SdkEditText;
.source "TypefacesEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;,
        Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
    }
.end annotation


# instance fields
.field private mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/widget/TypefacesEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/widget/TypefacesEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/TypefacesEditText;)Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    sget-object v2, Lco/vine/android/R$styleable;->VineTextView:[I

    const v3, 0x7f010047

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lco/vine/android/widget/TypefacesEditText;->mWeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v2

    iget v3, p0, Lco/vine/android/widget/TypefacesEditText;->mWeight:I

    invoke-virtual {v2, v1, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lco/vine/android/widget/TypefacesEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    new-instance v0, Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;

    invoke-super {p0, p1}, Lco/vine/android/views/SdkEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;-><init>(Lco/vine/android/widget/TypefacesEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    invoke-interface {v0}, Lco/vine/android/widget/TypefacesEditText$KeyboardListener;->onKeyboardDismissed()V

    :cond_c
    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setKeyboardListener(Lco/vine/android/widget/TypefacesEditText$KeyboardListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/widget/TypefacesEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v0

    iget v1, p0, Lco/vine/android/widget/TypefacesEditText;->mWeight:I

    invoke-virtual {v0, p2, v1}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, Lco/vine/android/views/SdkEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
