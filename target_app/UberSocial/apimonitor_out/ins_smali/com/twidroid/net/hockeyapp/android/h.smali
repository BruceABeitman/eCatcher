.class public Lcom/twidroid/net/hockeyapp/android/h;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const-string v0, ""
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/hockeyapp/android/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/h;->a(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/h;->b(Landroid/content/Context;)V
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/hockeyapp/android/h;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 4
const/4 v1, -0x1
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/hockeyapp/android/h;->setBackgroundColor(I)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
const/4 v3, -0x1
const/4 v0, 0x1
const/high16 v1, 0x41a0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/h;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, -0x2
invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v2, 0xd
invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/16 v2, 0x11
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/h;->addView(Landroid/view/View;)V
return-void
.end method
.method private b(Landroid/content/Context;)V
.registers 6
const/4 v3, -0x1
const/4 v0, 0x1
const/high16 v1, 0x4040
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/h;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v0, 0xa
invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/u;->a()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/h;->addView(Landroid/view/View;)V
return-void
.end method