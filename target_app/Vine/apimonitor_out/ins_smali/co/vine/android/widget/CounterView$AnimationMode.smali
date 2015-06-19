.class public Lco/vine/android/widget/CounterView$AnimationMode;
.super Ljava/lang/Object;
.source "CounterView.java"
.field public final alphaAnimation:Z
.field public final continuousAnimation:Z
.field public final pedometerAnimation:Z
.method public constructor <init>(ZZZ)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lco/vine/android/widget/CounterView$AnimationMode;->continuousAnimation:Z
iput-boolean p2, p0, Lco/vine/android/widget/CounterView$AnimationMode;->pedometerAnimation:Z
iput-boolean p3, p0, Lco/vine/android/widget/CounterView$AnimationMode;->alphaAnimation:Z
return-void
.end method