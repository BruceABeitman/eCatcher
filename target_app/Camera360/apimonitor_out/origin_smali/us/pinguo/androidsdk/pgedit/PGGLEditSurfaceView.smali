.class public Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
.super Lus/pinguo/androidsdk/PGGLSurfaceView;
.source "PGGLEditSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mOrgText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/PGGLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/pinguo/androidsdk/PGGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setNowAlpha(F)V
    .registers 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public hideForAlpha()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setNowAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public hideForAlphaWithTouch()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setNowAlpha(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->hideForAlphaWithTouch()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->mOrgText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :pswitch_13
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->showForAlpha()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->mOrgText:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public setOrgText(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->mOrgText:Landroid/view/View;

    return-void
.end method

.method public showForAlpha()V
    .registers 2

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setNowAlpha(F)V

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public startTouchListener()V
    .registers 1

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public stopTouchListener()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
