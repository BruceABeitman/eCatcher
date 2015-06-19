.class public final Lcom/handmark/pulltorefresh/library/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I = null
.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f
.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23
:goto_15
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21
:goto_1e
sput-object v0, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
goto :goto_4
:catch_21
move-exception v1
goto :goto_1e
:catch_23
move-exception v1
goto :goto_15
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
.registers 3
invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
.registers 17
invoke-static {}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v6
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_f8
move v1, p3
move v4, p4
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I
move-result v0
:goto_17
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z
move-result v5
if-eqz v5, :cond_a7
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v5
if-nez v5, :cond_a7
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v2
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z
move-result v5
if-eqz v5, :cond_e5
if-nez p8, :cond_e5
if-eqz v1, :cond_e5
add-int v3, v1, v4
const-string/jumbo v5, "OverscrollHelper"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "OverScroll. DeltaX: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", ScrollX: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", DeltaY: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", ScrollY: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", NewY: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", ScrollRange: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", CurrentScroll: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
rsub-int/lit8 v5, p6, 0x0
if-ge v3, v5, :cond_b0
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v5
if-eqz v5, :cond_a7
if-nez v0, :cond_9f
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v6, 0x0
new-array v6, v6, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_9f
add-int v5, v0, v3
int-to-float v5, v5
mul-float/2addr v5, p7
float-to-int v5, v5
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V
:goto_a7
:cond_a7
return-void
:pswitch_a8
move v1, p1
move v4, p2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I
move-result v0
goto/16 :goto_17
:cond_b0
add-int v5, p5, p6
if-le v3, v5, :cond_ce
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v5
if-eqz v5, :cond_a7
if-nez v0, :cond_c4
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v6, 0x0
new-array v6, v6, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_c4
add-int v5, v0, v3
sub-int/2addr v5, p5
int-to-float v5, v5
mul-float/2addr v5, p7
float-to-int v5, v5
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V
goto :goto_a7
:cond_ce
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
if-le v5, p6, :cond_dc
sub-int v5, v3, p5
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
if-gt v5, p6, :cond_a7
:cond_dc
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v6, 0x0
new-array v6, v6, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
goto :goto_a7
:cond_e5
if-eqz p8, :cond_a7
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
move-result-object v6
if-ne v5, v6, :cond_a7
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v6, 0x0
new-array v6, v6, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
goto :goto_a7
:pswitch_data_f8
.packed-switch 0x2
:pswitch_a8
.end packed-switch
.end method
.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
.registers 16
const/4 v6, 0x0
const/high16 v7, 0x3f80
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move v8, p6
invoke-static/range {v0 .. v8}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
return-void
.end method
.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
.registers 13
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v6, p5
invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
return-void
.end method