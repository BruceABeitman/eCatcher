.class public Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
.super Ljava/lang/Object;
.source "PGEditMenuAnimation.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$MenuAnimationActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseAnimationListener"
.end annotation


# instance fields
.field protected actioning:Z

.field protected mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actioning:Z

    return-void
.end method


# virtual methods
.method public actionFinish()V
    .registers 1

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actioning:Z

    return-void
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isActioning()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->actioning:Z

    return v0
.end method

.method public setViewGroup(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->mViewGroup:Landroid/view/ViewGroup;

    return-void
.end method
