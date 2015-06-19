.class public final Lcom/instagram/android/widget/q;
.super Ljava/lang/Object;
.source "OrangeBadgeUtil.java"
.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_f
const/4 v0, 0x0
:goto_8
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V
invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_f
invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const/16 v1, 0x29
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v0
float-to-int v0, v0
goto :goto_8
.end method