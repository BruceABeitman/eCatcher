.class public final Lcom/google/android/gms/plus/j;
.super Landroid/widget/FrameLayout;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 13
const/16 v2, 0x18
const/16 v1, 0x14
const/4 v8, 0x1
const-wide/high16 v6, 0x3fe0
const/4 v5, 0x0
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/widget/Button;
invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V
new-instance v0, Lcom/google/android/gms/plus/l;
invoke-virtual {p0}, Lcom/google/android/gms/plus/j;->getContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v0, v4, v5}, Lcom/google/android/gms/plus/l;-><init>(Landroid/content/Context;B)V
invoke-interface {v0}, Lcom/google/android/gms/plus/n;->a()Z
move-result v4
if-nez v4, :cond_2b
new-instance v0, Lcom/google/android/gms/plus/m;
invoke-virtual {p0}, Lcom/google/android/gms/plus/j;->getContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v0, v4, v5}, Lcom/google/android/gms/plus/m;-><init>(Landroid/content/Context;B)V
:cond_2b
invoke-interface {v0}, Lcom/google/android/gms/plus/n;->a()Z
move-result v4
if-nez v4, :cond_3a
new-instance v0, Lcom/google/android/gms/plus/k;
invoke-virtual {p0}, Lcom/google/android/gms/plus/j;->getContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v0, v4, v5}, Lcom/google/android/gms/plus/k;-><init>(Landroid/content/Context;B)V
:cond_3a
invoke-interface {v0, p2}, Lcom/google/android/gms/plus/n;->a(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4}, Landroid/graphics/Point;-><init>()V
packed-switch p2, :pswitch_data_84
const/16 v0, 0x26
move v9, v2
move v2, v0
move v0, v9
:goto_4e
invoke-virtual {p0}, Lcom/google/android/gms/plus/j;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
int-to-float v2, v2
invoke-static {v8, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
int-to-float v0, v0
invoke-static {v8, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-double v1, v2
add-double/2addr v1, v6
double-to-int v1, v1
iput v1, v4, Landroid/graphics/Point;->x:I
float-to-double v0, v0
add-double/2addr v0, v6
double-to-int v0, v0
iput v0, v4, Landroid/graphics/Point;->y:I
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
iget v1, v4, Landroid/graphics/Point;->x:I
iget v2, v4, Landroid/graphics/Point;->y:I
const/16 v4, 0x11
invoke-direct {v0, v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/plus/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
:pswitch_79
const/16 v2, 0x20
move v0, v1
goto :goto_4e
:pswitch_7d
const/16 v0, 0xe
goto :goto_4e
:pswitch_80
const/16 v2, 0x32
move v0, v1
goto :goto_4e
:pswitch_data_84
.packed-switch 0x0
:pswitch_7d
:pswitch_79
:pswitch_80
.end packed-switch
.end method