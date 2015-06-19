.class final Lcom/spotify/mobile/android/ui/view/a;
.super Landroid/os/Handler;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/a;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/a;)V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/a;->removeMessages(I)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/a;)V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/a;->removeMessages(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/a;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
return-void
.end method
.method final a()V
.registers 4
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/view/a;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_c
const-wide/16 v0, 0xfa0
invoke-virtual {p0, v2, v0, v1}, Lcom/spotify/mobile/android/ui/view/a;->sendEmptyMessageDelayed(IJ)Z
:cond_c
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
const/4 v2, 0x1
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v2, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/a;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;
if-eqz v0, :cond_35
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a()Landroid/support/v4/view/ah;
move-result-object v1
if-eqz v1, :cond_35
move v1, v2
:goto_16
if-eqz v1, :cond_34
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)Z
move-result v1
if-eqz v1, :cond_34
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I
move-result v1
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I
move-result v3
add-int/lit8 v3, v3, 0x1
rem-int v1, v3, v1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a(IZ)V
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b(Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;)V
:cond_34
return-void
:cond_35
const/4 v1, 0x0
goto :goto_16
.end method