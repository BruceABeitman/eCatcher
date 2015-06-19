.class public final Lcom/bbm/ui/e/ar;
.super Landroid/os/AsyncTask;
.source "LocationUtil.java"
.field private final a:Lcom/bbm/d/ff;
.field private final b:Landroid/widget/ImageView;
.field private final c:I
.field private final d:Lcom/bbm/util/b/i;
.field private final e:Landroid/content/res/Resources;
.method public constructor <init>(Lcom/bbm/d/ff;Landroid/widget/ImageView;Lcom/bbm/util/b/i;Landroid/content/res/Resources;)V
.registers 6
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iput-object p2, p0, Lcom/bbm/ui/e/ar;->b:Landroid/widget/ImageView;
const/16 v0, 0x10
iput v0, p0, Lcom/bbm/ui/e/ar;->c:I
iput-object p3, p0, Lcom/bbm/ui/e/ar;->d:Lcom/bbm/util/b/i;
iput-object p4, p0, Lcom/bbm/ui/e/ar;->e:Landroid/content/res/Resources;
return-void
.end method
.method private varargs a()Landroid/graphics/drawable/BitmapDrawable;
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/ar;->b:Landroid/widget/ImageView;
iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-static {v2, v3, v0}, Lcom/d/a/c/a;->a(Landroid/widget/ImageView;II)Lcom/d/a/b/a/f;
move-result-object v0
iget v2, v0, Lcom/d/a/b/a/f;->b:I
if-lez v2, :cond_9f
iget v2, v0, Lcom/d/a/b/a/f;->a:I
if-lez v2, :cond_9f
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iget-object v3, v3, Lcom/bbm/d/ff;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iget-object v3, v3, Lcom/bbm/d/ff;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "&zoom="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/bbm/ui/e/ar;->c:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "&size="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Lcom/d/a/b/a/f;->a:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v0, v0, Lcom/d/a/b/a/f;->b:I
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "&scale=2&markers=color:purple|"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iget-object v2, v2, Lcom/bbm/d/ff;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iget-object v2, v2, Lcom/bbm/d/ff;->g:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "&sensor=true"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:try_start_8a
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v2
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v3, p0, Lcom/bbm/ui/e/ar;->e:Landroid/content/res/Resources;
invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
:goto_9a
:try_end_9a
.catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_9a} :catch_9b
.catch Ljava/io/IOException; {:try_start_8a .. :try_end_9a} :catch_9e
return-object v0
:catch_9b
move-exception v0
move-object v0, v1
goto :goto_9a
:catch_9e
move-exception v0
:cond_9f
move-object v0, v1
goto :goto_9a
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/e/ar;->a()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 5
check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
if-eqz p1, :cond_26
iget-object v0, p0, Lcom/bbm/ui/e/ar;->d:Lcom/bbm/util/b/i;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/e/ar;->d:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/e/ar;->d:Lcom/bbm/util/b/i;
iget-object v0, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
iget-object v1, p0, Lcom/bbm/ui/e/ar;->a:Lcom/bbm/d/ff;
iget-object v1, v1, Lcom/bbm/d/ff;->e:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/fd;
invoke-direct {v2, p1}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
:cond_21
iget-object v0, p0, Lcom/bbm/ui/e/ar;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_26
return-void
.end method