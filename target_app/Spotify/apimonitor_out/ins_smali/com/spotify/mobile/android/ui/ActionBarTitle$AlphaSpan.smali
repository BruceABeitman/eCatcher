.class  Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/ActionBarTitle;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;
const/4 v0, -0x1
invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 6
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;->getForegroundColor()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)F
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b(Lcom/spotify/mobile/android/ui/ActionBarTitle;)F
move-result v2
mul-float/2addr v1, v2
const/high16 v2, 0x437f
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-static {v0}, Landroid/graphics/Color;->red(I)I
move-result v2
invoke-static {v0}, Landroid/graphics/Color;->green(I)I
move-result v3
invoke-static {v0}, Landroid/graphics/Color;->blue(I)I
move-result v0
invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
return-void
.end method