.class final Lcom/squareup/picasso/p;
.super Lcom/squareup/picasso/h;
.source "SourceFile"
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/squareup/picasso/h;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
return-void
.end method
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
new-instance v1, Landroid/media/ExifInterface;
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string v0, "Orientation"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
move-result v0
packed-switch v0, :pswitch_data_26
:pswitch_15
const/4 v0, 0x0
:goto_16
iput v0, p0, Lcom/squareup/picasso/d;->n:I
invoke-super {p0, p1}, Lcom/squareup/picasso/h;->a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
:pswitch_1d
const/16 v0, 0x5a
goto :goto_16
:pswitch_20
const/16 v0, 0xb4
goto :goto_16
:pswitch_23
const/16 v0, 0x10e
goto :goto_16
:pswitch_data_26
.packed-switch 0x3
:pswitch_20
:pswitch_15
:pswitch_15
:pswitch_1d
:pswitch_15
:pswitch_23
.end packed-switch
.end method