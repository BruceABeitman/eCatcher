.class public Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.super Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.source "EdgeCutController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_BG_COLOR:I = -0xf0f10

.field private static final TAG:Ljava/lang/String; = "EdgeCutController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

.field private mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

.field private mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

.field private mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

.field private mCutOutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;

.field private mCutoutDoneCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;

.field private mDoneView:Landroid/view/View;

.field private mEdgeCutBrushRadius:[I

.field private mEdgeCutButtom:Landroid/view/View;

.field private mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

.field private mEdgeCutTop:Landroid/view/View;

.field private mEraseView:Landroid/view/View;

.field private mErasers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityResumed:Z

.field private mIsLastClothesViewVisible:Z

.field private mMainButtom:Landroid/view/View;

.field private mMainTop:Landroid/view/View;

.field private mNextView:Landroid/view/View;

.field private mOrgBitmap:Landroid/graphics/Bitmap;

.field private mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

.field private mPrevView:Landroid/view/View;

.field private mQuitView:Landroid/view/View;

.field private mRecoverView:Landroid/view/View;

.field private mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

.field private mSkinEffectListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

.field private mTempAlphaBitmap:Landroid/graphics/Bitmap;

.field private mTempBitmapForCancel:Landroid/graphics/Bitmap;

.field private mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

.field private mUpdateCenterImageCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mUpdateCenterImageCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCutoutDoneCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinEffectListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutBrushRadius:[I

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0a0310

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    const v0, 0x7f0a02f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainTop:Landroid/view/View;

    const v0, 0x7f0a0300

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainButtom:Landroid/view/View;

    const v0, 0x7f0a02f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutTop:Landroid/view/View;

    const v0, 0x7f0a0308

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutButtom:Landroid/view/View;

    const v0, 0x7f0a02fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mQuitView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mQuitView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mDoneView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mDoneView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0309

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a030a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0315

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0311

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setBgColor(I)V

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setOnBitmapInvalidateListener(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;)V

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$5;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempBitmapForCancel:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutButtom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainButtom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeErasedBitmap(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z

    return v0
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCutOutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinEffectListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeSkinEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V

    return-void
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->updatePrevNextBtn()V

    return-void
.end method

.method static synthetic access$25(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsLastClothesViewVisible:Z

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionErase()V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyDone()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsLastClothesViewVisible:Z

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private actionErase()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->erase:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->buildEraserData(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1c
    return-void
.end method

.method private actionNext()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->next()V

    :cond_b
    return-void
.end method

.method private actionPrev()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->prev()V

    :cond_b
    return-void
.end method

.method private actionRecover()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->recover:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->buildEraserData(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1c
    return-void
.end method

.method private buildEraserData(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V
    .registers 13

    const/4 v10, -0x1

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutBrushRadius:[I

    array-length v9, v9

    if-eq v8, v9, :cond_67

    :cond_14
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v3, 0x0

    :goto_1f
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutBrushRadius:[I

    array-length v8, v8

    if-lt v3, v8, :cond_25

    :cond_24
    return-void

    :cond_25
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutBrushRadius:[I

    aget v7, v8, v3

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;

    invoke-direct {v0, p1, v7}, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;-><init>(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;I)V

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutBrushRadius:[I

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ne v3, v8, :cond_3e

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setSelected(Z)V

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v8, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    :cond_3e
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f80

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v3

    new-instance v8, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;

    invoke-direct {v8, p0, v4}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;I)V

    invoke-virtual {v1, v8}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_67
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6d
    :goto_6d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_88

    const/4 v5, 0x0

    :goto_74
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_24

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    :cond_88
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setBrush(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_6d

    iget-object v9, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v9, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    goto :goto_6d
.end method

.method private makeCompose(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v2, 0x0

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "makeCompose"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    invoke-virtual {v0, v2, p2, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setInputPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setInputOrg(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setInputAlpha(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private makeCompose(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "makeCompose"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setInputPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setInputAlpha(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$8;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private makeCutout()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static makeErasedBitmap(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x4

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-boolean v7, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v7, :cond_2d

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_2d
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-nez v7, :cond_42

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_42
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    :goto_48
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v3, v7, :cond_4f

    :goto_4e
    return-object v0

    :cond_4f
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;

    invoke-virtual {v6, v1, v4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_58} :catch_5b

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :catch_5b
    move-exception v2

    const-string/jumbo v7, "EdgeCutController"

    const-string/jumbo v8, "makeErasedBitmap OOM!"

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_4e
.end method

.method private makeSkinEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
    .registers 10

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "makeSkinEffect"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getBgPicPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getBgPicWithSkinEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getAlphaPicPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getAlphaPicWithSkinEffectPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->makeSkinEffectForEdgeCut(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V

    return-void
.end method

.method private updatePrevNextBtn()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->canPrev()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_1c
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->canNext()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_a

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1c

    :cond_34
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_a
.end method


# virtual methods
.method public enterChildView()V
    .registers 5

    const v3, 0x7f08019c

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V

    iput-boolean v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "0_enter_edge_cut"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mUpdateCenterImageCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setOnBitmapCompsedListener(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainTop:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutTop:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainButtom:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutButtom:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForButtom(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempBitmapForCancel:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->checkCutoutDone()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->showProcessDialog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCutout()V

    :goto_48
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setTouchListener(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->onEraserClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->updatePrevNextBtn()V

    return-void

    :cond_56
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->showProcessDialog(Landroid/content/Context;I)V

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "2_make_skin_effect"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinEffectListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeSkinEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V

    goto :goto_48
.end method

.method public keyBack()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyBack()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setTouchListener(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->enterNormalMode()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsLastClothesViewVisible:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V

    :cond_2c
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setOrgBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempBitmapForCancel:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempBitmapForCancel:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutTop:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainTop:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutButtom:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainButtom:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForButtom(Landroid/view/View;Landroid/view/View;)V

    goto :goto_d
.end method

.method public keyDone()V
    .registers 5

    invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isMain()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyDone()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->showProcessDialogInCenter()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCutoutDoneCallback:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;->setOnBitmapCompsedListener(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getBgPicPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getAlphaPicPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->doneGetEdgeCutList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeErasedBitmap(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setOrgBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayUse(I)V

    goto :goto_c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mQuitView:Landroid/view/View;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEdgeFunction(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->keyBack()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mDoneView:Landroid/view/View;

    if-ne p1, v0, :cond_18

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEdgeFunction(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->keyDone()V

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEraseView:Landroid/view/View;

    if-ne p1, v0, :cond_24

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionErase()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEdgeFunction(I)V

    goto :goto_b

    :cond_24
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mRecoverView:Landroid/view/View;

    if-ne p1, v0, :cond_30

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionRecover()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEdgeFunction(I)V

    goto :goto_b

    :cond_30
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPrevView:Landroid/view/View;

    if-ne p1, v0, :cond_3b

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionPrev()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->updatePrevNextBtn()V

    goto :goto_b

    :cond_3b
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mNextView:Landroid/view/View;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionNext()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->updatePrevNextBtn()V

    goto :goto_b
.end method

.method public onEraserClick(I)V
    .registers 7

    if-ltz p1, :cond_2d

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2d

    const/4 v1, 0x0

    :goto_b
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2e

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setSelected(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    const/4 v2, 0x0

    :goto_25
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_3d

    :cond_2d
    return-void

    :cond_2e
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mErasers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onResume()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isProcessShowing()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->isTransProcessShowing()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->showProcessDialogInCenter()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;

    invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->makeSkinEffect(Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V

    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z

    return-void
.end method

.method public setCutOutModel(Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCutOutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;

    return-void
.end method

.method public setOrgBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSdk(Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    return-void
.end method

.method public setSkinController(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    return-void
.end method
