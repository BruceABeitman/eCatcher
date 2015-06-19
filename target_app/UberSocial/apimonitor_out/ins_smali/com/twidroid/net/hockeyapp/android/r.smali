.class public Lcom/twidroid/net/hockeyapp/android/r;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field public static final a:I = 0x1001
.field public static final b:I = 0x1002
.field public static final c:I = 0x1003
.field public static final d:I = 0x1004
.field public static final e:I = 0x1005
.field private f:Z
.field private g:Z
.field private h:Landroid/widget/RelativeLayout;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/hockeyapp/android/r;-><init>(Landroid/content/Context;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Z)V
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/twidroid/net/hockeyapp/android/r;-><init>(Landroid/content/Context;ZZ)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZZ)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-boolean v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
iput-boolean v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->g:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
if-eqz p2, :cond_21
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->setLayoutHorizontally(Landroid/content/Context;)V
:goto_10
iput-boolean p3, p0, Lcom/twidroid/net/hockeyapp/android/r;->g:Z
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->a(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->b(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->c(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->d(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
return-void
:cond_21
iput-boolean v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
goto :goto_10
.end method
.method private a(Landroid/content/Context;)V
.registers 5
const/4 v2, -0x1
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v1, -0x2
invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v2}, Lcom/twidroid/net/hockeyapp/android/r;->setBackgroundColor(I)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private a(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
.registers 10
const/4 v2, -0x2
const/high16 v6, 0x41a0
const/high16 v5, 0x3f80
const/4 v4, 0x1
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/16 v1, 0x1002
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v4, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v1, 0x2
invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method private b(Landroid/content/Context;)V
.registers 8
const/4 v5, 0x1
const/4 v3, -0x1
const/4 v4, 0x0
new-instance v0, Landroid/widget/RelativeLayout;
invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
const/16 v1, 0x1001
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V
iget-boolean v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
if-eqz v0, :cond_5c
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/high16 v1, 0x437a
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0x9
invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
:goto_33
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
const/16 v1, 0xe6
const/16 v2, 0xec
const/16 v3, 0xef
invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->a(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->b(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/hockeyapp/android/r;->c(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/r;->addView(Landroid/view/View;)V
return-void
:cond_5c
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v1, -0x2
invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->h:Landroid/widget/RelativeLayout;
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
goto :goto_33
.end method
.method private b(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
.registers 12
const/4 v8, 0x2
const/4 v2, -0x2
const/high16 v7, 0x3f80
const/4 v6, 0x0
const/4 v5, 0x1
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/16 v1, 0x1003
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
const/high16 v3, 0x4120
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
float-to-int v3, v3
const/4 v4, 0x0
invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
const/4 v2, 0x3
const/16 v3, 0x1002
invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const/4 v1, -0x1
invoke-virtual {v0, v7, v6, v7, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V
const v1, 0x3f8ccccd
invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
const/high16 v1, 0x4180
invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method private c(Landroid/content/Context;)V
.registers 10
const/16 v7, 0x1001
const/4 v6, 0x1
const/4 v1, -0x1
const/4 v5, 0x0
new-instance v2, Landroid/webkit/WebView;
invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
const/16 v0, 0x1005
invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setId(I)V
const/high16 v0, 0x43c8
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
iget-boolean v4, p0, Lcom/twidroid/net/hockeyapp/android/r;->g:Z
if-eqz v4, :cond_3b
:goto_24
invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-boolean v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
if-eqz v0, :cond_3d
invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
:goto_2e
invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
invoke-virtual {p0, v2}, Lcom/twidroid/net/hockeyapp/android/r;->addView(Landroid/view/View;)V
return-void
:cond_3b
move v0, v1
goto :goto_24
:cond_3d
const/4 v0, 0x3
invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
goto :goto_2e
.end method
.method private c(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
.registers 9
const/4 v4, 0x1
const/4 v5, -0x1
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/16 v1, 0x1004
invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V
const/high16 v1, 0x41a0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/high16 v2, 0x42f0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v4, -0x2
invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
const/16 v1, 0x9
invoke-virtual {v3, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v1, 0x3
const/16 v2, 0x1003
invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getButtonSelector()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const-string v1, "Update"
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4180
invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V
invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method private d(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
.registers 10
const/16 v6, 0xa
const/4 v3, 0x1
const/4 v5, -0x1
const/high16 v0, 0x4040
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v1, v0
new-instance v2, Landroid/widget/ImageView;
invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iget-boolean v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
if-eqz v0, :cond_55
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v3, 0xb
invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
const/high16 v4, -0x100
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_30
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-boolean v1, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
if-eqz v1, :cond_65
invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
:goto_47
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/u;->a()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/r;->addView(Landroid/view/View;)V
return-void
:cond_55
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/u;->a()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_30
:cond_65
const/4 v1, 0x3
const/16 v3, 0x1001
invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
goto :goto_47
.end method
.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Landroid/graphics/drawable/StateListDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V
new-array v1, v5, [I
const v2, -0x10100a7
aput v2, v1, v4
new-instance v2, Landroid/graphics/drawable/ColorDrawable;
const/high16 v3, -0x100
invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
const/4 v1, 0x2
new-array v1, v1, [I
fill-array-data v1, :array_3c
new-instance v2, Landroid/graphics/drawable/ColorDrawable;
const v3, -0xbbbbbc
invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
new-array v1, v5, [I
const v2, 0x10100a7
aput v2, v1, v4
new-instance v2, Landroid/graphics/drawable/ColorDrawable;
const v3, -0x777778
invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
return-object v0
:array_3c
.array-data 0x4
0x59t 0xfft 0xfet 0xfet
0x9ct 0x0t 0x1t 0x1t
.end array-data
.end method
.method private setLayoutHorizontally(Landroid/content/Context;)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/r;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x2
if-ne v0, v1, :cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
:goto_10
return-void
:cond_11
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/net/hockeyapp/android/r;->f:Z
goto :goto_10
.end method