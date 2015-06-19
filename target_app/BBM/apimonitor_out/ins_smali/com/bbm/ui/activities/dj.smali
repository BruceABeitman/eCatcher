.class final Lcom/bbm/ui/activities/dj;
.super Lcom/bbm/util/ez;
.source "ChannelPostPhotoGalleryActivity.java"
.field final synthetic a:Lcom/bbm/ui/TouchImageView;
.field final synthetic b:Landroid/widget/ProgressBar;
.field final synthetic c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;Landroid/content/Context;Lcom/bbm/ui/TouchImageView;Landroid/widget/ProgressBar;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
iput-object p3, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
iput-object p4, p0, Lcom/bbm/ui/activities/dj;->b:Landroid/widget/ProgressBar;
invoke-direct {p0, p2}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected final a(Lcom/bbm/d/fd;)V
.registers 9
const/4 v6, 0x1
invoke-super {p0, p1}, Lcom/bbm/util/ez;->a(Lcom/bbm/d/fd;)V
if-eqz p1, :cond_97
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-virtual {p1}, Lcom/bbm/d/fd;->c()[B
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;[B)[B
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->c(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)[B
move-result-object v0
if-eqz v0, :cond_90
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
invoke-virtual {v1}, Lcom/bbm/ui/TouchImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
int-to-double v1, v0
iget-object v3, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
int-to-double v3, v3
div-double/2addr v1, v3
iget-object v3, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
invoke-virtual {v3}, Lcom/bbm/ui/TouchImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iget-object v4, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v4
int-to-double v4, v4
mul-double/2addr v1, v4
invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D
move-result-wide v1
double-to-int v1, v1
iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
if-le v1, v0, :cond_a2
iget-object v0, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_a2
:try_start_51
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->c(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)[B
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
invoke-virtual {v1}, Lcom/bbm/ui/TouchImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v2, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
invoke-virtual {v2}, Lcom/bbm/ui/TouchImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Lcom/bbm/util/b/a;->a([BIILcom/bbm/util/b/d;ZZ)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
new-instance v2, Lcom/bbm/d/fd;
iget-object v3, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-virtual {v3}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-direct {v2, v3, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Lcom/bbm/d/fd;)V
:try_end_82
.catch Ljava/io/IOException; {:try_start_51 .. :try_end_82} :catch_98
.catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_82} :catch_9d
:goto_82
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->d(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Lcom/bbm/ui/ActionBarItem;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/bbm/ui/ActionBarItem;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->e(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Z
:cond_90
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->b:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:cond_97
return-void
:catch_98
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V
goto :goto_82
:catch_9d
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V
goto :goto_82
:cond_a2
iget-object v0, p0, Lcom/bbm/ui/activities/dj;->a:Lcom/bbm/ui/TouchImageView;
new-instance v1, Lcom/bbm/d/fd;
iget-object v2, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/dj;->c:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->c(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)[B
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_82
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/bbm/d/fd;
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/dj;->a(Lcom/bbm/d/fd;)V
return-void
.end method