.class public Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;
.super Ljava/lang/Object;
.source "EasyCameraViewsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyCameraViewsController"


# instance fields
.field private mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

.field private mContextToResId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

.field private mLightToResId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchViews:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mSwitchViews:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getEasyCameraSwitchViews()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mSwitchViews:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mSwitchViews:Landroid/view/ViewGroup;

    const v1, 0x7f0a028f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    return-void
.end method

.method private getCurResId(II)I
    .registers 11

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    if-nez v3, :cond_6

    :cond_5
    :goto_5
    return v2

    :cond_6
    const-string/jumbo v3, "EasyCameraViewsController"

    const-string/jumbo v4, "change effect:context:%s, light:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->getName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->getName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_40

    if-eqz v1, :cond_5

    :cond_40
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5
.end method

.method private initContextResMaps()V
    .registers 5

    const v3, 0x7f020414

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_15
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON_SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020410

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020411

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->LOW:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020412

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;

    iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020413

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    goto/16 :goto_c

    :cond_91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    goto/16 :goto_15
.end method

.method private releaseContextResMaps()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextToResId:Ljava/util/HashMap;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mLightToResId:Ljava/util/HashMap;

    :cond_17
    return-void
.end method


# virtual methods
.method public init(Z)V
    .registers 4

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->switchViews(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->initContextResMaps()V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    goto :goto_b
.end method

.method public release(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->releaseContextResMaps()V

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mIndicatorViews:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->switchViews(Z)V

    :cond_b
    return-void
.end method

.method public switchContextIcon(II)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->mContextSwitchView:Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/EasyCameraViewsController;->getCurResId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rotateTo(I)V

    :cond_d
    return-void
.end method
