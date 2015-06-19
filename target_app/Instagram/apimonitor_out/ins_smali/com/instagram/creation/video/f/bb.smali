.class public final Lcom/instagram/creation/video/f/bb;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoFilterFragment.java"
.field private a:Lcom/instagram/creation/base/ui/FilterPicker;
.field private b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.field private c:Lcom/instagram/creation/video/l/h;
.field private d:I
.field private e:[Lcom/instagram/creation/video/e/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bb;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/f/bb;->d:I
return v0
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bb;I)I
.registers 2
iput p1, p0, Lcom/instagram/creation/video/f/bb;->d:I
return p1
.end method
.method static synthetic b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
return-object v0
.end method
.method private c()I
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I
invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a([Lcom/instagram/creation/video/e/c;I)I
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method static synthetic c(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
return-object v0
.end method
.method private d()I
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method static synthetic d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
return-object v0
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->E()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->c()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->e()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
new-instance v1, Lcom/instagram/creation/video/f/be;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/be;-><init>(Lcom/instagram/creation/video/f/bb;)V
invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final F()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->d()V
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z
move-result v0
if-eqz v0, :cond_12
sget v0, Lcom/facebook/aw;->fragment_video_filter:I
:goto_c
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
:cond_12
sget v0, Lcom/facebook/aw;->fragment_video_filter_small:I
goto :goto_c
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->square_texture_view:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
new-instance v0, Lcom/instagram/creation/video/ui/a/a;
invoke-direct {v0}, Lcom/instagram/creation/video/ui/a/a;-><init>()V
sget v1, Lcom/facebook/av;->play_button:I
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/a/a;->a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
move-result-object v0
sget v1, Lcom/facebook/av;->seek_frame_indicator:I
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/a/a;->b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
move-result-object v0
new-instance v1, Lcom/instagram/creation/video/l/h;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->n()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, v0, v3}, Lcom/instagram/creation/video/l/h;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V
iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setDelegate(Lcom/instagram/creation/video/ui/d;)V
sget v0, Lcom/facebook/av;->creation_main_actions:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/base/ui/FilterPicker;
iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;)[Lcom/instagram/creation/video/e/c;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->setFilters([Lcom/instagram/creation/base/ui/h;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "VideoFilterFragment.FILTER_POS"
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
invoke-virtual {v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setSelectedFilterIndex(I)V
iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
aget-object v0, v1, v0
invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->b()I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/f/bb;->d:I
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->X()Lcom/instagram/creation/b/a/b;
move-result-object v0
iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->b(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
new-instance v1, Lcom/instagram/creation/video/f/bc;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bc;-><init>(Lcom/instagram/creation/video/f/bb;)V
invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->setFilterListener(Lcom/instagram/creation/base/ui/e;)V
sget-object v0, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/bb;->a(Lcom/instagram/creation/video/f/av;)V
invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/e;
new-instance v1, Lcom/instagram/creation/video/f/bd;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bd;-><init>(Lcom/instagram/creation/video/f/bb;)V
invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->k()V
return-void
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 4
const-string v0, "VideoFilterFragment.FILTER_POS"
invoke-direct {p0}, Lcom/instagram/creation/video/f/bb;->c()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "VideoFilterFragment.FILTER_SCROLL_X"
invoke-direct {p0}, Lcom/instagram/creation/video/f/bb;->d()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "video_filter"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;
iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/FilterPicker;->getHandler()Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;
iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->l_()V
return-void
.end method