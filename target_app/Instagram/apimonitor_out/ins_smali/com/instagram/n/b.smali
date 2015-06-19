.class public final Lcom/instagram/n/b;
.super Ljava/lang/Object;
.source "ImageSizeUtil.java"
.method public static a(Landroid/content/Context;)I
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
rsub-int v1, v1, 0x132
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
rsub-int v0, v0, 0x280
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
if-ge v1, v0, :cond_1d
sget v0, Lcom/instagram/n/d;->a:I
:goto_1c
return v0
:cond_1d
sget v0, Lcom/instagram/n/d;->b:I
goto :goto_1c
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p1, :cond_17
const-string v0, "_8.jpg"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
sget-object v0, Lcom/instagram/n/c;->a:[I
invoke-static {p0}, Lcom/instagram/n/b;->a(Landroid/content/Context;)I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_22
:cond_17
:goto_17
return-object p1
:pswitch_18
const-string v0, "_8.jpg"
const-string v1, "_6.jpg"
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p1
goto :goto_17
nop
:pswitch_data_22
.packed-switch 0x1
:pswitch_18
.end packed-switch
.end method