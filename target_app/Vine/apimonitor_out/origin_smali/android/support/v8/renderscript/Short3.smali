.class public Landroid/support/v8/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# instance fields
.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSS)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/support/v8/renderscript/Short3;->x:S

    iput-short p2, p0, Landroid/support/v8/renderscript/Short3;->y:S

    iput-short p3, p0, Landroid/support/v8/renderscript/Short3;->z:S

    return-void
.end method
