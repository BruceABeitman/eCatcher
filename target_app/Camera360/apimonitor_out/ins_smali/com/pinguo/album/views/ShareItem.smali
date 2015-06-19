.class public Lcom/pinguo/album/views/ShareItem;
.super Ljava/lang/Object;
.source "ShareItem.java"
.field public static final SHARE_TYPE_LOCAL:I = 0x0
.field public static final SHARE_TYPE_NONE:I = -0x1
.field public static final SHARE_TYPE_OTHER:I = 0x2
.field public static final SHARE_TYPE_WEB:I = 0x1
.field private icon:Landroid/graphics/drawable/Drawable;
.field private intent:Landroid/content/Intent;
.field private itemId:I
.field private shareType:I
.field private title:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/ShareItem;->icon:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/ShareItem;->intent:Landroid/content/Intent;
return-object v0
.end method
.method public getItemId()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/ShareItem;->itemId:I
return v0
.end method
.method public getShareType()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/ShareItem;->shareType:I
return v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/ShareItem;->title:Ljava/lang/String;
return-object v0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/ShareItem;->icon:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public setIntent(Landroid/content/Intent;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/ShareItem;->intent:Landroid/content/Intent;
return-void
.end method
.method public setItemId(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/views/ShareItem;->itemId:I
return-void
.end method
.method public setShareType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/views/ShareItem;->shareType:I
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/ShareItem;->title:Ljava/lang/String;
return-void
.end method