.class public Lcom/pinguo/album/opengles/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/album/opengles/GLPaint;->mLineWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/opengles/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setColor(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/opengles/GLPaint;->mColor:I

    return-void
.end method

.method public setLineWidth(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/pinguo/album/opengles/GLPaint;->mLineWidth:F

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method
