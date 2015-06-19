.class final Lcom/bbm/ui/ff;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/QuickShareVoicenoteView;
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const v4, 0x7f020385
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->f(Lcom/bbm/ui/QuickShareVoicenoteView;)Lcom/bbm/util/fg;
move-result-object v0
iget-object v1, v0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_50
iget-object v0, v0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I
move-result v0
int-to-double v0, v0
const-wide v2, 0x40dd4c0000000000L
div-double/2addr v0, v2
:goto_24
const-wide v2, 0x3fa999999999999aL
add-double/2addr v0, v2
const-wide/high16 v2, 0x4059
mul-double/2addr v0, v2
double-to-int v0, v0
const/16 v1, 0x5a
if-lt v0, v1, :cond_53
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
const v1, 0x7f020382
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
:goto_3e
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->i(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v1}, Lcom/bbm/ui/QuickShareVoicenoteView;->h(Lcom/bbm/ui/QuickShareVoicenoteView;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
:cond_50
const-wide/16 v0, 0x0
goto :goto_24
:cond_53
const/16 v1, 0x46
if-lt v0, v1, :cond_64
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
const v1, 0x7f020386
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_3e
:cond_64
const/16 v1, 0x32
if-lt v0, v1, :cond_72
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_3e
:cond_72
const/16 v1, 0x1e
if-lt v0, v1, :cond_80
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_3e
:cond_80
const/16 v1, 0xa
if-le v0, v1, :cond_91
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
const v1, 0x7f020383
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_3e
:cond_91
iget-object v0, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/ff;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-virtual {v1}, Lcom/bbm/ui/QuickShareVoicenoteView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x106000d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
goto :goto_3e
.end method