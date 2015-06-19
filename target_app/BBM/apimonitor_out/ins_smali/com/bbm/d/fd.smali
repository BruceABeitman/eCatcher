.class public Lcom/bbm/d/fd;
.super Ljava/lang/Object;
.source "Image.java"
.field public a:Z
.field public b:Landroid/graphics/drawable/Drawable;
.field public c:Z
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/d/fd;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Lcom/bbm/d/fd;->c:Z
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-direct {p0, v0}, Lcom/bbm/d/fd;->a(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lcom/bbm/util/bj;->f(Ljava/lang/String;)[B
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
return-void
.end method
.method public constructor <init>(Landroid/content/res/Resources;[B)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/d/fd;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Lcom/bbm/d/fd;->c:Z
invoke-static {p2}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;
move-result-object v0
if-eqz v0, :cond_15
invoke-direct {p0, v0}, Lcom/bbm/d/fd;->a(Lcom/bbm/ui/cl;)V
:goto_14
return-void
:cond_15
invoke-static {p1, p2}, Lcom/bbm/util/b/h;->a(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/d/fd;->a(Landroid/graphics/drawable/Drawable;)V
goto :goto_14
.end method
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/d/fd;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Lcom/bbm/d/fd;->c:Z
invoke-direct {p0, p1}, Lcom/bbm/d/fd;->a(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public constructor <init>(Lcom/bbm/ui/cl;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/d/fd;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Lcom/bbm/d/fd;->c:Z
invoke-direct {p0, p1}, Lcom/bbm/d/fd;->a(Lcom/bbm/ui/cl;)V
return-void
.end method
.method private a(Landroid/graphics/drawable/Drawable;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/fd;->a:Z
iput-object p1, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method private a(Lcom/bbm/ui/cl;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/fd;->a:Z
iput-object p1, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final a()Lcom/bbm/ui/cl;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Lcom/bbm/ui/cl;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
check-cast v0, Lcom/bbm/ui/cl;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final b()Landroid/graphics/drawable/BitmapDrawable;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final c()[B
.registers 2
invoke-virtual {p0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/b/h;->b(Landroid/graphics/Bitmap;)[B
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-virtual {p0}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/cl;->a()[B
move-result-object v0
goto :goto_12
:cond_22
const/4 v0, 0x0
new-array v0, v0, [B
goto :goto_12
.end method