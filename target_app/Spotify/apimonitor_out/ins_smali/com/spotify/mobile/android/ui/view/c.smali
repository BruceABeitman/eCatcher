.class final Lcom/spotify/mobile/android/ui/view/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/b;
.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
.field private b:Z
.method public constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/c;->b:Z
return-void
.end method
.method public final a(Landroid/widget/SeekBar;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/b;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
check-cast v0, Lcom/spotify/mobile/android/ui/view/b;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/view/b;->a(Landroid/widget/SeekBar;)V
:cond_d
return-void
.end method
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
return-void
.end method
.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V
return-void
.end method
.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/c;->b:Z
if-eqz v0, :cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/c;->b:Z
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/c;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;
invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
goto :goto_7
.end method