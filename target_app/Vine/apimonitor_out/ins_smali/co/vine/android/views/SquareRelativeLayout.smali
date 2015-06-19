.class public Lco/vine/android/views/SquareRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SquareRelativeLayout.java"
.implements Ljava/lang/Runnable;
.implements Lco/vine/android/views/SquareMatch$SquareMatchView;
.field private mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
sget-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;
iput-object v0, p0, Lco/vine/android/views/SquareRelativeLayout;->mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;
iput-object v0, p0, Lco/vine/android/views/SquareRelativeLayout;->mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;
iput-object v0, p0, Lco/vine/android/views/SquareRelativeLayout;->mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
return-void
.end method
.method public getMatchLayoutRunnable()Ljava/lang/Runnable;
.registers 1
return-object p0
.end method
.method public getMatchSpec()Lco/vine/android/views/SquareMatch$SquareMatchRules;
.registers 2
iget-object v0, p0, Lco/vine/android/views/SquareRelativeLayout;->mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
return-object v0
.end method
.method public onMeasure(II)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
invoke-static {p0}, Lco/vine/android/views/SquareMatch;->setupSquareMatchView(Lco/vine/android/views/SquareMatch$SquareMatchView;)V
return-void
.end method
.method public run()V
.registers 1
invoke-static {p0}, Lco/vine/android/views/SquareMatch;->setMatchingLayoutAction(Lco/vine/android/views/SquareMatch$SquareMatchView;)V
return-void
.end method
.method public setMatchRule(Lco/vine/android/views/SquareMatch$SquareMatchRules;)V
.registers 2
.parameter
.end parameter
iput-object p1, p0, Lco/vine/android/views/SquareRelativeLayout;->mSpec:Lco/vine/android/views/SquareMatch$SquareMatchRules;
return-void
.end method
.method public setMeasuredDimension(I)V
.registers 2
invoke-virtual {p0, p1, p1}, Lco/vine/android/views/SquareRelativeLayout;->setMeasuredDimension(II)V
return-void
.end method