.class public Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
.super Ljava/lang/Object;
.source "PGEditThinFaceAnalyer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectType"
.end annotation


# instance fields
.field public point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

.field public size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;

    return-void
.end method
