.class final Lcom/instagram/creation/video/f/v;
.super Lcom/instagram/common/b/a;
.source "CamcorderFragment.java"
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method private constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Lcom/instagram/common/b/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/f/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/v;-><init>(Lcom/instagram/creation/video/f/a;)V
return-void
.end method
.method private varargs a([Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
.registers 16
const/4 v0, 0x0
aget-object v4, p1, v0
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->o()I
move-result v0
if-lez v0, :cond_132
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
iget-object v0, v0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;
iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I
iget-object v1, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
iget-object v1, v1, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;
iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I
if-le v0, v1, :cond_133
move v2, v1
move v1, v0
:goto_23
const/4 v0, 0x1
invoke-virtual {v4, v0}, Lcom/instagram/creation/b/a/b;->a(I)V
invoke-virtual {v4, v2}, Lcom/instagram/creation/b/a/b;->d(I)V
invoke-virtual {v4, v1}, Lcom/instagram/creation/b/a/b;->e(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->o()I
move-result v0
add-int/lit8 v0, v0, 0x1
new-array v7, v0, [Ljava/io/File;
const/4 v0, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v3}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/creation/video/a;->b()Lcom/instagram/creation/video/i/d;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/creation/video/i/d;->iterator()Ljava/util/Iterator;
move-result-object v9
move v3, v0
:goto_50
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9b
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/i/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->b()I
move-result v10
sget v11, Lcom/instagram/creation/video/i/c;->b:I
if-ne v10, v11, :cond_98
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_98
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;
move-result-object v10
new-instance v11, Ljava/io/File;
invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
aput-object v11, v7, v3
add-int/lit8 v3, v3, 0x1
new-instance v11, Lcom/instagram/creation/b/a/a;
invoke-direct {v11}, Lcom/instagram/creation/b/a/a;-><init>()V
invoke-virtual {v11, v10}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->d()I
move-result v10
invoke-virtual {v11, v10}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v12
const/4 v0, 0x0
invoke-virtual {v11, v0}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;
long-to-int v0, v12
invoke-virtual {v11, v0}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;
invoke-virtual {v11, v2, v1}, Lcom/instagram/creation/b/a/a;->a(II)V
invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_98
move v0, v3
move v3, v0
goto :goto_50
:cond_9b
invoke-virtual {v4, v8}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V
const/4 v0, 0x0
aget-object v0, v7, v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const/4 v9, 0x0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v10
add-int/lit8 v10, v10, -0x4
invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v8, "-stitched.mp4"
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
array-length v8, v7
add-int/lit8 v8, v8, -0x1
new-instance v9, Ljava/io/File;
invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
aput-object v9, v7, v8
invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;
move-result-object v8
const-string v9, "video_stitch_clips"
invoke-virtual {v8, v9}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V
invoke-static {v7}, Lcom/instagram/creation/video/l/f;->a([Ljava/io/File;)F
move-result v7
invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;
move-result-object v8
const-string v9, "video_stitch_clips"
invoke-virtual {v8, v9}, Lcom/instagram/b/d/c;->c(Ljava/lang/String;)Lcom/instagram/b/d/a;
move-result-object v8
if-eqz v8, :cond_f2
const-string v9, "num_clips"
invoke-interface {v8, v9, v3}, Lcom/instagram/b/d/a;->a(Ljava/lang/String;I)Lcom/instagram/b/d/a;
move-result-object v3
const-string v8, "stitched_duration"
float-to-double v9, v7
invoke-interface {v3, v8, v9, v10}, Lcom/instagram/b/d/a;->a(Ljava/lang/String;D)Lcom/instagram/b/d/a;
:cond_f2
invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;
move-result-object v3
const-string v8, "video_stitch_clips"
invoke-virtual {v3, v8}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
new-instance v3, Lcom/instagram/creation/b/a/a;
invoke-direct {v3}, Lcom/instagram/creation/b/a/a;-><init>()V
invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->A(Lcom/instagram/creation/video/f/a;)I
move-result v0
invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;
const/4 v0, 0x0
invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;
const/high16 v0, 0x447a
mul-float/2addr v0, v7
float-to-int v0, v0
invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;
invoke-virtual {v3, v2, v1}, Lcom/instagram/creation/b/a/a;->a(II)V
invoke-virtual {v4, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Splitting and stitching took: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long/2addr v0, v5
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "ms"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_132
return-object v4
:cond_133
move v2, v0
goto/16 :goto_23
.end method
.method private a(Lcom/instagram/creation/b/a/b;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/common/b/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Lcom/instagram/ui/dialog/f;)Lcom/instagram/ui/dialog/f;
:cond_1a
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/k/a;
invoke-interface {v0, p1}, Lcom/instagram/creation/video/k/a;->c(Lcom/instagram/creation/b/a/b;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "pendingMediaKey"
invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "directShare"
iget-object v2, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v2}, Lcom/instagram/creation/video/f/a;->v(Lcom/instagram/creation/video/f/a;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
sget-object v1, Lcom/instagram/o/a;->p:Lcom/instagram/o/a;
invoke-virtual {v1}, Lcom/instagram/o/a;->c()V
new-instance v1, Lcom/instagram/base/a/a/a;
iget-object v2, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v2}, Lcom/instagram/creation/video/f/a;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/creation/video/f/ar;
invoke-direct {v2}, Lcom/instagram/creation/video/f/ar;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "next"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "VideoEditFragment"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->c()Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/instagram/creation/b/a/b;
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/v;->a([Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
move-result-object v0
return-object v0
.end method
.method protected final a()V
.registers 5
invoke-super {p0}, Lcom/instagram/common/b/a;->a()V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
new-instance v1, Lcom/instagram/ui/dialog/f;
iget-object v2, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v2}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Lcom/instagram/ui/dialog/f;)Lcom/instagram/ui/dialog/f;
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
sget v2, Lcom/facebook/az;->processing:I
invoke-virtual {v1, v2}, Lcom/instagram/creation/video/f/a;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V
iget-object v0, p0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/creation/video/f/w;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/w;-><init>(Lcom/instagram/creation/video/f/v;)V
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/creation/b/a/b;
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/v;->a(Lcom/instagram/creation/b/a/b;)V
return-void
.end method