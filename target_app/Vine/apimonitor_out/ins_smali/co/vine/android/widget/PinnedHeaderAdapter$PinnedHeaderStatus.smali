.class public Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
.super Ljava/lang/Object;
.source "PinnedHeaderAdapter.java"
.field public pinnedHeaderIsVisible:Z
.field public pinnedHeaderOffset:I
.field public shouldRequestNewView:Z
.method public constructor <init>(IZZ)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->pinnedHeaderOffset:I
iput-boolean p2, p0, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->shouldRequestNewView:Z
iput-boolean p3, p0, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->pinnedHeaderIsVisible:Z
return-void
.end method