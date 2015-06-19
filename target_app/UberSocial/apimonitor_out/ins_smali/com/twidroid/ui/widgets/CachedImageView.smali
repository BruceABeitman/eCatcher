.class public Lcom/twidroid/ui/widgets/CachedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"
.field private static final c:Ljava/lang/String; = "CachedImageView"
.field  a:Ljava/lang/String;
.field  b:Lcom/twidroid/ui/widgets/d;
.field private d:Landroid/os/Handler;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/twidroid/ui/widgets/CachedImageView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/twidroid/ui/widgets/CachedImageView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/twidroid/ui/widgets/CachedImageView;->a()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/widgets/CachedImageView;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->d:Landroid/os/Handler;
return-object v0
.end method
.method private a()V
.registers 2
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->d:Landroid/os/Handler;
return-void
.end method
.method public a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V
.registers 7
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "CachedImageView"
const-string v1, "Image url is null or empty"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_d
return-void
:cond_e
const-string v0, "CachedImageView"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Attempt to assign: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iput-object p3, p0, Lcom/twidroid/ui/widgets/CachedImageView;->b:Lcom/twidroid/ui/widgets/d;
iput-object p1, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
new-instance v0, Lcom/twidroid/ui/widgets/CachedImageView$1;
invoke-direct {v0, p0}, Lcom/twidroid/ui/widgets/CachedImageView$1;-><init>(Lcom/twidroid/ui/widgets/CachedImageView;)V
invoke-static {p1, p2, v0}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
goto :goto_d
.end method
.method public a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
return-void
.end method
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
return-void
.end method
.method public setImageResource(I)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
return-void
.end method