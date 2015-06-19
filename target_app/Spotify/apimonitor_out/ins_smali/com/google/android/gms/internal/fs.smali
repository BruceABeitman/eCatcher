.class public final Lcom/google/android/gms/internal/fs;
.super Landroid/widget/Button;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const v0, 0x1010048
invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private static a(III)I
.registers 6
packed-switch p0, :pswitch_data_1a
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown color scheme: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_18
move p1, p2
:pswitch_19
return p1
:pswitch_data_1a
.packed-switch 0x0
:pswitch_19
:pswitch_18
.end packed-switch
.end method
.method public final a(Landroid/content/res/Resources;II)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v6, 0x4240
const/high16 v5, 0x3f00
if-ltz p2, :cond_6a
const/4 v0, 0x3
if-ge p2, v0, :cond_6a
move v0, v1
:goto_c
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unknown button size "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
if-ltz p3, :cond_6c
const/4 v0, 0x2
if-ge p3, v0, :cond_6c
:goto_23
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Unknown color scheme "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setTypeface(Landroid/graphics/Typeface;)V
const/high16 v0, 0x4160
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setTextSize(F)V
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float v1, v0, v6
add-float/2addr v1, v5
float-to-int v1, v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fs;->setMinHeight(I)V
mul-float/2addr v0, v6
add-float/2addr v0, v5
float-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setMinWidth(I)V
packed-switch p2, :pswitch_data_d2
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown button size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6a
move v0, v2
goto :goto_c
:cond_6c
move v1, v2
goto :goto_23
:pswitch_6e
sget v0, Lcom/google/android/gms/c;->c:I
sget v1, Lcom/google/android/gms/c;->d:I
invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fs;->a(III)I
move-result v0
:goto_76
const/4 v1, -0x1
if-ne v0, v1, :cond_8a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Could not find background resource!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_81
sget v0, Lcom/google/android/gms/c;->a:I
sget v1, Lcom/google/android/gms/c;->b:I
invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fs;->a(III)I
move-result v0
goto :goto_76
:cond_8a
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
sget v0, Lcom/google/android/gms/b;->a:I
sget v1, Lcom/google/android/gms/b;->b:I
invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fs;->a(III)I
move-result v0
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setTextColor(Landroid/content/res/ColorStateList;)V
packed-switch p2, :pswitch_data_dc
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown button size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_b8
sget v0, Lcom/google/android/gms/d;->b:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setText(Ljava/lang/CharSequence;)V
:goto_c1
return-void
:pswitch_c2
sget v0, Lcom/google/android/gms/d;->c:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setText(Ljava/lang/CharSequence;)V
goto :goto_c1
:pswitch_cc
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fs;->setText(Ljava/lang/CharSequence;)V
goto :goto_c1
nop
:pswitch_data_d2
.packed-switch 0x0
:pswitch_6e
:pswitch_6e
:pswitch_81
.end packed-switch
:pswitch_data_dc
.packed-switch 0x0
:pswitch_b8
:pswitch_c2
:pswitch_cc
.end packed-switch
.end method