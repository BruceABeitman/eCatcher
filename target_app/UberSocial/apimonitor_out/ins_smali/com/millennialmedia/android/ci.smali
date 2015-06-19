.class  Lcom/millennialmedia/android/ci;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.field  a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/ch;)V
.registers 3
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/ci;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
const/4 v0, 0x0
if-eqz p1, :cond_5
if-nez p2, :cond_6
:goto_5
:cond_5
return v0
:cond_6
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
sub-float/2addr v1, v2
float-to-int v1, v1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
const/16 v2, 0xc8
if-le v1, v2, :cond_5
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v1
invoke-static {p4}, Ljava/lang/Math;->abs(F)F
move-result v2
cmpl-float v1, v1, v2
if-lez v1, :cond_5
const/4 v1, 0x0
cmpl-float v1, p3, v1
if-lez v1, :cond_43
sget v1, Lcom/millennialmedia/android/co;->c:I
if-nez v1, :cond_39
const-string v0, "MMLayout"
const-string v1, "Enabling debug and verbose logging."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x3
sput v0, Lcom/millennialmedia/android/co;->c:I
:goto_37
:cond_37
const/4 v0, 0x1
goto :goto_5
:cond_39
const-string v1, "MMLayout"
const-string v2, "Disabling debug and verbose logging."
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
sput v0, Lcom/millennialmedia/android/co;->c:I
goto :goto_37
:cond_43
iget-object v0, p0, Lcom/millennialmedia/android/ci;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ch;
if-eqz v0, :cond_37
iget-object v0, v0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;
invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Lcom/millennialmedia/android/bp;)V
goto :goto_37
.end method