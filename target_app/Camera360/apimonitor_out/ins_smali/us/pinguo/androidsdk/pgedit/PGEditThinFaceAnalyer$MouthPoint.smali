.class public Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;
.super Ljava/lang/Object;
.source "PGEditThinFaceAnalyer.java"
.field public leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field public leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field public rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field public rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-void
.end method