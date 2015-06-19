.class Lcom/pinguo/album/opengles/MultiLineTexture;
.super Lcom/pinguo/album/opengles/CanvasTexture;
.source "MultiLineTexture.java"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .registers 4

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/album/opengles/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/pinguo/album/opengles/MultiLineTexture;->mLayout:Landroid/text/Layout;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/pinguo/album/opengles/MultiLineTexture;
    .registers 17

    const/4 v1, 0x1

    invoke-static {p2, p3, v1}, Lcom/pinguo/album/opengles/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v4

    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    new-instance v1, Lcom/pinguo/album/opengles/MultiLineTexture;

    invoke-direct {v1, v0}, Lcom/pinguo/album/opengles/MultiLineTexture;-><init>(Landroid/text/Layout;)V

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/opengles/MultiLineTexture;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
