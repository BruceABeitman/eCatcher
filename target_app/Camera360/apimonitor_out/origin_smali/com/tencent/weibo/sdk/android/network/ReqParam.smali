.class public Lcom/tencent/weibo/sdk/android/network/ReqParam;
.super Ljava/lang/Object;
.source "ReqParam.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParam(Ljava/lang/String;[B)V
    .registers 19

    move-object/from16 v0, p2

    array-length v1, v0

    div-int/lit16 v1, v1, 0x400

    int-to-double v12, v1

    const-wide/high16 v1, 0x4079

    cmpl-double v1, v12, v1

    if-lez v1, :cond_46

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/high16 v1, 0x4079

    div-double v10, v12, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v3, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v5, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double/2addr v5, v14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v8, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    :cond_46
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_4c
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v10, v1, :cond_69

    const-string/jumbo v1, "buffer======="

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_69
    aget-byte v1, p2, v10

    int-to-char v1, v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4c
.end method

.method public getmParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setmParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4f

    new-instance v5, Lcom/tencent/weibo/sdk/android/network/ReqParam$1;

    invoke-direct {v5, p0}, Lcom/tencent/weibo/sdk/android/network/ReqParam$1;-><init>(Lcom/tencent/weibo/sdk/android/network/ReqParam;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_59

    const-string/jumbo v5, "p-----"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\r"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_59
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "pic"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/network/ReqParam;->mParams:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26
.end method

.method public zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .registers 20

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-wide/from16 v0, p2

    double-to-float v2, v0

    div-float v12, v2, v13

    move-wide/from16 v0, p4

    double-to-float v2, v0

    div-float v11, v2, v10

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v13

    float-to-int v6, v10

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method
