.class public final Lqr/recognize/view/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"
.implements Lcom/google/zxing/ResultPointCallback;
.field private final viewfinderView:Lqr/recognize/view/ViewfinderView;
.method public constructor <init>(Lqr/recognize/view/ViewfinderView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lqr/recognize/view/ViewfinderResultPointCallback;->viewfinderView:Lqr/recognize/view/ViewfinderView;
return-void
.end method
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
.registers 3
iget-object v0, p0, Lqr/recognize/view/ViewfinderResultPointCallback;->viewfinderView:Lqr/recognize/view/ViewfinderView;
if-eqz v0, :cond_9
iget-object v0, p0, Lqr/recognize/view/ViewfinderResultPointCallback;->viewfinderView:Lqr/recognize/view/ViewfinderView;
invoke-virtual {v0, p1}, Lqr/recognize/view/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
:cond_9
return-void
.end method