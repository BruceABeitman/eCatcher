.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditGetRendererMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditGetRendererMethod"
.end annotation


# instance fields
.field private mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public rendererAction()V
    .registers 7

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditGetRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;

    move-result-object v1

    if-nez v1, :cond_d

    const-string/jumbo v2, "getMakedImage2Buffer fail"

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I

    move-result-object v2

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I

    move-result v3

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditGetRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->success(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setEditRendererMethodActionListener(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditGetRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    return-void
.end method
