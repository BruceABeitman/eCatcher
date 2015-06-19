.class public Lcom/instagram/creation/video/ui/FilmstripScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "FilmstripScrollView.java"
.field private a:Lcom/instagram/creation/video/ui/c;
.field private b:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
return-void
.end method
.method public final a(Lcom/instagram/creation/video/ui/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
return-void
.end method
.method public onScrollChanged(IIII)V
.registers 7
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
sub-int v1, p1, p3
invoke-interface {v0, v1}, Lcom/instagram/creation/video/ui/c;->f(I)V
:cond_b
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_30
:goto_7
:cond_7
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->b:Z
goto :goto_7
:pswitch_10
iget-boolean v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->b:Z
if-nez v0, :cond_7
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
invoke-interface {v0}, Lcom/instagram/creation/video/ui/c;->U()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->b:Z
goto :goto_7
:pswitch_21
iget-boolean v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->b:Z
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a:Lcom/instagram/creation/video/ui/c;
invoke-interface {v0}, Lcom/instagram/creation/video/ui/c;->d()V
goto :goto_7
nop
:pswitch_data_30
.packed-switch 0x0
:pswitch_c
:pswitch_21
:pswitch_10
:pswitch_21
.end packed-switch
.end method