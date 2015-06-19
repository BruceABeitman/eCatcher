.class final Lcom/squareup/picasso/aj;
.super Lcom/squareup/picasso/a;
.source "SourceFile"
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/ai;Lcom/squareup/picasso/ab;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.registers 17
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v6, p5
move-object v7, p6
move-object/from16 v8, p7
invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
return-void
.end method
.method final a()V
.registers 4
iget-object v0, p0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ai;
if-eqz v0, :cond_1f
iget v1, p0, Lcom/squareup/picasso/aj;->f:I
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/squareup/picasso/aj;->a:Lcom/squareup/picasso/Picasso;
iget-object v1, v1, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget v2, p0, Lcom/squareup/picasso/aj;->f:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-interface {v0, v1}, Lcom/squareup/picasso/ai;->a(Landroid/graphics/drawable/Drawable;)V
:cond_1f
:goto_1f
return-void
:cond_20
iget-object v1, p0, Lcom/squareup/picasso/aj;->g:Landroid/graphics/drawable/Drawable;
invoke-interface {v0, v1}, Lcom/squareup/picasso/ai;->a(Landroid/graphics/drawable/Drawable;)V
goto :goto_1f
.end method
.method final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 7
if-nez p1, :cond_14
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "Attempted to complete action with no result!\n%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ai;
if-eqz v0, :cond_2f
invoke-interface {v0, p1, p2}, Lcom/squareup/picasso/ai;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-eqz v0, :cond_2f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Target callback must not recycle bitmap!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
return-void
.end method