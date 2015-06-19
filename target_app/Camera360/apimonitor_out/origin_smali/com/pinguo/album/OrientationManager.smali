.class public Lcom/pinguo/album/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/pinguo/album/common/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOrientationListener:Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mRotationLockedSetting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationLocked:Z

    iput-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mRotationLockedSetting:Z

    iput-object p1, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;-><init>(Lcom/pinguo/album/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationListener:Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;

    return-void
.end method

.method static synthetic access$0(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/pinguo/album/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method private calculateCurrentScreenOrientation()I
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/OrientationManager;->getDisplayRotation()I

    move-result v0

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_1d

    move v1, v2

    :goto_b
    iget-object v4, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    if-eqz v1, :cond_1f

    :goto_1c
    return v3

    :cond_1d
    move v1, v3

    goto :goto_b

    :cond_1f
    const/16 v3, 0x8

    goto :goto_1c

    :cond_22
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_2a

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_2d

    :cond_2a
    if-eqz v1, :cond_31

    move v1, v3

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_33

    :goto_2f
    move v3, v2

    goto :goto_1c

    :cond_31
    move v1, v2

    goto :goto_2d

    :cond_33
    const/16 v2, 0x9

    goto :goto_2f
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :goto_10
    :pswitch_10
    return v1

    :pswitch_11
    const/16 v1, 0x5a

    goto :goto_10

    :pswitch_14
    const/16 v1, 0xb4

    goto :goto_10

    :pswitch_17
    const/16 v1, 0x10e

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private static roundOrientation(II)I
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_10

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_f

    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    :cond_f
    return p1

    :cond_10
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_22

    const/4 v0, 0x1

    :goto_21
    goto :goto_5

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public getCompensation()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/pinguo/album/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationLocked:Z

    sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/pinguo/album/OrientationManager;->calculateCurrentScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationListener:Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;->disable()V

    return-void
.end method

.method public resume()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_19

    :goto_11
    iput-boolean v1, p0, Lcom/pinguo/album/OrientationManager;->mRotationLockedSetting:Z

    iget-object v1, p0, Lcom/pinguo/album/OrientationManager;->mOrientationListener:Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;->enable()V

    return-void

    :cond_19
    move v1, v2

    goto :goto_11
.end method

.method public unlockOrientation()V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/album/OrientationManager;->mOrientationLocked:Z

    const-string/jumbo v0, "OrientationManager"

    const-string/jumbo v1, "unlock orientation"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4
.end method
