.class public Lco/vine/android/widget/PopupEditText;
.super Lco/vine/android/views/SdkEditText;
.source "PopupEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/PopupEditText$PopupInputConnection;,
        Lco/vine/android/widget/PopupEditText$PopupEditTextListener;,
        Lco/vine/android/widget/PopupEditText$FilterHandler;,
        Lco/vine/android/widget/PopupEditText$AdapterObserver;,
        Lco/vine/android/widget/PopupEditText$DropDownListView;
    }
.end annotation


# static fields
.field private static final MSG_FILTER:I = 0x0

.field private static final NO_CALLBACK:I = 0x0

.field private static final TRIGGER_CALLBACK:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDropDownHorizontalOffset:I

.field private final mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

.field private final mDropDownVerticalOffset:I

.field private mEntityRanges:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lco/vine/android/api/VineEntity$Range;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterable:Landroid/widget/Filterable;

.field private final mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

.field private mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

.field private final mPopup:Landroid/widget/PopupWindow;

.field private mSelectedEntity:Lco/vine/android/api/VineEntity;

.field private mShowRequested:Z

.field private final mThreshold:I

.field private mThrottleDelay:J

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f01002d

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    sget-object v3, Lco/vine/android/R$styleable;->PopupEditText:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownHorizontalOffset:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mThreshold:I

    new-instance v1, Lco/vine/android/widget/PopupEditText$DropDownListView;

    const/4 v3, 0x0

    const v4, 0x7f01002c

    invoke-direct {v1, p1, v3, v4}, Lco/vine/android/widget/PopupEditText$DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setDividerHeight(I)V

    invoke-virtual {v1, p0}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x7f01002d

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iput-object v2, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-super {p0, p0}, Lco/vine/android/views/SdkEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lco/vine/android/widget/PopupEditText$FilterHandler;-><init>(Landroid/os/Looper;Landroid/widget/Filter$FilterListener;)V

    iput-object v3, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/PopupEditText;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    return v0
.end method

.method static synthetic access$002(Lco/vine/android/widget/PopupEditText;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    return p1
.end method

.method static synthetic access$100(Lco/vine/android/widget/PopupEditText;)Lco/vine/android/api/VineEntity;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    return-object v0
.end method

.method private atomizeEntity(II)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/PopupEditText;->lookupRange(II)Lco/vine/android/api/VineEntity$Range;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v4, v1, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    if-eqz v4, :cond_22

    iget-object v4, v1, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput-object v4, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v4, v1, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v1, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lco/vine/android/widget/PopupEditText;->setSelection(II)V

    :goto_21
    return-void

    :cond_22
    const/4 v4, 0x0

    iput-object v4, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    goto :goto_21
.end method

.method private isPopupShowing()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method private lookupRange(II)Lco/vine/android/api/VineEntity$Range;
    .registers 6

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    :cond_1c
    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEntity$Range;

    iget v2, v2, Lco/vine/android/api/VineEntity$Range;->upper:I

    if-le p1, v2, :cond_32

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEntity$Range;

    iget v2, v2, Lco/vine/android/api/VineEntity$Range;->upper:I

    if-gt p2, v2, :cond_39

    :cond_32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEntity$Range;

    :goto_38
    return-object v2

    :cond_39
    const/4 v2, 0x0

    goto :goto_38
.end method


# virtual methods
.method public clearSelectedEntity(IZ)Z
    .registers 10

    iget-object v2, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    if-eqz v2, :cond_3e

    const/4 v5, 0x0

    iput-object v5, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineEntity$Range;

    iget-object v5, v1, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, v1, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iget-object v5, v1, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eqz p2, :cond_38

    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0, v4}, Lco/vine/android/widget/PopupEditText;->setSelection(I)V

    :cond_36
    :goto_36
    const/4 v5, 0x1

    :goto_37
    return v5

    :cond_38
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lco/vine/android/widget/PopupEditText;->setSelection(I)V

    goto :goto_36

    :cond_3e
    const/4 v5, 0x0

    goto :goto_37
.end method

.method public dismissDropDown()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-boolean v1, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText$FilterHandler;->removeMessages(I)V

    return-void
.end method

