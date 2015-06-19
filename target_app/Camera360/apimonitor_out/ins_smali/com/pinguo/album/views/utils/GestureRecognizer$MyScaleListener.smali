.class  Lcom/pinguo/album/views/utils/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;
.method private constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyScaleListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;
invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;Lcom/pinguo/album/views/utils/GestureRecognizer$MyScaleListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/utils/GestureRecognizer$MyScaleListener;-><init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V
return-void
.end method
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.registers 2
return-void
.end method