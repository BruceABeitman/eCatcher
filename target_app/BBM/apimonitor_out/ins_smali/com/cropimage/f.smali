.class public final Lcom/cropimage/f;
.super Ljava/lang/Object;
.source "CropImageIntentBuilder.java"
.field public a:Z
.field public b:Landroid/net/Uri;
.field public c:Z
.field public d:Z
.field public e:Z
.field public f:I
.field private g:Z
.field private h:Landroid/graphics/Bitmap;
.field private final i:I
.field private final j:I
.field private final k:Landroid/net/Uri;
.method public constructor <init>(Landroid/net/Uri;)V
.registers 5
const/16 v2, 0x140
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/cropimage/f;->a:Z
iput-boolean v0, p0, Lcom/cropimage/f;->g:Z
iput-boolean v1, p0, Lcom/cropimage/f;->c:Z
iput-boolean v0, p0, Lcom/cropimage/f;->d:Z
iput-boolean v1, p0, Lcom/cropimage/f;->e:Z
const v0, 0x8000
iput v0, p0, Lcom/cropimage/f;->f:I
iput v2, p0, Lcom/cropimage/f;->i:I
iput v2, p0, Lcom/cropimage/f;->j:I
iput-object p1, p0, Lcom/cropimage/f;->k:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>(Landroid/net/Uri;B)V
.registers 6
const/4 v2, 0x0
const/4 v1, -0x1
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/cropimage/f;->a:Z
iput-boolean v0, p0, Lcom/cropimage/f;->g:Z
iput-boolean v2, p0, Lcom/cropimage/f;->c:Z
iput-boolean v0, p0, Lcom/cropimage/f;->d:Z
iput-boolean v2, p0, Lcom/cropimage/f;->e:Z
const v0, 0x8000
iput v0, p0, Lcom/cropimage/f;->f:I
iput v1, p0, Lcom/cropimage/f;->i:I
iput v1, p0, Lcom/cropimage/f;->j:I
iput-object p1, p0, Lcom/cropimage/f;->k:Landroid/net/Uri;
return-void
.end method
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/cropimage/CropImage;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "outputX"
iget v2, p0, Lcom/cropimage/f;->i:I
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "outputY"
iget v2, p0, Lcom/cropimage/f;->j:I
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "output"
iget-object v2, p0, Lcom/cropimage/f;->k:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "scale"
iget-boolean v2, p0, Lcom/cropimage/f;->a:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "scaleUpIfNeeded"
iget-boolean v2, p0, Lcom/cropimage/f;->g:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "return-data"
iget-boolean v2, p0, Lcom/cropimage/f;->c:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "squareCrop"
iget-boolean v2, p0, Lcom/cropimage/f;->d:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "highEfficiency"
iget-boolean v2, p0, Lcom/cropimage/f;->e:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "outputSize"
iget v2, p0, Lcom/cropimage/f;->f:I
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/cropimage/f;->h:Landroid/graphics/Bitmap;
if-eqz v1, :cond_51
const-string v1, "data"
iget-object v2, p0, Lcom/cropimage/f;->h:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_51
iget-object v1, p0, Lcom/cropimage/f;->b:Landroid/net/Uri;
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/cropimage/f;->b:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
:cond_5a
return-object v0
.end method