.class public Lco/vine/android/ListState;
.super Ljava/lang/Object;
.source "ListState.java"
.field public firstVisibleItem:I
.field public hasNewScrollState:Z
.field private mDirty:Z
.field private mScrollState:I
.field public totalItemCount:I
.field public visibleItemCount:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isDirty()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/ListState;->mDirty:Z
return v0
.end method
.method public isFling()Z
.registers 3
iget v0, p0, Lco/vine/android/ListState;->mScrollState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public setDirty(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/ListState;->mDirty:Z
return-void
.end method
.method public setScrollState(I)V
.registers 2
iput p1, p0, Lco/vine/android/ListState;->mScrollState:I
return-void
.end method
.method public shouldUpdate()Z
.registers 3
iget v0, p0, Lco/vine/android/ListState;->mScrollState:I
const/4 v1, 0x2
if-eq v0, v1, :cond_b
iget-boolean v0, p0, Lco/vine/android/ListState;->mDirty:Z
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method