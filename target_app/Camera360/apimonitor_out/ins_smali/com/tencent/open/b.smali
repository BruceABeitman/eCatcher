.class public Lcom/tencent/open/b;
.super Landroid/app/Dialog;
.source "ProGuard"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/Button;
.field private d:Landroid/widget/Button;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V
invoke-virtual {p0}, Lcom/tencent/open/b;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0, p1}, Lcom/tencent/open/b;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/tencent/open/b;->setContentView(Landroid/view/View;)V
return-void
.end method
.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 10
const/4 v1, 0x0
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
:try_start_9
invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v2
if-nez v2, :cond_11
move-object v0, v1
:goto_10
return-object v0
:cond_11
const-string/jumbo v0, ".9.png"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3a
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_38
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
move-result-object v3
new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
const/4 v5, 0x0
invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
:try_end_2f
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_30
goto :goto_10
:catch_30
move-exception v0
move-object v6, v0
move-object v0, v1
move-object v1, v6
:goto_34
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_10
:cond_38
move-object v0, v1
goto :goto_10
:try_start_3a
:cond_3a
invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
:try_end_3d
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_30
move-result-object v0
:try_start_3e
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_41
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
goto :goto_10
:catch_42
move-exception v1
goto :goto_34
.end method
.method private a(Landroid/content/Context;)Landroid/view/View;
.registers 14
const/16 v11, 0xf7
const/16 v6, 0xc
const/high16 v10, 0x4190
const/4 v9, 0x0
const/4 v8, -0x2
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
const-string/jumbo v0, "window"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v1, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4270
mul-float/2addr v1, v0
float-to-int v1, v1
const/high16 v1, 0x4270
mul-float/2addr v1, v0
float-to-int v1, v1
const/high16 v1, 0x4160
mul-float/2addr v1, v0
float-to-int v1, v1
mul-float v1, v10, v0
float-to-int v1, v1
const/high16 v1, 0x40c0
mul-float/2addr v1, v0
float-to-int v1, v1
mul-float v1, v10, v0
float-to-int v1, v1
new-instance v1, Landroid/widget/RelativeLayout;
invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v3, Landroid/widget/TextView;
invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
iget-object v3, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
const/high16 v4, 0x4188
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V
iget-object v3, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
const/16 v4, 0xa
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V
iget-object v3, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
const/16 v3, 0xe
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v3, 0x14
invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v3, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Landroid/widget/TextView;
invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
iget-object v3, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
const/high16 v4, 0x4180
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V
iget-object v3, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
invoke-virtual {v3, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V
const/16 v3, 0x14
invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v2, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
const/4 v3, 0x2
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V
iget-object v2, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
const/16 v3, 0xb
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V
iget-object v2, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
const/high16 v3, 0x4339
mul-float/2addr v3, v0
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/4 v3, 0x3
const/16 v4, 0xa
invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v3, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Landroid/view/View;
invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/16 v3, 0xd6
const/16 v4, 0xd6
const/16 v5, 0xd6
invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I
move-result v3
invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v4, 0x2
invoke-direct {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/4 v4, 0x3
const/16 v5, 0xb
invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v4, 0xa
const/high16 v5, 0x4140
mul-float/2addr v5, v0
float-to-int v5, v5
invoke-virtual {v3, v9, v4, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Landroid/widget/LinearLayout;
invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v4, -0x1
invoke-direct {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/4 v4, 0x5
invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x7
invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v4, 0x3
invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
new-instance v4, Landroid/widget/Button;
invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
const-string/jumbo v4, "buttonNegt.png"
invoke-direct {p0, v4, p1}, Lcom/tencent/open/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
const/16 v5, 0x24
const/16 v6, 0x61
const/16 v7, 0x83
invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I
move-result v5
invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V
iget-object v4, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
invoke-virtual {v4, v10}, Landroid/widget/Button;->setTextSize(F)V
iget-object v4, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
const/16 v5, 0xe
invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v5, 0x3f80
iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
const/high16 v5, 0x4160
mul-float/2addr v5, v0
float-to-int v5, v5
iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
const/high16 v5, 0x4080
mul-float/2addr v5, v0
float-to-int v5, v5
iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
iget-object v5, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v4, Landroid/widget/Button;
invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
iget-object v4, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
invoke-virtual {v4, v10}, Landroid/widget/Button;->setTextSize(F)V
iget-object v4, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
const/16 v5, 0xff
const/16 v6, 0xff
const/16 v7, 0xff
invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I
move-result v5
invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V
const-string/jumbo v4, "buttonPost.png"
invoke-direct {p0, v4, p1}, Lcom/tencent/open/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v5, 0x3f80
iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
const/high16 v5, 0x4080
mul-float/2addr v5, v0
float-to-int v5, v5
iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
iget-object v5, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const v2, 0x438b8000
mul-float/2addr v2, v0
float-to-int v2, v2
const/high16 v3, 0x4323
mul-float/2addr v3, v0
float-to-int v3, v3
new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x4120
mul-float/2addr v2, v0
float-to-int v2, v2
const/high16 v3, 0x4120
mul-float/2addr v3, v0
float-to-int v3, v3
const/high16 v5, 0x4140
mul-float/2addr v5, v0
float-to-int v5, v5
invoke-virtual {v1, v2, v9, v3, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/16 v2, 0xfb
invoke-static {v11, v2, v11}, Landroid/graphics/Color;->rgb(III)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
new-instance v2, Landroid/graphics/drawable/PaintDrawable;
const/16 v3, 0xfb
invoke-static {v11, v3, v11}, Landroid/graphics/Color;->rgb(III)I
move-result v3
invoke-direct {v2, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V
const/high16 v3, 0x40a0
mul-float/2addr v0, v3
invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-object v1
.end method
.method public a(Landroid/view/View$OnClickListener;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p0
.end method
.method public b(Landroid/view/View$OnClickListener;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->c:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
return-object p0
.end method
.method public d(Ljava/lang/String;)Lcom/tencent/open/b;
.registers 3
iget-object v0, p0, Lcom/tencent/open/b;->d:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
return-object p0
.end method