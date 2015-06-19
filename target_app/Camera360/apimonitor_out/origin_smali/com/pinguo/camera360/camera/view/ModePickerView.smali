.class public Lcom/pinguo/camera360/camera/view/ModePickerView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "ModePickerView.java"


# instance fields
.field private mAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

.field private mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

.field public mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

.field private mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

.field private mIndicatorContainer:Landroid/view/View;

.field private mIsHiding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/ModePickerView;)Lcom/pinguo/camera360/camera/view/ModePickerIndicator;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setLayout(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/ModePickerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z

    return-void
.end method

.method private setLayout(Landroid/view/View;II)V
    .registers 8

    const/4 v3, 0x0

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2, p3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    return-object v0
.end method

.method public hide()V
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/HideModePickerViewEvent;

    invoke-direct {v1}, Lcom/pinguo/camera360/camera/event/HideModePickerViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public hideWithAnimation()V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_18
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hide()V

    return-void
.end method

.method public hideWithAnimation(Landroid/view/View;II)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->disableGrid()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v20

    if-eqz v20, :cond_145

    const/16 v20, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f0a0346

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v20, 0x7f0a042c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v20, 0x7f0a0347

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_58

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_58
    const v20, 0x7f0a0342

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getLeft()I

    move-result v21

    add-int v14, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getTop()I

    move-result v21

    add-int v15, v20, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setLayout(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    div-int/lit8 v20, v5, 0x2

    mul-int/lit8 v21, p3, 0x2

    add-int/lit8 v21, v21, 0x1

    mul-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    sub-int v11, v20, v21

    div-int/lit8 v20, v4, 0x2

    mul-int/lit8 v21, p2, 0x2

    add-int/lit8 v21, v21, 0x1

    mul-int v21, v21, v16

    div-int/lit8 v21, v21, 0x2

    sub-int v20, v20, v21

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    sub-int v12, v20, v21

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    int-to-float v0, v11

    move/from16 v21, v0

    const/16 v22, 0x0

    int-to-float v0, v12

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v20, 0x190

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v20, Lcom/pinguo/camera360/camera/view/ModePickerView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v11, v12}, Lcom/pinguo/camera360/camera/view/ModePickerView$2;-><init>(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;II)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f04001e

    invoke-static/range {v20 .. v21}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    new-instance v20, Lcom/pinguo/camera360/camera/view/ModePickerView$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/ModePickerView$3;-><init>(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/camera/view/ModePickerView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_144
    return-void

    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->enableGrid()V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f04000f

    invoke-static/range {v20 .. v21}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/view/ModePickerView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hide()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z

    goto :goto_144
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public isHiding()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    const v0, 0x7f0a0344

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicatorContainer:Landroid/view/View;

    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

    const v0, 0x7f0a0343

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    new-instance v1, Lcom/pinguo/camera360/camera/view/ModePickerView$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/ModePickerView$1;-><init>(Lcom/pinguo/camera360/camera/view/ModePickerView;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setOnPageChangedListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;)V

    const v0, 0x7f0a0342

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/BannerView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hide()V

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->updateIndicatorCount()V

    return-void
.end method

.method public setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z

    return-void
.end method

.method public showWithAnimation()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->show()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopEditMode()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->stopEditMode()V

    return-void
.end method

.method public updateIndicatorCount()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->pageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerIndicator;->setCount(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->pageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->currentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method
