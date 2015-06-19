.class  Lcom/twidroid/ui/widgets/HorizontialListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/ui/widgets/HorizontialListView;
.method constructor <init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 6
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
move-result v0
return v0
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/widgets/HorizontialListView$3; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I
move-result v3
const/4 v0, 0x0
move v4, v0
:goto_d
if-ge v4, v3, :cond_6a
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, v4}, Lcom/twidroid/ui/widgets/HorizontialListView;->setSelection(I)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, v4}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v5
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v6
invoke-virtual {v2}, Landroid/view/View;->getBottom()I
move-result v7
invoke-virtual {v1, v0, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
float-to-int v5, v5
invoke-virtual {v1, v0, v5}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
if-eqz v0, :cond_6b
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->e(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
move-result-object v0
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->e(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v3, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v3
add-int/lit8 v3, v3, 0x1
add-int/2addr v3, v4
iget-object v5, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v5, v5, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;
iget-object v6, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v6}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v6
add-int/lit8 v6, v6, 0x1
add-int/2addr v4, v6
invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
:cond_6a
const-string v1, " - Lcom/twidroid/ui/widgets/HorizontialListView$3; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_6b
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_d
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/widgets/HorizontialListView$3; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget v2, v0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I
float-to-int v3, p3
add-int/2addr v2, v3
iput v2, v0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_13
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/ui/widgets/HorizontialListView$3; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:catchall_13
move-exception v0
:try_start_14
monitor-exit v1
:try_end_15
.catchall {:try_start_14 .. :try_end_15} :catchall_13
throw v0
.end method
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/widgets/HorizontialListView$3; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
const/4 v0, 0x0
move v6, v0
:goto_7
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I
move-result v0
if-ge v6, v0, :cond_97
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, v6}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0, v6}, Lcom/twidroid/ui/widgets/HorizontialListView;->setSelection(I)V
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v3
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual {v2}, Landroid/view/View;->getBottom()I
move-result v5
invoke-virtual {v1, v0, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
move-result-object v0
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v3, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v3
add-int/lit8 v3, v3, 0x1
add-int/2addr v3, v6
iget-object v4, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v4, v4, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;
iget-object v5, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v5}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v5
add-int/lit8 v5, v5, 0x1
add-int/2addr v5, v6
invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
:cond_6a
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->d(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
move-result-object v0
if-eqz v0, :cond_97
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->d(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v3, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v3
add-int/lit8 v3, v3, 0x1
add-int/2addr v3, v6
iget-object v4, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
iget-object v4, v4, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;
iget-object v5, p0, Lcom/twidroid/ui/widgets/HorizontialListView$3;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v5}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
move-result v5
add-int/lit8 v5, v5, 0x1
add-int/2addr v5, v6
invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
:cond_97
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/ui/widgets/HorizontialListView$3; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_99
add-int/lit8 v0, v6, 0x1
move v6, v0
goto/16 :goto_7
.end method