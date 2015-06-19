.class final Lcom/instagram/common/e/b/d;
.super Ljava/lang/Object;
.source "CompressedBackedBitmap.java"
.field private a:Landroid/graphics/Bitmap;
.field private b:I
.method constructor <init>(Landroid/graphics/Bitmap;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/e/b/d;->a:Landroid/graphics/Bitmap;
iput p2, p0, Lcom/instagram/common/e/b/d;->b:I
return-void
.end method
.method final a()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/d;->a:Landroid/graphics/Bitmap;
return-object v0
.end method
.method final b()I
.registers 2
iget v0, p0, Lcom/instagram/common/e/b/d;->b:I
return v0
.end method