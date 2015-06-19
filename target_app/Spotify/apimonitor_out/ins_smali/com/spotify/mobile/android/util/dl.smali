.class public final Lcom/spotify/mobile/android/util/dl;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/text/TextPaint;)I
.registers 6
const/4 v1, 0x0
const-string v2, "01234567890"
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
new-array v3, v0, [F
invoke-virtual {p0, v2, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I
const/4 v0, 0x0
:goto_d
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_1e
aget v4, v3, v0
cmpl-float v4, v4, v1
if-lez v4, :cond_1b
aget v1, v3, v0
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1e
const/high16 v0, 0x3f80
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public static a(Landroid/widget/TextView;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
if-nez v0, :cond_e
const-string v0, ""
goto :goto_4
:cond_e
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method