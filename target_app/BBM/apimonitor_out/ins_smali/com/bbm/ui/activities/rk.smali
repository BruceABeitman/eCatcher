.class final Lcom/bbm/ui/activities/rk;
.super Lcom/bbm/j/k;
.source "GroupPictureCommentsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 9
const/4 v0, 0x0
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v4, v4, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v5, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v5}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v6, v6, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v4, v5, v6}, Lcom/bbm/g/am;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;
move-result-object v4
invoke-static {v3, v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/g/af;)Lcom/bbm/g/af;
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/af;->m:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_37
:goto_36
return-void
:cond_37
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->m(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e0421
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
iget-object v6, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v6}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->k(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v1
const/4 v6, 0x1
iget-object v7, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v7}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->l(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->n(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v4
iget-object v4, v4, Lcom/bbm/g/af;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->p(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->o(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->q(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/af;->i:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_11c
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->r(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_bc
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->r(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v4
iget-object v4, v4, Lcom/bbm/g/af;->i:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_11c
:cond_bc
new-instance v3, Landroid/util/DisplayMetrics;
invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v4
invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v4, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b01d4
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
new-instance v5, Landroid/graphics/Point;
invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V
:try_start_e2
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/af;->i:Ljava/lang/String;
const/4 v4, 0x0
const/4 v6, 0x0
sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-static {v3, v5, v4, v6, v7}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;ZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
:try_end_f1
.catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f1} :catch_155
move-result-object v0
:goto_f2
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->s(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->t(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ImageView;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/af;->b:Z
if-eqz v0, :cond_16b
move v0, v1
:goto_10c
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/af;->i:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Ljava/lang/String;)Ljava/lang/String;
:cond_11c
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->d(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_16d
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->u(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
:goto_14a
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/ui/c/fm;)V
goto/16 :goto_36
:catch_155
move-exception v3
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "IO Exception: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-array v4, v1, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_f2
:cond_16b
move v0, v2
goto :goto_10c
:cond_16d
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->u(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/rk;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->e(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
goto :goto_14a
.end method