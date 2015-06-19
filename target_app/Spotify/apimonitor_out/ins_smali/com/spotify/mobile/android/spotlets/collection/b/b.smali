.class public final Lcom/spotify/mobile/android/spotlets/collection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
.registers 14
const v9, 0x7f0b0066
const/high16 v8, 0x3f80
const/4 v1, 0x0
const/4 v7, -0x1
const/4 v2, 0x1
new-instance v3, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v3, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
const v0, 0x7f0a028c
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/EmptyView;->setId(I)V
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
const v0, 0x7f0f02c0
new-array v4, v2, [Ljava/lang/Object;
const-string v5, ""
aput-object v5, v4, v1
invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_36
invoke-static {p0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
invoke-static {p0, v3}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;)V
:cond_36
new-instance v4, Landroid/widget/LinearLayout;
invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
if-eqz p3, :cond_138
move v0, v1
:goto_3e
invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V
invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v5, -0x2
invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {p0, v4}, Lcom/spotify/android/paste/widget/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v5
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_6d
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v6, v6
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
div-float v0, v6, v0
const/high16 v6, 0x4416
cmpg-float v0, v0, v6
if-gez v0, :cond_6d
move v1, v2
:cond_6d
if-eqz v1, :cond_13b
const v0, 0x7f0f0012
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:goto_81
invoke-virtual {v5, v2}, Landroid/widget/Button;->setSingleLine(Z)V
const v0, 0x7f0a0124
invoke-virtual {v5, v0}, Landroid/widget/Button;->setId(I)V
invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
if-eqz p3, :cond_a1
iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
:cond_a1
invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {p0, v4}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
const v0, 0x7f0a0125
invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V
invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0f02be
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setSingleLine(Z)V
sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v6, 0x7f0b0065
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
if-eqz p3, :cond_143
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
:goto_ec
invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v3, v4}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout$LayoutParams;
iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/ScrollView;
invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0013
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingLeft()I
move-result v2
invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingRight()I
move-result v3
invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingBottom()I
move-result v4
invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V
return-object v0
:cond_138
move v0, v2
goto/16 :goto_3e
:cond_13b
const v0, 0x7f0f02bf
invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V
goto/16 :goto_81
:cond_143
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
goto :goto_ec
.end method
.method private static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
.registers 5
new-instance v0, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0067
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
int-to-float v1, v1
invoke-direct {v0, p0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
const v1, 0x7f010189
invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
return-object v0
.end method
.method public static a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 3
const v0, 0x7f0f02c7
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aH:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;ILcom/spotify/android/paste/graphics/f;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;ILcom/spotify/android/paste/graphics/f;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 7
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f02c1
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_55
const/high16 v1, 0x4180
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->getPaddingLeft()I
move-result v2
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->getPaddingRight()I
move-result v3
invoke-virtual {v0, v2, v1, v3, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setPadding(IIII)V
:goto_34
invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
const v2, 0x7f0a0124
invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V
const v2, 0x7f0f02c2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/b/b$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/b/b$1;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
:cond_55
invoke-virtual {v0, p2}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
goto :goto_34
.end method
.method public static a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 6
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
const v1, 0x7f0f02ca
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f02c8
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_57
const/high16 v1, 0x4180
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->getPaddingLeft()I
move-result v2
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->getPaddingRight()I
move-result v3
invoke-virtual {v0, v2, v1, v3, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setPadding(IIII)V
:goto_37
invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
const v2, 0x7f0a0124
invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V
const v2, 0x7f0f02c9
invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/Button;->setSingleLine(Z)V
sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
:cond_57
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->D:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
goto :goto_37
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 6
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
const v1, 0x7f0f02ce
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f02cd
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->D:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
return-object v0
.end method
.method public static a(Landroid/view/View;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 4
const v2, 0x7f0a028c
invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const-string v1, "The container view does not contain a view with id R.id.empty"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
instance-of v0, v0, Lcom/spotify/android/paste/widget/EmptyView;
const-string v1, "The container view does not contain an EmptyView"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method private static a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0068
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/EmptyView;->d()Landroid/widget/ImageView;
move-result-object v1
sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(I)V
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/EmptyView;->a()V
return-void
.end method
.method private static a(Lcom/spotify/android/paste/widget/EmptyView;)V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/EmptyView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/EmptyView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
return-void
.end method
.method public static b(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 3
const v0, 0x7f0f02c5
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;ILcom/spotify/android/paste/graphics/f;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 3
const v0, 0x7f0f02c6
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;ILcom/spotify/android/paste/graphics/f;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
return-object v0
.end method
.method public static d(Landroid/content/Context;)Landroid/view/View;
.registers 6
const/4 v3, -0x1
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
const v1, 0x7f0a028c
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setId(I)V
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-static {p0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
invoke-static {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;)V
:cond_1f
const v1, 0x7f0f02bc
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f02b9
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/widget/ScrollView;
invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0b0013
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingLeft()I
move-result v2
invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingRight()I
move-result v3
invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingBottom()I
move-result v4
invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V
return-object v1
.end method
.method public static e(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 3
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Lcom/spotify/android/paste/widget/EmptyView;)V
const v1, 0x7f0f02c4
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f02c3
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_2b
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_2b
return-object v0
.end method