.class public interface abstract Lco/vine/android/views/SquareMatch$SquareMatchView;
.super Ljava/lang/Object;
.source "SquareMatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/views/SquareMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SquareMatchView"
.end annotation


# virtual methods
.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getMatchLayoutRunnable()Ljava/lang/Runnable;
.end method

.method public abstract getMatchSpec()Lco/vine/android/views/SquareMatch$SquareMatchRules;
.end method

.method public abstract getMeasuredHeight()I
.end method

.method public abstract getMeasuredWidth()I
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setMatchRule(Lco/vine/android/views/SquareMatch$SquareMatchRules;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract setMeasuredDimension(I)V
.end method
