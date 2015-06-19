.class final Lcom/instagram/creation/video/f/bp;
.super Lcom/instagram/common/b/a;
.source "VideoTrimFragment.java"
.field final synthetic a:Lcom/instagram/creation/video/f/bi;
.method private constructor <init>(Lcom/instagram/creation/video/f/bi;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-direct {p0}, Lcom/instagram/common/b/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/f/bi;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bp;-><init>(Lcom/instagram/creation/video/f/bi;)V
return-void
.end method
.method private a(Ljava/lang/Boolean;)V
.registers 11
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/common/b/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_e9
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_ec
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v2, v0, Lcom/instagram/creation/video/f/bi;->a:[D
array-length v3, v2
move v0, v1
:goto_18
if-ge v0, v3, :cond_54
aget-wide v4, v2, v0
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
new-instance v4, Landroid/widget/ImageView;
iget-object v5, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v5}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget v5, Lcom/facebook/au;->trim_frame_bg:I
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V
new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
iget-object v6, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v6}, Lcom/instagram/creation/video/f/bi;->g(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v6
double-to-int v6, v6
iget-object v7, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v7}, Lcom/instagram/creation/video/f/bi;->h(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v7
double-to-int v7, v7
invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V
iget-object v5, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v5}, Lcom/instagram/creation/video/f/bi;->i(Lcom/instagram/creation/video/f/bi;)Landroid/widget/LinearLayout;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_54
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
sget v2, Lcom/instagram/creation/video/f/br;->b:I
invoke-static {v0, v2}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v0
sget v2, Lcom/facebook/av;->scrollable_nux:I
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->p()Z
move-result v0
if-eqz v0, :cond_ea
const/16 v0, 0x8
:goto_73
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->i(Lcom/instagram/creation/video/f/bi;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v2}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v2
int-to-double v2, v2
iget-object v4, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v4}, Lcom/instagram/creation/video/f/bi;->j(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v4
sub-double/2addr v2, v4
double-to-int v2, v2
invoke-static {v0, v2}, Lcom/instagram/common/u/f;->c(Landroid/view/View;I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I
move-result v2
invoke-static {v0, v2}, Lcom/instagram/creation/video/f/bi;->b(Lcom/instagram/creation/video/f/bi;I)D
move-result-wide v2
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->k(Lcom/instagram/creation/video/f/bi;)D
move-result-wide v4
sub-double/2addr v4, v2
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v6, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v6}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;
move-result-object v6
invoke-virtual {v6}, Lcom/instagram/creation/b/a/a;->i()I
move-result v6
invoke-static {v0, v6}, Lcom/instagram/creation/video/f/bi;->b(Lcom/instagram/creation/video/f/bi;I)D
move-result-wide v6
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D
move-result-wide v4
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
double-to-int v4, v4
invoke-static {v0, v4}, Lcom/instagram/creation/video/f/bi;->c(Lcom/instagram/creation/video/f/bi;I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->l(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->import_filmstrip_slide_in_right:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
new-instance v1, Lcom/instagram/creation/video/f/bq;
invoke-direct {v1, p0, v2, v3}, Lcom/instagram/creation/video/f/bq;-><init>(Lcom/instagram/creation/video/f/bp;D)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->n(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_e9
:goto_e9
return-void
:cond_ea
move v0, v1
goto :goto_73
:cond_ec
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bi;->u()Z
move-result v0
if-eqz v0, :cond_e9
sget v0, Lcom/facebook/az;->unknown_error_occured:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
goto :goto_e9
.end method
.method private varargs c()Ljava/lang/Boolean;
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v1, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-virtual {v1}, Lcom/instagram/creation/video/f/bi;->X()Lcom/instagram/creation/b/a/b;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
:try_start_c
new-instance v0, Ljava/io/RandomAccessFile;
iget-object v1, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->e(Lcom/instagram/creation/video/f/bi;)Ljava/io/File;
move-result-object v1
const-string v2, "r"
invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
invoke-static {v0}, Lcom/googlecode/mp4parser/a/b/a/a;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/a/c;
:try_end_20
.catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_30
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_36
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_2f
return-object v0
:catch_30
move-exception v0
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_2f
:cond_36
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3a
:cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b6
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v2
const-string v3, "vide"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3a
invoke-static {v0}, Lcom/instagram/creation/video/l/f;->a(Lcom/googlecode/mp4parser/a/e;)[D
move-result-object v0
array-length v2, v0
if-nez v2, :cond_a3
const-string v0, "No data on sync sample times for this video"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->e(Lcom/instagram/creation/video/f/bi;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v2
const-wide/16 v4, 0x400
div-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " KB Duration: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->f(Lcom/instagram/creation/video/f/bi;)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ms Path: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->e(Lcom/instagram/creation/video/f/bi;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_2f
:cond_a3
iget-object v2, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v3, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v3}, Lcom/instagram/creation/video/f/bi;->f(Lcom/instagram/creation/video/f/bi;)J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
long-to-int v3, v3
invoke-static {v0, v3}, Lcom/instagram/creation/video/l/g;->a([DI)[D
move-result-object v0
iput-object v0, v2, Lcom/instagram/creation/video/f/bi;->a:[D
goto :goto_3a
:cond_b6
iget-object v0, p0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
iget-object v0, v0, Lcom/instagram/creation/video/f/bi;->a:[D
array-length v0, v0
if-nez v0, :cond_c3
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_2f
:cond_c3
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_2f
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/creation/video/f/bp;->c()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bp;->a(Ljava/lang/Boolean;)V
return-void
.end method