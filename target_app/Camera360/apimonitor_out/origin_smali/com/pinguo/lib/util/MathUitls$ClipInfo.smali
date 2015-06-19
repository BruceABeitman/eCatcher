.class public Lcom/pinguo/lib/util/MathUitls$ClipInfo;
.super Ljava/lang/Object;
.source "MathUitls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/util/MathUitls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipInfo"
.end annotation


# instance fields
.field public size:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(III)V
    .registers 4

    iput p3, p0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->size:I

    iput p1, p0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->x:I

    iput p2, p0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->y:I

    return-void
.end method
