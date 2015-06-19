.class public Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/ui/view/a;
.field private b:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/ui/view/a;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/a;-><init>(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/spotify/mobile/android/ui/view/a;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/a;-><init>(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/a;->a()V
return-void
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/a;->a()V
return-void
.end method
.method public final g()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/a;->a(Lcom/spotify/mobile/android/ui/view/a;)V
return-void
.end method
.method public final h()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a:Lcom/spotify/mobile/android/ui/view/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/a;->b(Lcom/spotify/mobile/android/ui/view/a;)V
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
instance-of v0, p1, Landroid/os/Bundle;
if-eqz v0, :cond_18
check-cast p1, Landroid/os/Bundle;
const-string v0, "super_state"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V
const-string v0, "auto_scroll_state"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
:goto_17
const-string v1, " - Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V
goto :goto_17
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
const/4 v1, 0x2
invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V
const-string v1, "super_state"
invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "auto_scroll_state"
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move-object v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b:Z
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method