.class final Lcom/instagram/creation/video/f/bs;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoTrimFragment.java"
.field final synthetic a:Lcom/instagram/creation/video/f/bi;
.method private constructor <init>(Lcom/instagram/creation/video/f/bi;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/f/bi;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bs;-><init>(Lcom/instagram/creation/video/f/bi;)V
return-void
.end method
.method public final onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/video/f/bs; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->o(Lcom/instagram/creation/video/f/bi;)I
move-result v0
int-to-float v0, v0
sub-float/2addr v0, p3
float-to-double v2, v0
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->p(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v4
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->j(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v0
cmpl-double v4, v2, v4
if-lez v4, :cond_50
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;
move-result-object v0
float-to-int v1, p3
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->scrollBy(II)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->p(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v0
:goto_2b
iget-object v2, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
double-to-int v0, v0
invoke-static {v2, v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->c(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v1
double-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->i()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0, v6}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;Z)Z
const-string v1, " - Lcom/instagram/creation/video/f/bs; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v6
:cond_50
cmpg-double v4, v2, v0
if-gez v4, :cond_5a
iget-object v2, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v2}, Lcom/instagram/creation/video/f/bi;->V()V
goto :goto_2b
:cond_5a
move-wide v0, v2
goto :goto_2b
.end method