.class public Lcom/bbm/ui/a/r;
.super Lcom/bbm/ui/gk;
.source "FindFriendsAdapter.java"
.field public final f:Landroid/content/Context;
.field protected g:Lcom/bbm/util/b/d;
.field protected h:I
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;Lcom/bbm/util/b/d;)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
iput-object p1, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
iput-object p4, p0, Lcom/bbm/ui/a/r;->g:Lcom/bbm/util/b/d;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b003c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/a/r;->h:I
return-void
.end method
.method protected final a()Landroid/view/View;
.registers 3
new-instance v0, Lcom/bbm/ui/ListHeaderView;
iget-object v1, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 6
iget-object v0, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300c4
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/iceberg/j;
iget-object v0, p1, Lcom/bbm/iceberg/j;->h:Ljava/lang/String;
return-object v0
.end method
.method public a(Landroid/view/View;Lcom/bbm/iceberg/j;)V
.registers 9
const v0, 0x7f0a044f
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a0452
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0a0464
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iget-object v3, p2, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x8
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0203a9
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
const v0, 0x7f0a044d
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iget-object v1, p2, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_7c
iget-object v1, p0, Lcom/bbm/ui/a/r;->g:Lcom/bbm/util/b/d;
iget-object v2, p2, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
if-nez v1, :cond_6e
const/4 v1, 0x0
:goto_47
if-nez v1, :cond_6a
:try_start_49
iget-object v2, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
iget-object v3, p2, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
iget v4, p0, Lcom/bbm/ui/a/r;->h:I
iget v5, p0, Lcom/bbm/ui/a/r;->h:I
invoke-static {v2, v3, v4, v5}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/a/r;->g:Lcom/bbm/util/b/d;
iget-object v3, p2, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;
new-instance v4, Lcom/bbm/d/fd;
new-instance v5, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
invoke-direct {v4, v5}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v2, v3, v4}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
:goto_6a
:cond_6a
:try_end_6a
.catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_6a} :catch_77
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_6d
return-void
:cond_6e
invoke-virtual {v1}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_47
:catch_77
move-exception v2
invoke-static {v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_6a
:cond_7c
const v1, 0x7f0200d6
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
goto :goto_6d
.end method
.method public a(Landroid/view/View;Lcom/bbm/ui/c/hj;)V
.registers 5
check-cast p1, Lcom/bbm/ui/ListHeaderView;
sget-object v0, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;
if-ne p2, v0, :cond_22
iget-object v0, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0372
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
:goto_16
invoke-virtual {p0, p2}, Lcom/bbm/ui/a/r;->b(Ljava/lang/Object;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V
return-void
:cond_22
iget-object v0, p0, Lcom/bbm/ui/a/r;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0371
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_16
.end method
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/bbm/ui/c/hj;
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/a/r;->a(Landroid/view/View;Lcom/bbm/ui/c/hj;)V
return-void
.end method
.method public synthetic b(Landroid/view/View;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/bbm/iceberg/j;
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/a/r;->a(Landroid/view/View;Lcom/bbm/iceberg/j;)V
return-void
.end method