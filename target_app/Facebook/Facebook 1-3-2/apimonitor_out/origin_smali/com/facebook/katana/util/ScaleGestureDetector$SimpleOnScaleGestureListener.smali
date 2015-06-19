.class public Lcom/facebook/katana/util/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/util/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleOnScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/util/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/ScaleGestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/util/ScaleGestureDetector$SimpleOnScaleGestureListener;->this$0:Lcom/facebook/katana/util/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/facebook/katana/util/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
