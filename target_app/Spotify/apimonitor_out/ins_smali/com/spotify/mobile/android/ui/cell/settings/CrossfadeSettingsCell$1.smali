.class final Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
.registers 10
const/4 v4, -0x1
if-nez p3, :cond_4
:goto_3
return-void
:cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->c(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)Landroid/graphics/Point;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)Landroid/widget/PopupWindow;
move-result-object v0
iget v2, v1, Landroid/graphics/Point;->x:I
iget v3, v1, Landroid/graphics/Point;->y:I
move-object v1, p1
move v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V
goto :goto_3
.end method
.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I
move-result v1
invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingRight()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I
move-result v2
mul-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)I
move-result v2
sub-int/2addr v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I
move-result v1
invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)I
invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I
move-result v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->c(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)Landroid/graphics/Point;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)Landroid/widget/PopupWindow;
move-result-object v1
iget v2, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->c:Z
return-void
.end method
.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->c:Z
return-void
.end method