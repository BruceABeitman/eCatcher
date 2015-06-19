.class public Lcom/pinguo/album/surpport/GLTextView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "GLTextView.java"


# static fields
.field protected static final ICON_TYPE_LEFT:I = 0x1

.field protected static final ICON_TYPE_RIGHT:I = 0x2


# instance fields
.field private DEF_TEXT_COLOR:I

.field private DEF_TEXT_SIZE:I

.field private mBackGroundColor:I

.field protected mContext:Landroid/content/Context;

.field private mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

.field private mIconPadding:I

.field private mIconType:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

.field private mTextTexture:Lcom/pinguo/album/opengles/StringTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V

    const/high16 v0, -0x100

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->DEF_TEXT_COLOR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconType:I

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredWidth:I

    iput p3, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredHeight:I

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->DEF_TEXT_SIZE:I

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconPadding:I

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/surpport/GLTextView;->setPadding(I)V

    return-void
.end method

.method private setIcon(I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;

    iget-object v2, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/pinguo/album/opengles/ResourceTexture;->recycle()V

    :cond_10
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredHeight:I

    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v0

    goto :goto_8
.end method

.method public getWidth()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredWidth:I

    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getWidth()I

    move-result v0

    goto :goto_8
.end method

.method public render(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 13

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLTextView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingTop:I

    sub-int v6, v0, v1

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->save()V

    const/high16 v0, -0x4100

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x4000

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLTextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLTextView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/pinguo/album/surpport/GLTextView;->mBackGroundColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLESCanvas;->fillRect(FFFFI)V

    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingTop:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v10, v0, 0x2

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/ResourceTexture;->getHeight()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    const/4 v7, 0x0

    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconPadding:I

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v1}, Lcom/pinguo/album/opengles/ResourceTexture;->getWidth()I

    move-result v1

    add-int v9, v0, v1

    :goto_5c
    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIcon:Lcom/pinguo/album/opengles/ResourceTexture;

    invoke-virtual {v0, p1, v7, v8}, Lcom/pinguo/album/opengles/ResourceTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    :cond_61
    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v0, p1, v9, v10}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    return-void

    :cond_6a
    iget v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconPadding:I

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v1}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I

    move-result v1

    add-int v7, v0, v1

    const/4 v9, 0x0

    goto :goto_5c
.end method

.method public setBackGroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/surpport/GLTextView;->mBackGroundColor:I

    return-void
.end method

.method public setIconLeft(I)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconType:I

    invoke-direct {p0, p1}, Lcom/pinguo/album/surpport/GLTextView;->setIcon(I)V

    return-void
.end method

.method public setIconPadding(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconPadding:I

    return-void
.end method

.method public setIconRight(I)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mIconType:I

    invoke-direct {p0, p1}, Lcom/pinguo/album/surpport/GLTextView;->setIcon(I)V

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/pinguo/album/surpport/GLTextView;->setPadding(IIII)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingLeft:I

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingRight:I

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingTop:I

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingBottom:I

    return-void
.end method

.method public setText(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/pinguo/album/surpport/GLTextView;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    if-nez v5, :cond_2a

    if-nez p1, :cond_2a

    move v2, v4

    :goto_9
    if-nez v2, :cond_2c

    iget-object v5, p0, Lcom/pinguo/album/surpport/GLTextView;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/pinguo/album/surpport/GLTextView;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-virtual {v5, p1}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_17
    move v2, v3

    :goto_18
    if-nez v2, :cond_29

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-static {p1}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Lcom/pinguo/album/opengles/StringTexture$StringArray;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLTextView;->mText:Lcom/pinguo/album/opengles/StringTexture$StringArray;

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->recycle()V

    :cond_29
    return-void

    :cond_2a
    move v2, v3

    goto :goto_9

    :cond_2c
    move v2, v4

    goto :goto_18
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-direct {v0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;-><init>()V

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->DEF_TEXT_SIZE:I

    iget v2, p0, Lcom/pinguo/album/surpport/GLTextView;->DEF_TEXT_COLOR:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->add(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/pinguo/album/surpport/GLTextView;->setText(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V

    return-void
.end method

.method public setTextAndHeightWrap(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/surpport/GLTextView;->setText(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredHeight:I

    :cond_15
    return-void
.end method

.method public setTextAndHeightWrap(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/surpport/GLTextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mTextTexture:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/album/surpport/GLTextView;->mPaddingBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/surpport/GLTextView;->mMeasuredHeight:I

    :cond_15
    return-void
.end method
