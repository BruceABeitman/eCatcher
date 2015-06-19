.class public Lcom/pinguo/album/surpport/GLPullLoadingLayout;
.super Ljava/lang/Object;
.source "GLPullLoadingLayout.java"
.field private static synthetic $SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I = null
.field private static final DEFAULT_IMG_LENGTH:I = 0x0
.field private static final DEFAULT_LENGTH:I = 0x0
.field private static final DEFAULT_TEXT_COLOR:I = -0x34302e
.field private static final DEFAULT_TEXT_SIZE:I = 0x0
.field public static final TYPE_PULL_DOWN:I = 0x0
.field public static final TYPE_PULL_UP:I = 0x1
.field private mHeight:I
.field private mIconDown:Lcom/pinguo/album/opengles/Texture;
.field private mIconLoading:Lcom/pinguo/album/opengles/Texture;
.field private mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
.field private mPullTexture:Lcom/pinguo/album/opengles/StringTexture;
.field private mReleaseTexture:Lcom/pinguo/album/opengles/StringTexture;
.field private mRotateLoading:I
.field private mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
.field private mType:I
.method static synthetic $SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State()[I
.registers 3
sget-object v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->values()[Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->MANUAL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d
:try_start_1e
:goto_1e
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b
:goto_27
:try_start_27
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_39
:try_start_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_42
.catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45
:goto_42
sput-object v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I
goto :goto_4
:catch_45
move-exception v1
goto :goto_42
:catch_47
move-exception v1
goto :goto_39
:catch_49
move-exception v1
goto :goto_30
:catch_4b
move-exception v1
goto :goto_27
:catch_4d
move-exception v1
goto :goto_1e
:catch_4f
move-exception v1
goto :goto_15
.end method
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xe
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v0
sput v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_TEXT_SIZE:I
const/16 v0, 0x19
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v0
sput v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
const/16 v0, 0x37
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v0
sput v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_LENGTH:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;IIII)V
.registers 12
invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
move-object v0, p0
move-object v1, p1
move v5, p5
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mType:I
new-instance v0, Landroid/text/TextPaint;
invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V
sget v1, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_TEXT_SIZE:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V
const v1, -0x34302e
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V
iput p5, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mType:I
invoke-static {p2, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-static {p3, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mPullTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-static {p4, v0}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mReleaseTexture:Lcom/pinguo/album/opengles/StringTexture;
sget v1, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_LENGTH:I
iput v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
new-instance v1, Lcom/pinguo/album/opengles/ResourceTexture;
const v2, 0x7f02016e
invoke-direct {v1, p1, v2}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mIconDown:Lcom/pinguo/album/opengles/Texture;
new-instance v1, Lcom/pinguo/album/opengles/ResourceTexture;
const v2, 0x7f02016f
invoke-direct {v1, p1, v2}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mIconLoading:Lcom/pinguo/album/opengles/Texture;
return-void
.end method
.method public inLoadingAnimation()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->isRefreshingState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)Z
move-result v0
if-eqz v0, :cond_12
iget v0, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mRotateLoading:I
add-int/lit8 v0, v0, 0x5
rem-int/lit16 v0, v0, 0x168
iput v0, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mRotateLoading:I
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public render(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
.registers 20
iget v10, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
if-gtz v10, :cond_5
:goto_4
return-void
:cond_5
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State()[I
move-result-object v10
iget-object v11, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-virtual {v11}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I
move-result v11
aget v10, v10, v11
packed-switch v10, :pswitch_data_f0
iget-object v5, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mPullTexture:Lcom/pinguo/album/opengles/StringTexture;
iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mIconDown:Lcom/pinguo/album/opengles/Texture;
iget v10, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mType:I
if-nez v10, :cond_cd
const/4 v1, 0x0
:goto_1e
const/4 v10, 0x2
invoke-interface {p1, v10}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
invoke-virtual {v5}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I
move-result v7
invoke-virtual {v5}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I
move-result v6
sub-int v10, p4, p2
sub-int/2addr v10, v7
int-to-float v10, v10
const/high16 v11, 0x4000
div-float v8, v10, v11
if-nez p3, :cond_d1
move/from16 v0, p5
int-to-float v10, v0
iget v11, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
int-to-float v11, v11
iget v12, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
sub-int/2addr v12, v6
int-to-float v12, v12
const/high16 v13, 0x4000
div-float/2addr v12, v13
sub-float/2addr v11, v12
sub-float v9, v10, v11
:goto_44
invoke-interface {p1, v8, v9}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
const/4 v10, 0x0
const/4 v11, 0x0
invoke-virtual {v5, p1, v10, v11}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
const/4 v10, 0x2
invoke-interface {p1, v10}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
invoke-interface {v3}, Lcom/pinguo/album/opengles/Texture;->getHeight()I
move-result v4
if-nez p3, :cond_df
move/from16 v0, p5
int-to-float v10, v0
iget v11, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
int-to-float v11, v11
iget v12, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
sget v13, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
sub-int/2addr v12, v13
int-to-float v12, v12
const/high16 v13, 0x4000
div-float/2addr v12, v13
sub-float/2addr v11, v12
sub-float v9, v10, v11
:goto_6b
const/16 v10, 0x1e
invoke-static {v10}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v10
int-to-float v10, v10
invoke-interface {p1, v10, v9}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
sget v10, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
div-int/lit8 v10, v10, 0x2
int-to-float v10, v10
sget v11, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
div-int/lit8 v11, v11, 0x2
int-to-float v11, v11
invoke-interface {p1, v10, v11}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
iget v10, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mRotateLoading:I
int-to-float v10, v10
const/high16 v11, 0x43b4
rem-float v11, v1, v11
add-float/2addr v10, v11
const/4 v11, 0x0
const/4 v12, 0x0
const/high16 v13, 0x3f80
invoke-interface {p1, v10, v11, v12, v13}, Lcom/pinguo/album/opengles/GLESCanvas;->rotate(FFFF)V
sget v10, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
neg-int v10, v10
div-int/lit8 v10, v10, 0x2
int-to-float v10, v10
sget v11, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
neg-int v11, v11
div-int/lit8 v11, v11, 0x2
int-to-float v11, v11
invoke-interface {p1, v10, v11}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
const/high16 v10, 0x3f80
sget v11, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
int-to-float v11, v11
mul-float/2addr v10, v11
int-to-float v11, v4
div-float v2, v10, v11
const/high16 v10, 0x3f80
invoke-interface {p1, v2, v2, v10}, Lcom/pinguo/album/opengles/GLESCanvas;->scale(FFF)V
const/4 v10, 0x0
const/4 v11, 0x0
invoke-interface {v3, p1, v10, v11}, Lcom/pinguo/album/opengles/Texture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
goto/16 :goto_4
:pswitch_b8
iget-object v5, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mIconLoading:Lcom/pinguo/album/opengles/Texture;
goto/16 :goto_1e
:pswitch_be
iget-object v5, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mReleaseTexture:Lcom/pinguo/album/opengles/StringTexture;
iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mIconDown:Lcom/pinguo/album/opengles/Texture;
iget v10, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mType:I
if-nez v10, :cond_ca
const/high16 v1, 0x4334
goto/16 :goto_1e
:cond_ca
const/4 v1, 0x0
goto/16 :goto_1e
:cond_cd
const/high16 v1, 0x4334
goto/16 :goto_1e
:cond_d1
move/from16 v0, p3
int-to-float v10, v0
iget v11, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
sub-int/2addr v11, v6
int-to-float v11, v11
const/high16 v12, 0x4000
div-float/2addr v11, v12
add-float v9, v10, v11
goto/16 :goto_44
:cond_df
move/from16 v0, p3
int-to-float v10, v0
iget v11, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mHeight:I
sget v12, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->DEFAULT_IMG_LENGTH:I
sub-int/2addr v11, v12
int-to-float v11, v11
const/high16 v12, 0x4000
div-float/2addr v11, v12
add-float v9, v10, v11
goto/16 :goto_6b
nop
:pswitch_data_f0
.packed-switch 0x3
:pswitch_be
:pswitch_b8
:pswitch_b8
:pswitch_b8
.end packed-switch
.end method
.method public setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->isRefreshingState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)Z
move-result v0
if-nez v0, :cond_d
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->mRotateLoading:I
:cond_d
return-void
.end method