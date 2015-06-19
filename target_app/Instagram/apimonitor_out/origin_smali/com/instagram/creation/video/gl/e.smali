.class final Lcom/instagram/creation/video/gl/e;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# instance fields
.field a:F

.field b:[F

.field c:Lcom/instagram/creation/video/gl/e;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/video/gl/e;->b:[F

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/video/gl/d;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/instagram/creation/video/gl/e;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/instagram/creation/video/gl/e;->a:F

    invoke-virtual {p1, v0}, Lcom/instagram/creation/video/gl/d;->a(F)V

    :cond_d
    iget-object v0, p0, Lcom/instagram/creation/video/gl/e;->b:[F

    aget v0, v0, v3

    const/high16 v1, -0x80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/instagram/creation/video/gl/e;->b:[F

    invoke-static {p1}, Lcom/instagram/creation/video/gl/d;->a(Lcom/instagram/creation/video/gl/d;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    return-void
.end method
