.class public Lcom/spotify/mobile/android/ui/view/MainLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/logic/q;
.field private a:I
.field private b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
.field private c:Landroid/view/View;
.field private d:Landroid/view/ViewGroup;
.field private e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
.field private f:Lcom/spotify/mobile/android/ui/view/m;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method private static a(Landroid/view/View;)I
.registers 3
invoke-virtual {p0}, Landroid/view/View;->getId()I
move-result v0
if-gez v0, :cond_17
instance-of v1, p0, Landroid/view/ViewGroup;
if-eqz v1, :cond_17
check-cast p0, Landroid/view/ViewGroup;
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v0
:cond_17
return v0
.end method
.method public final G()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a()Z
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/m;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
return-void
.end method
.method protected onAttachedToWindow()V
.registers 1
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 1
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
return-void
.end method
.method protected onFinishInflate()V
.registers 4
const v0, 0x7f0a02f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
const v0, 0x7f0a02f9
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
const v0, 0x7f0a02fa
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->d:Landroid/view/ViewGroup;
const v0, 0x7f0a02fb
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->c:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->h:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->G()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Landroid/content/Context;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->a:I
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 14
const/4 v4, 0x0
iget v1, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->a:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getVisibility()I
move-result v0
if-nez v0, :cond_be
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getMeasuredHeight()I
move-result v0
add-int/2addr v0, v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v3
invoke-virtual {v2, v4, v1, v3, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->layout(IIII)V
:goto_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getHeight()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getHeight()I
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v5
invoke-virtual {v3, v4, v1, v5, v2}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->layout(IIII)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getHeight()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->d:Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v3
invoke-virtual {v2, v4, v0, v3, v1}, Landroid/view/ViewGroup;->layout(IIII)V
const/4 v1, 0x0
move v3, v4
:goto_49
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getChildCount()I
move-result v2
if-ge v3, v2, :cond_9c
invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/MainLayout;->a(Landroid/view/View;)I
move-result v5
sparse-switch v5, :sswitch_data_c2
iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
if-eqz v5, :cond_89
iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
invoke-interface {v5, v2}, Lcom/spotify/mobile/android/ui/view/m;->a(Landroid/view/View;)Z
move-result v5
if-eqz v5, :cond_89
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredHeight()I
move-result v6
iget-object v7, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v7}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b()I
move-result v7
sub-int/2addr v6, v7
invoke-virtual {v2, v4, v4, v5, v6}, Landroid/view/View;->layout(IIII)V
:sswitch_78
:goto_78
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_49
:sswitch_7c
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getHeight()I
move-result v5
invoke-virtual {v2, v4, v4, v1, v5}, Landroid/view/View;->layout(IIII)V
move-object v1, v2
goto :goto_78
:cond_89
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredHeight()I
move-result v6
iget-object v7, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v7}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b()I
move-result v7
sub-int/2addr v6, v7
invoke-virtual {v2, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V
goto :goto_78
:cond_9c
if-eqz v1, :cond_a1
invoke-virtual {v1}, Landroid/view/View;->bringToFront()V
:cond_a1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->d:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->c:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getHeight()I
move-result v2
invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->bringToFront()V
return-void
:cond_be
move v0, v1
goto/16 :goto_1b
nop
:sswitch_data_c2
.sparse-switch
0x7f0a022c -> :sswitch_78
0x7f0a02f8 -> :sswitch_78
0x7f0a02f9 -> :sswitch_78
0x7f0a02fa -> :sswitch_78
0x7f0a02fb -> :sswitch_78
0x7f0a0348 -> :sswitch_7c
.end sparse-switch
.end method
.method protected onMeasure(II)V
.registers 12
const/high16 v6, 0x4000
const/4 v1, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/ui/view/MainLayout;->setMeasuredDimension(II)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredWidth()I
move-result v0
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredHeight()I
move-result v0
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getVisibility()I
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v3, v2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->measure(II)V
:cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v3, v2}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->d:Landroid/view/ViewGroup;
invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->c:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredHeight()I
move-result v2
invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getMeasuredHeight()I
move-result v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getVisibility()I
move-result v2
if-nez v2, :cond_5d
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->b:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getMeasuredHeight()I
move-result v2
sub-int/2addr v0, v2
:cond_5d
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->e:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b()I
move-result v2
sub-int/2addr v0, v2
iget v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->a:I
sub-int v2, v0, v2
invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
move v0, v1
move v2, v1
:goto_72
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getChildCount()I
move-result v7
if-ge v0, v7, :cond_9f
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-static {v7}, Lcom/spotify/mobile/android/ui/view/MainLayout;->a(Landroid/view/View;)I
move-result v8
sparse-switch v8, :sswitch_data_aa
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
if-eqz v2, :cond_9a
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
invoke-interface {v2, v7}, Lcom/spotify/mobile/android/ui/view/m;->a(Landroid/view/View;)Z
move-result v2
if-eqz v2, :cond_9a
invoke-virtual {v7, v3, v6}, Landroid/view/View;->measure(II)V
const/4 v2, 0x1
:sswitch_93
:goto_93
add-int/lit8 v0, v0, 0x1
goto :goto_72
:sswitch_96
invoke-virtual {v7, v3, v4}, Landroid/view/View;->measure(II)V
goto :goto_93
:cond_9a
invoke-virtual {v7, v3, v5}, Landroid/view/View;->measure(II)V
move v2, v1
goto :goto_93
:cond_9f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
if-eqz v0, :cond_a8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/MainLayout;->f:Lcom/spotify/mobile/android/ui/view/m;
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/ui/view/m;->a(Z)V
:cond_a8
return-void
nop
:sswitch_data_aa
.sparse-switch
0x7f0a022c -> :sswitch_93
0x7f0a02f8 -> :sswitch_93
0x7f0a02f9 -> :sswitch_93
0x7f0a02fa -> :sswitch_93
0x7f0a02fb -> :sswitch_93
0x7f0a0348 -> :sswitch_96
.end sparse-switch
.end method