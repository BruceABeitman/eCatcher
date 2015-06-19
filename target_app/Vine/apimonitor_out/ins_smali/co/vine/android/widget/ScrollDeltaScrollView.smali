.class public Lco/vine/android/widget/ScrollDeltaScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollDeltaScrollView.java"
.field private mLastT:I
.field private mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mLastT:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mLastT:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mLastT:I
return-void
.end method
.method protected onScrollChanged(IIII)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V
if-gez p2, :cond_6
const/4 p2, 0x0
:cond_6
iget-object v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
if-eqz v0, :cond_12
iget-object v0, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
iget v1, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mLastT:I
sub-int/2addr v1, p2
invoke-interface {v0, v1}, Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;->onScroll(I)V
:cond_12
iput p2, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mLastT:I
return-void
.end method
.method public setScrollDeltaListener(Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/ScrollDeltaScrollView;->mScrollDeltaListener:Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
return-void
.end method