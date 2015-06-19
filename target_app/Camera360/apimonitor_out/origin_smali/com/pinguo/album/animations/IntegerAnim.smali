.class public Lcom/pinguo/album/animations/IntegerAnim;
.super Lcom/pinguo/album/animations/Animation;
.source "IntegerAnim.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegerAnim"


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/album/animations/Animation;-><init>()V

    iput v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mCurrent:I

    iput v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mFrom:I

    iput-boolean v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mEnabled:Z

    return v0
.end method

.method protected onCalculate(F)V
    .registers 6

    iget v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mFrom:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    iget v3, p0, Lcom/pinguo/album/animations/IntegerAnim;->mFrom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mCurrent:I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mEnabled:Z

    :cond_1c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/animations/IntegerAnim;->mEnabled:Z

    return-void
.end method

.method public startAnimateTo(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mEnabled:Z

    if-nez v0, :cond_9

    iput p1, p0, Lcom/pinguo/album/animations/IntegerAnim;->mCurrent:I

    iput p1, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "IntegerAnim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " target:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mCurrent:I

    iput v0, p0, Lcom/pinguo/album/animations/IntegerAnim;->mFrom:I

    iput p1, p0, Lcom/pinguo/album/animations/IntegerAnim;->mTarget:I

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/pinguo/album/animations/IntegerAnim;->setDuration(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/animations/IntegerAnim;->start()V

    goto :goto_8
.end method
