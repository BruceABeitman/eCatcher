.class public Landroid/support/v8/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# instance fields
.field public x:B

.field public y:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BB)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/support/v8/renderscript/Byte2;->x:B

    iput-byte p2, p0, Landroid/support/v8/renderscript/Byte2;->y:B

    return-void
.end method
