.class public Landroid/support/v8/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v8/renderscript/Float4;->x:F

    iput p2, p0, Landroid/support/v8/renderscript/Float4;->y:F

    iput p3, p0, Landroid/support/v8/renderscript/Float4;->z:F

    iput p4, p0, Landroid/support/v8/renderscript/Float4;->w:F

    return-void
.end method
