.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;Landroid/app/Activity;)V
.registers 6
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->c:Ljava/lang/ref/WeakReference;
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;)Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
return-object v0
.end method
.method private a(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x5
const/4 v3, 0x0
const/4 v2, -0x2
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x3f80
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x41c8
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
const/4 v1, 0x1
const/high16 v2, 0x4210
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
float-to-int v3, v1
float-to-int v1, v1
invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/16 v1, 0x11
iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-direct {p0, p1, v2, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
return-void
.end method
.method private a(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
.registers 11
const/high16 v6, 0x4248
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
move-result v1
if-nez v1, :cond_c
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/RelativeLayout;
invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Landroid/widget/LinearLayout;
invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;
invoke-static {v6, p1}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I
move-result v5
invoke-static {v6, p1}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I
move-result v6
invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v5, 0xb
invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
if-eqz v4, :cond_80
new-instance v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$1;
invoke-direct {v4, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$1;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;)V
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_46
const/high16 v4, 0x3f80
iput v4, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F
invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v4, 0x1
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V
const/4 v4, 0x0
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V
const-string v4, "close"
invoke-static {v4, p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "BTN_CLOSE_IMAGE"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->addView(Landroid/view/View;)V
goto :goto_c
:cond_80
new-instance v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;
invoke-direct {v4, p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_46
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->c:Ljava/lang/ref/WeakReference;
return-object v0
.end method