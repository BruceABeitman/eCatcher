.class  Lcom/millennialmedia/android/g;
.super Lcom/millennialmedia/android/bz;
.source "SourceFile"
.field private static final f:Ljava/lang/String; = "AdViewOverlayActivity"
.field  a:Z
.field  b:Z
.field private d:Lcom/millennialmedia/android/AdViewOverlayView;
.field private e:Lcom/millennialmedia/android/OverlaySettings;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/bz;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 3
const-string v0, "landscape"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
:cond_c
:goto_c
return-void
:cond_d
const-string v0, "portrait"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
goto :goto_c
.end method
.method private j()V
.registers 4
const/16 v2, 0x9
const/16 v1, 0x8
iget-object v0, p0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I
move-result v0
if-nez v0, :cond_11
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I
move-result v0
if-ne v0, v1, :cond_1d
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/g;->b(I)V
goto :goto_10
:cond_1d
iget-object v0, p0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I
move-result v0
if-ne v0, v2, :cond_29
invoke-virtual {p0, v2}, Lcom/millennialmedia/android/g;->b(I)V
goto :goto_10
:cond_29
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
goto :goto_10
.end method
.method public a(Landroid/content/res/Configuration;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->i()V
:cond_9
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/content/res/Configuration;)V
return-void
.end method
.method protected a(Landroid/os/Bundle;)V
.registers 8
const/4 v3, 0x1
const/4 v5, 0x0
const/4 v4, -0x2
const v0, 0x1030010
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->d(I)V
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/os/Bundle;)V
invoke-virtual {p0, v3}, Lcom/millennialmedia/android/g;->e(I)Z
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->q()Landroid/view/Window;
move-result-object v0
new-instance v1, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->q()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->q()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x800
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->q()Landroid/view/Window;
move-result-object v0
const/high16 v1, 0x100
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->o()Landroid/content/Intent;
move-result-object v1
const-string v0, "settings"
invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/OverlaySettings;
iput-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
if-nez v0, :cond_4f
new-instance v0, Lcom/millennialmedia/android/OverlaySettings;
invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
:cond_4f
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->a()V
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/millennialmedia/android/g;->a(Ljava/lang/String;)V
:cond_61
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->t:Z
if-eqz v0, :cond_f8
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->k_()V
:goto_6a
if-eqz v1, :cond_85
invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_85
const-string v1, "AdViewOverlayActivity"
const-string v2, "Path: %s"
new-array v3, v3, [Ljava/lang/Object;
invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_85
new-instance v0, Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v2, 0xd
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const v2, 0x34c60db9
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v2, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Lcom/millennialmedia/android/g;Lcom/millennialmedia/android/OverlaySettings;)V
iput-object v1, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v1, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->p()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_f2
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->b()Z
move-result v0
if-eqz v0, :cond_fd
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_e1
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_e1
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_e1
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->u()V
:cond_e1
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z
move-result v0
if-eqz v0, :cond_f2
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v1, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->p:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->b(Ljava/lang/String;)V
:goto_f2
:cond_f2
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
const/4 v1, 0x0
iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
return-void
:cond_f8
invoke-direct {p0}, Lcom/millennialmedia/android/g;->j()V
goto/16 :goto_6a
:cond_fd
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->b()Z
move-result v0
if-nez v0, :cond_f2
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v1, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->u:Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iget-object v2, v2, Lcom/millennialmedia/android/OverlaySettings;->v:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f2
.end method
.method  a(Z)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->t:Z
if-eqz p1, :cond_a
invoke-virtual {p0}, Lcom/millennialmedia/android/g;->k_()V
:goto_9
return-void
:cond_a
invoke-direct {p0}, Lcom/millennialmedia/android/g;->j()V
goto :goto_9
.end method
.method public a(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_14
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->l_()V
const/4 v0, 0x1
:goto_13
return v0
:cond_14
invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/bz;->a(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_13
.end method
.method  b()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
const-string v1, "portrait"
iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->t:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
return-void
.end method
.method protected b(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_f
const-string v0, "adViewId"
iget-object v1, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getId()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_f
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->b(Landroid/os/Bundle;)V
return-void
.end method
.method public b(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->b(Z)V
iput-boolean p1, p0, Lcom/millennialmedia/android/g;->a:Z
iget-boolean v0, p0, Lcom/millennialmedia/android/g;->b:Z
if-nez v0, :cond_10
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->r()V
:cond_10
return-void
.end method
.method  c()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
const-string v1, "landscape"
iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/g;->e:Lcom/millennialmedia/android/OverlaySettings;
iput-boolean v2, v0, Lcom/millennialmedia/android/OverlaySettings;->t:Z
invoke-virtual {p0, v2}, Lcom/millennialmedia/android/g;->b(I)V
return-void
.end method
.method protected c(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->c(Landroid/os/Bundle;)V
return-void
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->d()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->k()V
:cond_11
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->j()V
:cond_16
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-super {p0}, Lcom/millennialmedia/android/bz;->d()V
return-void
.end method
.method protected e()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/g;->b:Z
const-string v0, "AdViewOverlayActivity"
const-string v1, "Overlay onResume"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_3f
iget-boolean v0, p0, Lcom/millennialmedia/android/g;->a:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->r()V
:cond_17
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->c()V
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->n()V
:cond_3f
invoke-super {p0}, Lcom/millennialmedia/android/bz;->e()V
return-void
.end method
.method protected f()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/g;->b:Z
const-string v0, "AdViewOverlayActivity"
const-string v1, "Overlay onPause"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
move-result-object v0
if-eqz v0, :cond_17
monitor-enter p0
:try_start_13
invoke-virtual {v0}, Lcom/millennialmedia/android/aa;->b()Lcom/millennialmedia/android/cg;
monitor-exit p0
:cond_17
:try_end_17
.catchall {:try_start_13 .. :try_end_17} :catchall_4b
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->q()V
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->m()V
:cond_43
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->c(I)V
invoke-super {p0}, Lcom/millennialmedia/android/bz;->f()V
return-void
:catchall_4b
move-exception v0
:try_start_4c
monitor-exit p0
:try_end_4d
.catchall {:try_start_4c .. :try_end_4d} :catchall_4b
throw v0
.end method
.method protected g()V
.registers 3
invoke-super {p0}, Lcom/millennialmedia/android/bz;->g()V
const-string v0, "AdViewOverlayActivity"
const-string v1, "Overlay onDestroy"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected h()V
.registers 1
invoke-super {p0}, Lcom/millennialmedia/android/bz;->h()V
return-void
.end method
.method public i()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/millennialmedia/android/g;->d:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a()Ljava/lang/Object;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method  k_()V
.registers 2
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/g;->b(I)V
return-void
.end method