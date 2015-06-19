.class public Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
.super Ljava/lang/Object;
.source "PGEditRotateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotateAndMirrorInfoBean"
.end annotation


# instance fields
.field private mirrorX:Z

.field private mirrorY:Z

.field private rotate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z

    return v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z

    return v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I

    return v0
.end method

.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I

    return-void
.end method

.method static synthetic access$4(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z

    return-void
.end method

.method static synthetic access$5(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z

    return-void
.end method


# virtual methods
.method public getRotate()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I

    return v0
.end method

.method public isMirrorX()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z

    return v0
.end method

.method public isMirrorY()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z

    return v0
.end method
