.class  Lco/vine/android/widget/FeedAdapter$5;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$5;->this$0:Lco/vine/android/widget/FeedAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 11
const/4 v5, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v6
if-nez v6, :cond_3e
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter$5;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v6, v6, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
instance-of v6, v6, Lco/vine/android/widget/PinnedHeaderListView;
if-eqz v6, :cond_3e
new-instance v3, Lco/vine/android/widget/TooltipOverlayView;
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter$5;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v6, v6, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
const v7, 0x7f0e0134
invoke-direct {v3, v6, v7}, Lco/vine/android/widget/TooltipOverlayView;-><init>(Landroid/content/Context;I)V
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter$5;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v1, v6, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
check-cast v1, Lco/vine/android/widget/PinnedHeaderListView;
invoke-virtual {v1, p2}, Lco/vine/android/widget/PinnedHeaderListView;->isAbsoluteTouchInPinnedHeader(Landroid/view/MotionEvent;)Z
move-result v4
const/4 v6, 0x2
new-array v0, v6, [I
invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
if-eqz v4, :cond_35
invoke-virtual {v1}, Lco/vine/android/widget/PinnedHeaderListView;->getPinnedHeaderBottomAbs()I
move-result v2
:goto_31
invoke-virtual {v3, v2}, Lco/vine/android/widget/TooltipOverlayView;->showTooltip(I)V
:goto_34
return v5
:cond_35
aget v6, v0, v5
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v7
add-int v2, v6, v7
goto :goto_31
:cond_3e
const/4 v5, 0x0
goto :goto_34
.end method