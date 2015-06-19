.class public final Lcom/instagram/common/u/f;
.super Ljava/lang/Object;
.source "ViewUtil.java"
.method public static a(Landroid/util/DisplayMetrics;)F
.registers 3
iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v0, v0
iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v1, v1
div-float/2addr v0, v1
return v0
.end method
.method public static a(Landroid/util/DisplayMetrics;F)F
.registers 3
const/4 v0, 0x1
invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
return v0
.end method
.method public static a(Landroid/util/DisplayMetrics;I)F
.registers 4
const/4 v0, 0x1
int-to-float v1, p1
invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
return v0
.end method
.method public static a(Landroid/content/Context;)I
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
return v0
.end method
.method public static a(Ljava/lang/String;)Landroid/text/Spannable;
.registers 3
new-instance v0, Landroid/text/style/StyleSpan;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-static {p0, v0}, Lcom/instagram/common/u/f;->a(Ljava/lang/String;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/String;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
.registers 5
const/4 v2, 0x0
new-instance v0, Landroid/text/SpannableString;
invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-interface {v0, p1, v2, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/View;)V
.registers 5
const-string v0, "input_method"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method
.method public static a(Landroid/view/View;I)V
.registers 5
invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I
move-result v1
invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I
move-result v2
invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V
return-void
.end method
.method public static b(Landroid/content/Context;)I
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
return v0
.end method
.method public static b(Landroid/content/Context;Landroid/view/View;)V
.registers 4
const-string v0, "input_method"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/high16 v1, 0x200
invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
return-void
.end method
.method public static b(Landroid/view/View;I)V
.registers 5
invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I
move-result v1
invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I
move-result v2
invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V
return-void
.end method
.method public static c(Landroid/content/Context;)Landroid/util/DisplayMetrics;
.registers 3
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
const-string v0, "window"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
return-object v1
.end method
.method public static c(Landroid/view/View;I)V
.registers 5
invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I
move-result v1
invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I
move-result v2
invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V
return-void
.end method
.method public static d(Landroid/view/View;I)V
.registers 5
invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I
move-result v1
invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I
move-result v2
invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V
return-void
.end method
.method public static d(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v1, v1, 0xf
if-ne v1, v0, :cond_10
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public static e(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v0, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method