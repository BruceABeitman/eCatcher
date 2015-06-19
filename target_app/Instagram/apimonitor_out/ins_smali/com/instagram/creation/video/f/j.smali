.class final Lcom/instagram/creation/video/f/j;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/instagram/camera/ui/FocusIndicatorView;
.field final synthetic b:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;Lcom/instagram/camera/ui/FocusIndicatorView;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
iput-object p2, p0, Lcom/instagram/creation/video/f/j;->a:Lcom/instagram/camera/ui/FocusIndicatorView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 16
const/4 v12, 0x0
const/4 v11, 0x1
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->y(Lcom/instagram/creation/video/f/a;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
move-result-object v0
if-nez v0, :cond_13
:cond_12
:goto_12
return v11
:cond_13
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v11, :cond_12
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v4, v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v5, v0
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->A(Lcom/instagram/creation/video/f/a;)I
move-result v0
invoke-static {v0}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;
move-result-object v0
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
if-eq v0, v11, :cond_12
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getWidth()I
move-result v1
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getHeight()I
move-result v2
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->getWidth()I
move-result v6
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->getHeight()I
move-result v7
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v0
if-nez v0, :cond_9b
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0, v3}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v0
new-instance v3, Landroid/hardware/Camera$Area;
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
invoke-direct {v3, v8, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0, v3}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->C(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v0
new-instance v3, Landroid/hardware/Camera$Area;
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
invoke-direct {v3, v8, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_9b
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->D(Lcom/instagram/creation/video/f/a;)Landroid/graphics/Matrix;
move-result-object v0
if-nez v0, :cond_e2
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
new-instance v3, Landroid/graphics/Matrix;
invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V
invoke-static {v0, v3}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iget-object v3, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v3}, Lcom/instagram/creation/video/f/a;->E(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->getWidth()I
move-result v3
iget-object v8, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v8}, Lcom/instagram/creation/video/f/a;->E(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;
move-result-object v8
invoke-virtual {v8}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->getHeight()I
move-result v8
iget-object v9, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v9}, Lcom/instagram/creation/video/f/a;->e(Lcom/instagram/creation/video/f/a;)I
move-result v9
iget-object v10, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v10}, Lcom/instagram/creation/video/f/a;->A(Lcom/instagram/creation/video/f/a;)I
move-result v10
invoke-static {v9, v10}, Lcom/instagram/creation/video/l/b;->a(II)I
move-result v9
invoke-static {v0, v12, v9, v3, v8}, Lcom/instagram/camera/h;->a(Landroid/graphics/Matrix;ZIII)V
iget-object v3, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v3}, Lcom/instagram/creation/video/f/a;->D(Lcom/instagram/creation/video/f/a;)Landroid/graphics/Matrix;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
:cond_e2
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
const/high16 v3, 0x3f80
iget-object v8, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v8}, Lcom/instagram/creation/video/f/a;->B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v8
invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/hardware/Camera$Area;
iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
invoke-static/range {v0 .. v8}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;IIFIIIILandroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
const/high16 v3, 0x3fc0
iget-object v8, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v8}, Lcom/instagram/creation/video/f/a;->C(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v8
invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/hardware/Camera$Area;
iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
invoke-static/range {v0 .. v8}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;IIFIIIILandroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
div-int/lit8 v3, v1, 0x2
sub-int v3, v4, v3
sub-int v1, v6, v1
invoke-static {v3, v1}, Lcom/instagram/camera/h;->b(II)I
move-result v1
div-int/lit8 v3, v2, 0x2
sub-int v3, v5, v3
sub-int v2, v7, v2
invoke-static {v3, v2}, Lcom/instagram/camera/h;->b(II)I
move-result v2
invoke-virtual {v0, v1, v2, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->requestLayout()V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->getWidth()I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/creation/video/gl/GLRootView;->getHeight()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
div-int/lit8 v0, v0, 0x4
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->a:Lcom/instagram/camera/ui/FocusIndicatorView;
invoke-virtual {v1}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->a:Lcom/instagram/camera/ui/FocusIndicatorView;
invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->a()V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
move-result-object v1
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->F(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera$Parameters;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->F(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera$Parameters;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->C(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
:try_start_18e
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v1}, Lcom/instagram/creation/video/f/a;->F(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera$Parameters;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_end_19d
.catch Ljava/lang/RuntimeException; {:try_start_18e .. :try_end_19d} :catch_1b2
:goto_19d
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0, v12}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Z)V
iget-object v0, p0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
move-result-object v0
new-instance v1, Lcom/instagram/creation/video/f/k;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/k;-><init>(Lcom/instagram/creation/video/f/j;)V
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
goto/16 :goto_12
:catch_1b2
move-exception v0
const-string v1, "CamcorderFragment"
const-string v2, "Could not set parameters."
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_19d
.end method