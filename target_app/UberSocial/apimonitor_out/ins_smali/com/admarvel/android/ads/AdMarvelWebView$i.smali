.class  Lcom/admarvel/android/ads/AdMarvelWebView$i;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i;->a:Ljava/lang/ref/WeakReference;
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->a(Landroid/content/Context;)V
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 8
const/16 v5, 0x11
const/4 v4, 0x0
const/4 v3, -0x2
const/high16 v2, 0x4248
invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-static {v2, p1}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I
move-result v1
invoke-static {v2, p1}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I
move-result v2
invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x3f80
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41c8
iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
const/4 v1, 0x1
const/high16 v2, 0x4210
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
float-to-int v3, v1
float-to-int v1, v1
invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xd
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-direct {p0, p1, v2, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
return-void
.end method
.method private a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
.registers 8
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const-string v2, "close"
invoke-static {v2, p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v2
const-string v3, "BTN_CLOSE_IMAGE"
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->v(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v3
if-nez v3, :cond_3e
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_27
new-instance v2, Landroid/widget/RelativeLayout;
invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;
invoke-direct {v1, p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$i;Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$i;->addView(Landroid/view/View;)V
goto :goto_a
:cond_3e
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V
goto :goto_27
.end method