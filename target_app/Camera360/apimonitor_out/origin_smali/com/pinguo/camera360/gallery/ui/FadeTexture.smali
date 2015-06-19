.class public abstract Lcom/pinguo/camera360/gallery/ui/FadeTexture;
.super Ljava/lang/Object;
.source "FadeTexture.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/Texture;


# static fields
.field public static final DURATION:I = 0xb4


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mIsOpaque:Z

.field private final mStartTime:J

.field protected final mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mWidth:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mHeight:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsOpaque:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsAnimating:Z

    return-void
.end method

.method private now()J
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 10

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mWidth:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mHeight:I

    return v0
.end method

.method protected getRatio()F
    .registers 7

    const/high16 v5, 0x3f80

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .registers 5

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsAnimating:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsAnimating:Z

    :cond_14
    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeTexture;->mIsOpaque:Z

    return v0
.end method