.method public getEntities()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    if-eqz v10, :cond_20

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v11

    if-lez v11, :cond_20

    :goto_c
    const/4 v11, 0x0

    :try_start_d
    invoke-interface {v10, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_20

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_c

    :catch_1f
    move-exception v11

    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    if-eqz v10, :cond_8c

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_2b
    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v11

    if-ge v3, v11, :cond_8c

    invoke-interface {v10, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v11

    if-eqz v11, :cond_89

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    :goto_43
    if-eqz v2, :cond_87

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineEntity$Range;

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v10, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    sub-int v7, v11, v0

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v10, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    sub-int v5, v11, v0

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput v7, v11, Lco/vine/android/api/VineEntity;->start:I

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput v5, v11, Lco/vine/android/api/VineEntity;->end:I

    new-instance v6, Lco/vine/android/api/VineEntity$Range;

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iget-object v12, v8, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v5, v11, v12}, Lco/vine/android/api/VineEntity$Range;-><init>(ILco/vine/android/api/VineEntity;Landroid/text/style/ForegroundColorSpan;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iget v11, v11, Lco/vine/android/api/VineEntity;->end:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_43

    :cond_87
    add-int/lit8 v0, v0, 0x1

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_8c
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineEntity$Range;

    iget-object v11, v8, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_a6
    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    :cond_f
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_18
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    new-instance v0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;

    invoke-super {p0, p1}, Lco/vine/android/views/SdkEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lco/vine/android/widget/PopupEditText$PopupInputConnection;-><init>(Lco/vine/android/widget/PopupEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lco/vine/android/views/SdkEditText;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    return-void
.end method

.method public onFilterComplete(I)V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    sub-int v2, v0, v1

    iget v3, p0, Lco/vine/android/widget/PopupEditText;->mThreshold:I

    if-lt v2, v3, :cond_18

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    goto :goto_17
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/views/SdkEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    :cond_8
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/PopupEditText;->clearComposingText()V

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lco/vine/android/api/VineTypeAhead;

    if-eqz v3, :cond_34

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lco/vine/android/api/VineTypeAhead;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    if-nez v3, :cond_35

    const-string v3, "Invalid state: mFilterable=null, type={}, token={}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, v15, Lco/vine/android/api/VineTypeAhead;->type:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, v15, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    :cond_34
    return-void

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v14, v10}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    invoke-interface {v4}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    iget-object v5, v15, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v3, v15, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v7, v6, v3

    new-instance v2, Lco/vine/android/api/VineEntity;

    iget-object v3, v15, Lco/vine/android/api/VineTypeAhead;->type:Ljava/lang/String;

    iget-object v4, v15, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;

    const/4 v5, 0x0

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lco/vine/android/api/VineEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v16, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/PopupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    iget-object v4, v15, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4, v5}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    move-object/from16 v0, v17

    invoke-interface {v14, v6, v10, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lco/vine/android/api/VineEntity$Range;

    move-object/from16 v0, v16

    invoke-direct {v5, v7, v2, v0}, Lco/vine/android/api/VineEntity$Range;-><init>(ILco/vine/android/api/VineEntity;Landroid/text/style/ForegroundColorSpan;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    move v9, v6

    move-wide/from16 v12, p4

    invoke-interface/range {v8 .. v13}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->onPopupItemSelected(IILjava/lang/CharSequence;J)V

    goto/16 :goto_31
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    if-eqz v1, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    iget v1, v1, Lco/vine/android/api/VineEntity;->start:I

    invoke-virtual {p0, v1, v0}, Lco/vine/android/widget/PopupEditText;->clearSelectedEntity(IZ)Z

    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3b

    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3b

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    goto :goto_1d

    :cond_3b
    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onSelectionChanged(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkEditText;->onSelectionChanged(II)V

    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/PopupEditText;->atomizeEntity(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/views/SdkEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v6, p0, Lco/vine/android/widget/PopupEditText;->mEntityRanges:Ljava/util/TreeMap;

    if-eqz v6, :cond_59

    invoke-interface {v6}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_59

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    :goto_15
    if-eqz v1, :cond_59

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/api/VineEntity$Range;

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput v4, v7, Lco/vine/android/api/VineEntity;->start:I

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iput v2, v7, Lco/vine/android/api/VineEntity;->end:I

    new-instance v3, Lco/vine/android/api/VineEntity$Range;

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iget-object v8, v5, Lco/vine/android/api/VineEntity$Range;->span:Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2, v7, v8}, Lco/vine/android/api/VineEntity$Range;-><init>(ILco/vine/android/api/VineEntity;Landroid/text/style/ForegroundColorSpan;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v5, Lco/vine/android/api/VineEntity$Range;->entity:Lco/vine/android/api/VineEntity;

    iget v7, v7, Lco/vine/android/api/VineEntity;->end:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    goto :goto_15

    :cond_59
    iget-object v7, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    if-eqz v7, :cond_77

    iget-object v7, p0, Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;

    iget v7, v7, Lco/vine/android/api/VineEntity;->start:I

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lco/vine/android/widget/PopupEditText;->clearSelectedEntity(IZ)Z

    :goto_65
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v7, v8, :cond_76

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lco/vine/android/widget/PopupEditText;->atomizeEntity(II)V

    :cond_76
    return-void

    :cond_77
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V

    goto :goto_65
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lco/vine/android/views/SdkEditText;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    :cond_8
    return-void
.end method

.method public performFilter(Z)V
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    if-nez v4, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_30

    const/4 v4, 0x1

    :goto_22
    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v5, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lco/vine/android/widget/PopupEditText;->mThrottleDelay:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_30
    move v4, v5

    goto :goto_22
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_b
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    return-void

    :cond_18
    new-instance v0, Lco/vine/android/widget/PopupEditText$AdapterObserver;

    invoke-direct {v0, p0}, Lco/vine/android/widget/PopupEditText$AdapterObserver;-><init>(Lco/vine/android/widget/PopupEditText;)V

    iput-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_b
.end method

.method protected setFrame(IIII)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/views/SdkEditText;->setFrame(IIII)Z

    move-result v0

    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    :cond_d
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPopupEditTextListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/PopupEditText$FilterHandler;->setOnFilterListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V
    .registers 7

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tokenizer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAdapter must be called first with a non-null adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object p2, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    iput-wide p3, p0, Lco/vine/android/widget/PopupEditText;->mThrottleDelay:J

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, p2}, Lco/vine/android/widget/PopupEditText$FilterHandler;->setFilterable(Landroid/widget/Filterable;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-super {p0, v1}, Lco/vine/android/views/SdkEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showDropDown()V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getWindowVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v3, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    goto :goto_8

    :cond_18
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownHorizontalOffset:I

    iget v4, p0, Lco/vine/android/widget/PopupEditText;->mDropDownVerticalOffset:I

    invoke-virtual {v1, p0, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v3, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    invoke-interface {v3}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->onPopupShown()V

    :cond_3d
    iget-object v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v3}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setSelectionAfterHeaderView()V

    goto :goto_8
.end method
