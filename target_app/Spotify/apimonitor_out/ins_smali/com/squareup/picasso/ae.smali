.class final Lcom/squareup/picasso/ae;
.super Lcom/squareup/picasso/d;
.source "SourceFile"
.field private final o:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
.registers 13
move-object v0, p0
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/d;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
iput-object p1, p0, Lcom/squareup/picasso/ae;->o:Landroid/content/Context;
return-void
.end method
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
.registers 7
iget-object v0, p0, Lcom/squareup/picasso/ae;->o:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/squareup/picasso/am;->a(Landroid/content/Context;Lcom/squareup/picasso/ab;)Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0, p1}, Lcom/squareup/picasso/am;->a(Landroid/content/res/Resources;Lcom/squareup/picasso/ab;)I
move-result v1
invoke-static {p1}, Lcom/squareup/picasso/ae;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;
move-result-object v2
invoke-static {v2}, Lcom/squareup/picasso/ae;->a(Landroid/graphics/BitmapFactory$Options;)Z
move-result v3
if-eqz v3, :cond_1e
invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v3, p1, Lcom/squareup/picasso/ab;->f:I
iget v4, p1, Lcom/squareup/picasso/ab;->g:I
invoke-static {v3, v4, v2}, Lcom/squareup/picasso/ae;->a(IILandroid/graphics/BitmapFactory$Options;)V
:cond_1e
invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method final a()Lcom/squareup/picasso/Picasso$LoadedFrom;
.registers 2
sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;
return-object v0
.end method