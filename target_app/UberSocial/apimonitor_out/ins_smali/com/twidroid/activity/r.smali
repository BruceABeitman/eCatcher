.class public Lcom/twidroid/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private a:Landroid/graphics/Bitmap;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Z
.field private final e:Landroid/net/Uri;
.field private f:Z
.field private g:Ljava/lang/String;
.field private h:I
.field private i:Z
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
.registers 9
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/twidroid/activity/r;->f:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/activity/r;->g:Ljava/lang/String;
iput v1, p0, Lcom/twidroid/activity/r;->h:I
iput-object p1, p0, Lcom/twidroid/activity/r;->e:Landroid/net/Uri;
iput-object p2, p0, Lcom/twidroid/activity/r;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/activity/r;->a:Landroid/graphics/Bitmap;
iput-object p4, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
iput-boolean p5, p0, Lcom/twidroid/activity/r;->d:Z
iput-boolean p6, p0, Lcom/twidroid/activity/r;->i:Z
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/r;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->g:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/activity/r;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/r;->g:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/twidroid/activity/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/r;->f:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/activity/r;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/activity/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/r;->f:Z
return v0
.end method
.method public a()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->e:Landroid/net/Uri;
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/activity/r;->h:I
return-void
.end method
.method public a(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/r;->a:Landroid/graphics/Bitmap;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/r;->f:Z
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/r;->i:Z
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/twidroid/activity/r;->h:I
return v0
.end method
.method public d()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->a:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/twidroid/activity/r;
iget-object v2, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/r;->f:Z
return v0
.end method
.method public g()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1a
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_1a
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
:goto_19
return-object v0
:cond_1a
const-string v0, ""
goto :goto_19
.end method
.method public h()Ljava/lang/String;
.registers 5
const/4 v3, 0x0
const/4 v2, -0x1
invoke-virtual {p0}, Lcom/twidroid/activity/r;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v2, :cond_1c
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_1c
const-string v1, ".png"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v2, :cond_2e
const-string v1, ".png"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_2e
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_5
add-int/lit8 v0, v0, 0x1f
return v0
:cond_8
iget-object v0, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public i()Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/activity/r;->g()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
iget-object v0, p0, Lcom/twidroid/activity/r;->c:Ljava/lang/String;
goto :goto_1b
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/r;->b:Ljava/lang/String;
return-object v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/r;->d:Z
return v0
.end method
.method public l()Ljava/lang/Object;
.registers 3
:try_start_0
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method