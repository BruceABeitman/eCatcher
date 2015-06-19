.class public final Lnet/hockeyapp/android/views/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/LinearLayout;
.field private b:Landroid/widget/ScrollView;
.field private c:Landroid/widget/LinearLayout;
.field private d:Landroid/widget/LinearLayout;
.field private e:Landroid/widget/LinearLayout;
.field private f:Landroid/widget/ListView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 12
const/4 v9, -0x2
const/high16 v8, 0x4120
const/4 v7, -0x1
const/4 v6, 0x1
const/4 v5, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v7}, Lnet/hockeyapp/android/views/c;->setBackgroundColor(I)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
const v1, 0x20012
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/16 v2, 0x31
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/c;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/ScrollView;
invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
const v1, 0x20017
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/16 v2, 0x11
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
const v1, 0x20013
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/4 v2, 0x3
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
const/16 v1, 0x30
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->b:Landroid/widget/ScrollView;
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
const v1, 0x20015
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/16 v2, 0x11
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
const/16 v1, 0x30
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->a:Landroid/widget/LinearLayout;
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/EditText;
invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2002
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V
const/16 v1, 0x4001
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V
const-string v1, "Name"
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
const v1, -0x333334
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V
invoke-static {p1, v0}, Lnet/hockeyapp/android/views/c;->a(Landroid/content/Context;Landroid/widget/EditText;)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/EditText;
invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2004
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V
const/16 v1, 0x21
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V
const-string v1, "Email"
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
const v1, -0x333334
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V
invoke-static {p1, v0}, Lnet/hockeyapp/android/views/c;->a(Landroid/content/Context;Landroid/widget/EditText;)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/EditText;
invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2006
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V
const/16 v1, 0x4031
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V
const-string v1, "Subject"
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
const v1, -0x333334
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V
invoke-static {p1, v0}, Lnet/hockeyapp/android/views/c;->a(Landroid/content/Context;Landroid/widget/EditText;)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/EditText;
invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2008
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v2, 0x41a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
const/high16 v3, 0x42c8
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
float-to-int v3, v3
invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V
const/16 v1, 0x4001
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V
const-string v1, "Message"
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
const v1, -0x333334
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V
invoke-static {p1, v0}, Lnet/hockeyapp/android/views/c;->a(Landroid/content/Context;Landroid/widget/EditText;)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2009
invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/high16 v2, 0x41f0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v6, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
float-to-int v3, v3
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v5, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lnet/hockeyapp/android/views/c;->a()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V
const-string v1, "Send feedback"
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/16 v1, 0x2000
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v6, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v5, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const/high16 v1, 0x3f80
const/4 v2, 0x0
const/high16 v3, 0x3f80
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V
const-string v1, "Last Updated: "
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v1, -0x777778
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
const/4 v1, 0x0
invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
const v1, 0x20014
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
const/4 v2, 0x3
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
const/16 v1, 0x30
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const v1, 0x20010
invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v6, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
const/high16 v3, 0x40a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
float-to-int v3, v3
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v5, v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
const/high16 v2, 0x3f80
iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lnet/hockeyapp/android/views/c;->a()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V
const-string v1, "Add a Response"
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const v1, 0x20011
invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v6, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
const/high16 v3, 0x40a0
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
float-to-int v3, v3
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v3, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lnet/hockeyapp/android/views/c;->a()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V
const-string v1, "Refresh"
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V
const/4 v1, 0x2
const/high16 v2, 0x4170
invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V
const/high16 v1, 0x3f80
iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->e:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Landroid/widget/ListView;
invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lnet/hockeyapp/android/views/c;->f:Landroid/widget/ListView;
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->f:Landroid/widget/ListView;
const v1, 0x20016
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lnet/hockeyapp/android/views/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lnet/hockeyapp/android/views/c;->f:Landroid/widget/ListView;
invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->f:Landroid/widget/ListView;
invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V
iget-object v0, p0, Lnet/hockeyapp/android/views/c;->d:Landroid/widget/LinearLayout;
iget-object v1, p0, Lnet/hockeyapp/android/views/c;->f:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method private static a()Landroid/graphics/drawable/Drawable;
.registers 6
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
.method private static a(Landroid/content/Context;Landroid/widget/EditText;)V
.registers 10
const/high16 v7, 0x3f80
const/4 v6, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_72
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4120
mul-float/2addr v0, v1
float-to-int v0, v0
new-instance v1, Landroid/graphics/drawable/ShapeDrawable;
new-instance v2, Landroid/graphics/drawable/shapes/RectShape;
invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V
invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v2
const/4 v3, -0x1
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v2, v0
const-wide/high16 v4, 0x3ff8
mul-double/2addr v2, v4
double-to-int v0, v2
new-instance v2, Landroid/graphics/drawable/ShapeDrawable;
new-instance v3, Landroid/graphics/drawable/shapes/RectShape;
invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V
invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v3
const v4, -0xbbbbbc
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V
sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {v2, v6, v6, v6, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V
new-instance v0, Landroid/graphics/drawable/LayerDrawable;
const/4 v3, 0x2
new-array v3, v3, [Landroid/graphics/drawable/Drawable;
aput-object v2, v3, v6
const/4 v2, 0x1
aput-object v1, v3, v2
invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_72
return-void
.end method