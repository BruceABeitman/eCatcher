.class public Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"
.field static final IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
.field  mScroller:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>()V
sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x9
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V
sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
goto :goto_d
:cond_1a
new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;-><init>()V
sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
goto :goto_d
.end method
.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
return-void
.end method
.method public static create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
move-result-object v0
return-object v0
.end method
.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
.registers 3
new-instance v0, Landroid/support/v4/widget/ScrollerCompat;
invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
return-object v0
.end method
.method public abortAnimation()V
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->abortAnimation(Ljava/lang/Object;)V
return-void
.end method
.method public computeScrollOffset()Z
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->computeScrollOffset(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public fling(IIIIIIII)V
.registers 19
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIII)V
return-void
.end method
.method public fling(IIIIIIIIII)V
.registers 23
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
move v2, p1
move v3, p2
move v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move/from16 v10, p9
move/from16 v11, p10
invoke-interface/range {v0 .. v11}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIIIII)V
return-void
.end method
.method public getCurrVelocity()F
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrVelocity(Ljava/lang/Object;)F
move-result v0
return v0
.end method
.method public getCurrX()I
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrX(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getCurrY()I
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrY(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getFinalX()I
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalX(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getFinalY()I
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalY(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public isFinished()Z
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isFinished(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isOverScrolled()Z
.registers 3
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isOverScrolled(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public notifyHorizontalEdgeReached(III)V
.registers 6
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
return-void
.end method
.method public notifyVerticalEdgeReached(III)V
.registers 6
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V
return-void
.end method
.method public startScroll(IIII)V
.registers 11
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIII)V
return-void
.end method
.method public startScroll(IIIII)V
.registers 13
sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIIII)V
return-void
.end method