.class public final Lcom/spotify/mobile/android/spotlets/browse/util/b;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/CardView;
.registers 5
const/4 v3, -0x1
new-instance v0, Lcom/spotify/android/paste/widget/CardView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/CardView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v2, 0x3f80
invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0027
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method