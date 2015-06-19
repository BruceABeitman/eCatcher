.class public Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;
.super Ljava/lang/Object;
.source "PGEditThinFaceAnalyer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoseType"
.end annotation


# instance fields
.field private leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

.field private leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

.field private rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

.field private rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method


# virtual methods
.method public getLeftBottom()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method public getLeftTop()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method public getRightBottom()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method public getRightTop()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-object v0
.end method

.method public setLeftBottom(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-void
.end method

.method public setLeftTop(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-void
.end method

.method public setRightBottom(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-void
.end method

.method public setRightTop(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    return-void
.end method
