.class public final Lcom/instagram/creation/photo/crop/a;
.super Ljava/lang/Object;
.source "CropArgumentsBuilder.java"
.field private final a:Landroid/os/Bundle;
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "isCrop"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p1}, Lcom/instagram/common/u/a;->b(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v2, "output"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
.registers 4
new-instance v0, Lcom/instagram/creation/photo/crop/a;
invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/a;-><init>(Landroid/content/Context;)V
invoke-direct {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(Z)Lcom/instagram/creation/photo/crop/a;
move-result-object v1
invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z
move-result v0
if-eqz v0, :cond_1f
const/16 v0, 0x400
:goto_16
invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/a;->b(I)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
invoke-direct {v0}, Lcom/instagram/creation/photo/crop/a;->b()Lcom/instagram/creation/photo/crop/a;
move-result-object v0
return-object v0
:cond_1f
const/16 v0, 0x800
goto :goto_16
.end method
.method private a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "CropFragment.imageUri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object p0
.end method
.method private b()Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "CropFragment.smallestDimension"
const/16 v2, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
.registers 4
new-instance v0, Lcom/instagram/creation/photo/crop/a;
invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/a;-><init>(Landroid/content/Context;)V
invoke-direct {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(Z)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
invoke-direct {v0}, Lcom/instagram/creation/photo/crop/a;->c()Lcom/instagram/creation/photo/crop/a;
move-result-object v0
return-object v0
.end method
.method private b(Z)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "CropFragment.requestCropRect"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object p0
.end method
.method private c()Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "CropFragment.isAvatar"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object p0
.end method
.method public final a()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
return-object v0
.end method
.method public final a(I)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "mediaSource"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "pendingMediaKey"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public final a(Z)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "directShare"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object p0
.end method
.method public final b(I)Lcom/instagram/creation/photo/crop/a;
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;
const-string v1, "CropFragment.largestDimension"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method