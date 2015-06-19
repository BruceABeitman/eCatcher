.class public final Lcom/d/a/c/a;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"
.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
.registers 5
const/4 v1, 0x0
:try_start_1
const-class v0, Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_14
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1d
move-result v0
if-lez v0, :cond_21
const v2, 0x7fffffff
if-ge v0, v2, :cond_21
:goto_1c
return v0
:catch_1d
move-exception v0
invoke-static {v0}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V
:cond_21
move v0, v1
goto :goto_1c
.end method
.method public static a(Landroid/widget/ImageView;II)Lcom/d/a/b/a/f;
.registers 9
const/4 v0, 0x0
const/4 v5, -0x2
invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
if-eqz v3, :cond_4f
iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ne v1, v5, :cond_4f
move v1, v0
:goto_19
if-gtz v1, :cond_1f
if-eqz v3, :cond_1f
iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
:cond_1f
if-gtz v1, :cond_27
const-string v1, "mMaxWidth"
invoke-static {p0, v1}, Lcom/d/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)I
move-result v1
:cond_27
if-gtz v1, :cond_2a
move v1, p1
:cond_2a
if-gtz v1, :cond_2e
iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I
:cond_2e
if-eqz v3, :cond_54
iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v4, v5, :cond_54
:goto_34
if-gtz v0, :cond_3a
if-eqz v3, :cond_3a
iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_3a
if-gtz v0, :cond_42
const-string v0, "mMaxHeight"
invoke-static {p0, v0}, Lcom/d/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)I
move-result v0
:cond_42
if-gtz v0, :cond_45
move v0, p2
:cond_45
if-gtz v0, :cond_49
iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I
:cond_49
new-instance v2, Lcom/d/a/b/a/f;
invoke-direct {v2, v1, v0}, Lcom/d/a/b/a/f;-><init>(II)V
return-object v2
:cond_4f
invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I
move-result v1
goto :goto_19
:cond_54
invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I
move-result v0
goto :goto_34
.end method