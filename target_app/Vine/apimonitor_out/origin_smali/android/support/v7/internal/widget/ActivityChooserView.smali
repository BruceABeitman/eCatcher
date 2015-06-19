.class public Landroid/support/v7/internal/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/support/v7/internal/widget/ActivityChooserView$1;

    invoke-direct {v4, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$1;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    new-instance v4, Landroid/support/v7/internal/widget/ActivityChooserView$2;

    invoke-direct {v4, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$2;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mInitialActivityCount:I

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view:I

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v4, Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-direct {v4, p0, v8}, Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    sget v4, Landroid/support/v7/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    sget v4, Landroid/support/v7/appcompat/R$id;->default_activity_button:I

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    sget v4, Landroid/support/v7/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v4, p0, v8}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v5, Landroid/support/v7/internal/widget/ActivityChooserView$3;

    invoke-direct {v5, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$3;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupMaxWidth:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ListPopupWindow;
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic access$602(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/internal/widget/ActivityChooserView;)I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mInitialActivityCount:I

    return v0
.end method

.method private getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    if-nez v0, :cond_2f

    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setModal(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/internal/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2f
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/internal/widget/ListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_12

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No data model. Did you call #setDataModel?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_84

    move v2, v5

    :goto_24
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    if-eqz v2, :cond_86

    move v3, v5

    :goto_2d
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_88

    add-int v7, p1, v3

    if-le v0, v7, :cond_88

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v5}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    :goto_42
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_83

    iget-boolean v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_52

    if-nez v2, :cond_93

    :cond_52
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v5, v2}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    :goto_57
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setContentWidth(I)V

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v6, :cond_72

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v6, v5}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_72
    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_83
    return-void

    :cond_84
    move v2, v6

    goto :goto_24

    :cond_86
    move v3, v6

    goto :goto_2d

    :cond_88
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_42

    :cond_93
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6, v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_57
.end method

.method private updateAppearance()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_68

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_f
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    if-eq v1, v8, :cond_21

    if-le v1, v8, :cond_6e

    if-lez v3, :cond_6e

    :cond_21
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_58

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_58
    :goto_58
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_76

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_67
    return-void

    :cond_68
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_f

    :cond_6e
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_58

    :cond_76
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1f
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->dismissPopup()Z

    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->dismissPopup()Z

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_14
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivityChooserModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->dismissPopup()Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->showPopup()Z

    :cond_11
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInitialActivityCount(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mInitialActivityCount:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    return-void
.end method

.method public showPopup()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->showPopupUnchecked(I)V

    const/4 v0, 0x1

    goto :goto_b
.end method
