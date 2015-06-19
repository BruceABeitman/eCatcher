.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.field private static final DEBUG:Z = false
.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa
.field public static final FILL_PARENT:I = -0x1
.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0
.field public static final INPUT_METHOD_NEEDED:I = 0x1
.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2
.field public static final POSITION_PROMPT_ABOVE:I = 0x0
.field public static final POSITION_PROMPT_BELOW:I = 0x1
.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"
.field public static final WRAP_CONTENT:I = -0x2
.field private mAdapter:Landroid/widget/ListAdapter;
.field private mContext:Landroid/content/Context;
.field private mDropDownAlwaysVisible:Z
.field private mDropDownAnchorView:Landroid/view/View;
.field private mDropDownHeight:I
.field private mDropDownHorizontalOffset:I
.field private mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
.field private mDropDownVerticalOffset:I
.field private mDropDownVerticalOffsetSet:Z
.field private mDropDownWidth:I
.field private mForceIgnoreOutsideTouch:Z
.field private mHandler:Landroid/os/Handler;
.field private final mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
.field private mLayoutDirection:I
.field  mListItemExpandMaximum:I
.field private mModal:Z
.field private mObserver:Landroid/database/DataSetObserver;
.field private mPopup:Landroid/widget/PopupWindow;
.field private mPromptPosition:I
.field private mPromptView:Landroid/view/View;
.field private final mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
.field private final mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;
.field private mShowDropDownRunnable:Ljava/lang/Runnable;
.field private mTempRect:Landroid/graphics/Rect;
.field private final mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v1, -0x2
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
iput-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
iput-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
const v1, 0x7fffffff
iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I
iput v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I
new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;
invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;
new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;
invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;
new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;
invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;
new-instance v1, Landroid/widget/PopupWindow;
invoke-direct {v1, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
return-void
.end method
.method static synthetic access$1000(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
return-object v0
.end method
.method static synthetic access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
return-object v0
.end method
.method static synthetic access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
return-object v0
.end method
.method private buildDropDown()I
.registers 22
const/16 v17, 0x0
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
if-nez v1, :cond_15f
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;
new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$1;
move-object/from16 v0, p0
invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
move-object/from16 v0, p0
iput-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;
new-instance v3, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z
if-nez v1, :cond_14c
const/4 v1, 0x1
:goto_20
invoke-direct {v3, v8, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V
move-object/from16 v0, p0
iput-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_38
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
:cond_38
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
new-instance v3, Landroid/support/v7/internal/widget/ListPopupWindow$2;
move-object/from16 v0, p0
invoke-direct {v3, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v1, :cond_88
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
:cond_88
move-object/from16 v0, p0
iget-object v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v13, :cond_e9
new-instance v11, Landroid/widget/LinearLayout;
invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v1, 0x1
invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v12, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x1
const/4 v3, 0x0
const/high16 v4, 0x3f80
invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I
packed-switch v1, :pswitch_data_1fa
const-string v1, "ListPopupWindow"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Invalid hint position "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_c7
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
const/high16 v3, -0x8000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v20
const/4 v10, 0x0
move/from16 v0, v20
invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v12
check-cast v12, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v3
iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int v17, v1, v3
move-object v9, v11
:cond_e9
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
:cond_f0
:goto_f0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v7
if-eqz v7, :cond_184
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
add-int v18, v1, v3
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
if-nez v1, :cond_122
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
neg-int v1, v1
move-object/from16 v0, p0
iput v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
:goto_122
:cond_122
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v1
const/4 v3, 0x2
if-ne v1, v3, :cond_18c
const/4 v14, 0x1
:goto_12e
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
move-object/from16 v0, p0
invoke-virtual {v0, v1, v3, v14}, Landroid/support/v7/internal/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I
move-result v16
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v1, :cond_149
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
const/4 v3, -0x1
if-ne v1, v3, :cond_18e
:cond_149
add-int v1, v16, v18
:goto_14b
return v1
:cond_14c
const/4 v1, 0x0
goto/16 :goto_20
:pswitch_14f
invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
goto/16 :goto_c7
:pswitch_157
invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto/16 :goto_c7
:cond_15f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/view/ViewGroup;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
move-object/from16 v19, v0
if-eqz v19, :cond_f0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v12
check-cast v12, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v3
iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int v17, v1, v3
goto/16 :goto_f0
:cond_184
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
goto :goto_122
:cond_18c
const/4 v14, 0x0
goto :goto_12e
:cond_18e
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
packed-switch v1, :pswitch_data_202
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
const/high16 v3, 0x4000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
:goto_19f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
const/4 v3, 0x0
const/4 v4, -0x1
sub-int v5, v16, v17
const/4 v6, -0x1
invoke-virtual/range {v1 .. v6}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I
move-result v15
if-lez v15, :cond_1b0
add-int v17, v17, v18
:cond_1b0
add-int v1, v15, v17
goto :goto_14b
:pswitch_1b3
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
sub-int/2addr v1, v3
const/high16 v3, -0x8000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
goto :goto_19f
:pswitch_1d6
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
sub-int/2addr v1, v3
const/high16 v3, 0x4000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
goto :goto_19f
nop
:pswitch_data_1fa
.packed-switch 0x0
:pswitch_157
:pswitch_14f
.end packed-switch
:pswitch_data_202
.packed-switch -0x2
:pswitch_1b3
:pswitch_1d6
.end packed-switch
.end method
.method private removePromptView()V
.registers 4
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v2, :cond_16
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
instance-of v2, v1, Landroid/view/ViewGroup;
if-eqz v2, :cond_16
move-object v0, v1
check-cast v0, Landroid/view/ViewGroup;
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_16
return-void
.end method
.method public clearListSelection()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
if-eqz v0, :cond_b
const/4 v1, 0x1
#setter for: Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->requestLayout()V
:cond_b
return-void
.end method
.method public dismiss()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->removePromptView()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public getAnchorView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;
return-object v0
.end method
.method public getAnimationStyle()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I
move-result v0
return v0
.end method
.method public getBackground()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
return v0
.end method
.method public getHorizontalOffset()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
return v0
.end method
.method public getInputMethodMode()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v0
return v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
return-object v0
.end method
.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
.registers 15
const/4 v10, 0x1
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
const/4 v8, 0x2
new-array v5, v8, [I
move-object v0, v5
invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V
iget v1, v2, Landroid/graphics/Rect;->bottom:I
if-eqz p3, :cond_22
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v8
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v8
iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I
:cond_22
aget v8, v0, v10
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v9
add-int/2addr v8, v9
sub-int v8, v1, v8
sub-int v3, v8, p2
aget v8, v0, v10
iget v9, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v8, v9
add-int v4, v8, p2
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v7
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v8
if-eqz v8, :cond_55
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v8
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->top:I
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v9, v9, Landroid/graphics/Rect;->bottom:I
add-int/2addr v8, v9
sub-int/2addr v7, v8
:cond_55
return v7
.end method
.method public getPromptPosition()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I
return v0
.end method
.method public getSelectedItem()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;
move-result-object v0
goto :goto_7
.end method
.method public getSelectedItemId()J
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_9
const-wide/high16 v0, -0x8000
:goto_8
return-wide v0
:cond_9
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J
move-result-wide v0
goto :goto_8
.end method
.method public getSelectedItemPosition()I
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I
move-result v0
goto :goto_7
.end method
.method public getSelectedView()Landroid/view/View;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;
move-result-object v0
goto :goto_7
.end method
.method public getSoftInputMode()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I
move-result v0
return v0
.end method
.method public getVerticalOffset()I
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
goto :goto_5
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
return v0
.end method
.method public isDropDownAlwaysVisible()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
return v0
.end method
.method public isInputMethodNotNeeded()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isModal()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z
return v0
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
return v0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 16
const/16 v12, 0x14
const/16 v11, 0x13
const/4 v8, 0x0
const/4 v7, 0x1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v9
if-eqz v9, :cond_93
const/16 v9, 0x3e
if-eq p1, v9, :cond_93
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I
move-result v9
if-gez v9, :cond_20
const/16 v9, 0x42
if-eq p1, v9, :cond_93
const/16 v9, 0x17
if-eq p1, v9, :cond_93
:cond_20
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I
move-result v4
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z
move-result v9
if-nez v9, :cond_5f
move v2, v7
:goto_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
const v5, 0x7fffffff
const/high16 v6, -0x8000
if-eqz v0, :cond_47
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v1
if-eqz v1, :cond_61
move v5, v8
:goto_3f
if-eqz v1, :cond_68
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v9
add-int/lit8 v6, v9, -0x1
:goto_47
:cond_47
if-eqz v2, :cond_4d
if-ne p1, v11, :cond_4d
if-le v4, v5, :cond_53
:cond_4d
if-nez v2, :cond_75
if-ne p1, v12, :cond_75
if-lt v4, v6, :cond_75
:cond_53
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->clearListSelection()V
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V
:goto_5e
:sswitch_5e
return v7
:cond_5f
move v2, v8
goto :goto_2f
:cond_61
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
#calls: Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
invoke-static {v9, v8, v7}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I
move-result v5
goto :goto_3f
:cond_68
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v10
add-int/lit8 v10, v10, -0x1
#calls: Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
invoke-static {v9, v10, v8}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I
move-result v6
goto :goto_47
:cond_75
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
#setter for: Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
invoke-static {v9, v8}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v9, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v3
if-eqz v3, :cond_95
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v10, 0x2
invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V
sparse-switch p1, :sswitch_data_a4
:cond_93
move v7, v8
goto :goto_5e
:cond_95
if-eqz v2, :cond_9c
if-ne p1, v12, :cond_9c
if-ne v4, v6, :cond_93
goto :goto_5e
:cond_9c
if-nez v2, :cond_93
if-ne p1, v11, :cond_93
if-ne v4, v5, :cond_93
goto :goto_5e
nop
:sswitch_data_a4
.sparse-switch
0x13 -> :sswitch_5e
0x14 -> :sswitch_5e
0x17 -> :sswitch_5e
0x42 -> :sswitch_5e
.end sparse-switch
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I
move-result v1
if-ltz v1, :cond_1e
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v1, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_19
sparse-switch p1, :sswitch_data_20
:goto_19
:cond_19
return v0
:sswitch_1a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V
goto :goto_19
:cond_1e
const/4 v0, 0x0
goto :goto_19
:sswitch_data_20
.sparse-switch
0x17 -> :sswitch_1a
0x42 -> :sswitch_1a
.end sparse-switch
.end method
.method public performItemClick(I)Z
.registers 9
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
if-eqz v0, :cond_24
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I
move-result v0
sub-int v0, p1, v0
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v6
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
move v3, p1
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
:cond_24
const/4 v0, 0x1
:goto_25
return v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public postShow()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
if-nez v0, :cond_23
new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
:cond_c
:goto_c
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V
:cond_22
return-void
:cond_23
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
goto :goto_c
.end method
.method public setAnchorView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;
return-void
.end method
.method public setAnimationStyle(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
return-void
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setContentWidth(I)V
.registers 5
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v2
add-int/2addr v1, p1
iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
:goto_19
return-void
:cond_1a
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setWidth(I)V
goto :goto_19
.end method
.method public setDropDownAlwaysVisible(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
return-void
.end method
.method public setForceIgnoreOutsideTouch(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
return-void
.end method
.method public setHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
return-void
.end method
.method public setHorizontalOffset(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
return-void
.end method
.method public setInputMethodMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
return-void
.end method
.method  setListItemExpandMax(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I
return-void
.end method
.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public setModal(Z)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V
return-void
.end method
.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return-void
.end method
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
return-void
.end method
.method public setPromptPosition(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I
return-void
.end method
.method public setPromptView(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_9
invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->removePromptView()V
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v0, :cond_10
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V
:cond_10
return-void
.end method
.method public setSelection(I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_1b
if-eqz v0, :cond_1b
const/4 v1, 0x0
#setter for: Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelection(I)V
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I
move-result v1
if-eqz v1, :cond_1b
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V
:cond_1b
return-void
.end method
.method public setSoftInputMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V
return-void
.end method
.method public setVerticalOffset(I)V
.registers 3
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
return-void
.end method
.method public show()V
.registers 11
const/4 v3, 0x1
const/4 v9, -0x2
const/4 v1, 0x0
const/4 v0, -0x1
invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->buildDropDown()I
move-result v6
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isInputMethodNotNeeded()Z
move-result v7
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v2
if-eqz v2, :cond_73
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v2, v0, :cond_49
const/4 v4, -0x1
:goto_1b
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v2, v0, :cond_6a
if-eqz v7, :cond_59
move v5, v6
:goto_22
if-eqz v7, :cond_5d
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v8, v0, :cond_5b
:goto_2a
invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
:goto_2d
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
if-nez v2, :cond_38
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v2, :cond_38
move v1, v3
:cond_38
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v1
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V
:cond_48
:goto_48
return-void
:cond_49
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v2, v9, :cond_56
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getWidth()I
move-result v4
goto :goto_1b
:cond_56
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
goto :goto_1b
:cond_59
move v5, v0
goto :goto_22
:cond_5b
move v0, v1
goto :goto_2a
:cond_5d
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v2, v0, :cond_68
move v2, v0
:goto_64
invoke-virtual {v8, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
goto :goto_2d
:cond_68
move v2, v1
goto :goto_64
:cond_6a
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v0, v9, :cond_70
move v5, v6
goto :goto_2d
:cond_70
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
goto :goto_2d
:cond_73
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v2, v0, :cond_c3
const/4 v4, -0x1
:goto_78
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v2, v0, :cond_dd
const/4 v5, -0x1
:goto_7d
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-boolean v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
if-nez v8, :cond_ef
iget-boolean v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v8, :cond_ef
:goto_8c
invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;
invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v2
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I
invoke-virtual {v1, v2, v3, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelection(I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z
if-eqz v0, :cond_b4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z
move-result v0
if-eqz v0, :cond_b7
:cond_b4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->clearListSelection()V
:cond_b7
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z
if-nez v0, :cond_48
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_48
:cond_c3
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v2, v9, :cond_d5
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getWidth()I
move-result v8
invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V
goto :goto_78
:cond_d5
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I
invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V
goto :goto_78
:cond_dd
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v2, v9, :cond_e7
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V
goto :goto_7d
:cond_e7
iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I
invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setHeight(I)V
goto :goto_7d
:cond_ef
move v3, v1
goto :goto_8c
.end method