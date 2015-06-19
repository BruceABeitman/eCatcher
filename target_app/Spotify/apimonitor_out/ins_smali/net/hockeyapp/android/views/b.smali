.class public final Lnet/hockeyapp/android/views/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/TextView;
.field private d:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/b;-><init>(Landroid/content/Context;B)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;B)V
.registers 11
const/4 v7, 0x2
const/4 v6, -0x2
const/high16 v5, 0x3f80
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-boolean v4, p0, Lnet/hockeyapp/android/views/b;->d:Z
invoke-virtual {p0, v4}, Lnet/hockeyapp/android/views/b;->setOrientation(I)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/b;->setGravity(I)V
const v0, -0x333334
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/b;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
const/16 v1, 0x3001
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/b;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v1, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
const/high16 v1, 0x4170
invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/b;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
const/16 v1, 0x3002
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/b;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v1, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
const/high16 v1, 0x4170
invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/b;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/16 v1, 0x3003
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/b;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v1, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/high16 v1, 0x4190
invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/b;->addView(Landroid/view/View;)V
return-void
.end method
.method private b(I)V
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_9
return-void
.end method
.method private c(I)V
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_9
return-void
.end method
.method public final a(I)V
.registers 5
const/4 v2, -0x1
const v1, -0x333334
if-nez p1, :cond_1b
invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/b;->setBackgroundColor(I)V
invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/b;->b(I)V
invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/b;->c(I)V
:goto_f
:cond_f
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
if-eqz v0, :cond_1a
iget-object v0, p0, Lnet/hockeyapp/android/views/b;->c:Landroid/widget/TextView;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_1a
return-void
:cond_1b
const/4 v0, 0x1
if-ne p1, v0, :cond_f
invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/b;->setBackgroundColor(I)V
invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/b;->b(I)V
invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/b;->c(I)V
goto :goto_f
.end method