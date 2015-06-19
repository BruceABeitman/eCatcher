.class public Lcom/twidroid/ui/widgets/gesture/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.field private a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
.method public constructor <init>(Lcom/twidroid/ui/widgets/gesture/GestureImageView;)V
.registers 2
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/c;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
return-void
.end method
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/widgets/gesture/c; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/c;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d()V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/ui/widgets/gesture/c; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method