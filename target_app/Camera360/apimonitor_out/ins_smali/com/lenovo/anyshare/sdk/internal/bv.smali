.class public Lcom/lenovo/anyshare/sdk/internal/bv;
.super Lcom/lenovo/content/base/ContentSource;
.source "LocalSource.java"
.field private a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Lcom/lenovo/content/base/ContentSource;-><init>()V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 1
const-string/jumbo v0, "local"
return-object v0
.end method
.method public a(Lcom/lenovo/content/base/ContentSource;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method public createContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 4
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a(Lcom/lenovo/content/base/ContentType;)Lcom/lenovo/anyshare/sdk/internal/bo;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
return-object v0
.end method
.method public getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 9
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a(Lcom/lenovo/content/base/ContentType;)Lcom/lenovo/anyshare/sdk/internal/bo;
move-result-object v1
invoke-virtual {v1, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bf;
invoke-direct {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;-><init>()V
invoke-virtual {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentContainer;)V
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v3
const/16 v4, 0x64
if-le v3, v4, :cond_5b
const-string/jumbo v3, "COST"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "load container cost: type = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ", id = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ", "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " ms"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_5b
return-object v0
.end method
.method public getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 5
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a(Lcom/lenovo/content/base/ContentType;)Lcom/lenovo/anyshare/sdk/internal/bo;
move-result-object v1
invoke-virtual {v1, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bo;->b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v0
if-eqz v0, :cond_e
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/lenovo/content/base/ContentItem;->setIsExist(Z)V
:cond_e
return-object v0
.end method
.method public getPathPrefix()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bv;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPermits()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ak;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/content/base/ContentPermit;->fromJSONString(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
return-object v1
.end method
.method public loadContainer(Lcom/lenovo/content/base/ContentContainer;)V
.registers 6
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bf;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/bf;-><init>()V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a(Lcom/lenovo/content/base/ContentType;)Lcom/lenovo/anyshare/sdk/internal/bo;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lcom/lenovo/content/base/ContentContainer;)V
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v1
const/16 v2, 0x64
if-le v1, v2, :cond_5b
const-string/jumbo v1, "COST"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "load container cost: type = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", id = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " ms"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_5b
return-void
.end method
.method public loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
.registers 7
const/16 v4, 0x65
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->hasThumbnail()Z
move-result v1
if-nez v1, :cond_39
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
sget-object v2, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1, v2}, Lcom/lenovo/content/base/ContentType;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_39
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Object["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "] has no thumbnail."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:cond_39
instance-of v1, p1, Lcom/lenovo/content/base/ContentItem;
if-eqz v1, :cond_dc
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bv$1;->a:[I
move-object v1, p1
check-cast v1, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
aget v1, v2, v1
packed-switch v1, :pswitch_data_108
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Unsupport content type"
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_58
instance-of v1, p1, Lcom/lenovo/content/item/AppItem;
if-eqz v1, :cond_65
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/AppItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/AppItem;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_64
return-object v0
:cond_65
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not AppItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_6e
instance-of v1, p1, Lcom/lenovo/content/item/FileItem;
if-eqz v1, :cond_7b
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/FileItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/FileItem;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_64
:cond_7b
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not FileItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_84
instance-of v1, p1, Lcom/lenovo/content/item/ContactItem;
if-eqz v1, :cond_91
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/ContactItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/ContactItem;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_64
:cond_91
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not ContactItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_9a
instance-of v1, p1, Lcom/lenovo/content/item/MusicItem;
if-eqz v1, :cond_a7
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/MusicItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/MusicItem;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_64
:cond_a7
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not MusicItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_b0
instance-of v1, p1, Lcom/lenovo/content/item/VideoItem;
if-eqz v1, :cond_bd
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/VideoItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/VideoItem;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_64
:cond_bd
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not VideoItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_c6
instance-of v1, p1, Lcom/lenovo/content/item/PhotoItem;
if-eqz v1, :cond_d3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/PhotoItem;
invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/PhotoItem;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_64
:cond_d3
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Not PhotoItem."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:cond_dc
instance-of v1, p1, Lcom/lenovo/content/base/ContentContainer;
if-eqz v1, :cond_ff
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
sget-object v2, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
if-ne v1, v2, :cond_f6
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/bj;->a()I
move-result v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bw;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
move-result-object v0
goto/16 :goto_64
:cond_f6
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Unsupport content type"
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:cond_ff
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const-string/jumbo v2, "Container has no thumbnail."
invoke-direct {v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:pswitch_data_108
.packed-switch 0x1
:pswitch_58
:pswitch_6e
:pswitch_84
:pswitch_9a
:pswitch_b0
:pswitch_c6
.end packed-switch
.end method
.method public loadThumbnail(Lcom/lenovo/content/base/ContentObject;II)Landroid/graphics/Bitmap;
.registers 8
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->hasThumbnail()Z
move-result v0
if-nez v0, :cond_39
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v0
sget-object v1, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v0, v1}, Lcom/lenovo/content/base/ContentType;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_39
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v1, 0x65
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Object["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "] has no thumbnail."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v0
:cond_39
instance-of v0, p1, Lcom/lenovo/content/item/PhotoItem;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bv;->a:Landroid/content/Context;
check-cast p1, Lcom/lenovo/content/item/PhotoItem;
invoke-static {v0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Lcom/lenovo/content/item/PhotoItem;II)Landroid/graphics/Bitmap;
move-result-object v0
:goto_45
return-object v0
:cond_46
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bv;->loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_45
.end method