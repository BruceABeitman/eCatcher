.class public Landroid/support/v8/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"
.field public w:D
.field public x:D
.field public y:D
.field public z:D
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(DDDD)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Landroid/support/v8/renderscript/Double4;->x:D
iput-wide p3, p0, Landroid/support/v8/renderscript/Double4;->y:D
iput-wide p5, p0, Landroid/support/v8/renderscript/Double4;->z:D
iput-wide p7, p0, Landroid/support/v8/renderscript/Double4;->w:D
return-void
.end method