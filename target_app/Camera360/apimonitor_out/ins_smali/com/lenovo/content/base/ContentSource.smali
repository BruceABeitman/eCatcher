.class public abstract Lcom/lenovo/content/base/ContentSource;
.super Ljava/lang/Object;
.source "ContentSource.java"
.field public static final PATH_ALL_ALBUMS:Ljava/lang/String; = "albums"
.field public static final PATH_ALL_ARTIST:Ljava/lang/String; = "artists"
.field public static final PATH_ALL_ITEMS:Ljava/lang/String; = "items"
.field public static final PATH_APP_COMBO_CATEGORY:Ljava/lang/String; = "combo"
.field public static final PATH_APP_LOCAL_CLONE_ALL_ITEMS:Ljava/lang/String; = "local_clone/items"
.field public static final PATH_APP_LOCAL_CLONE_COMBO_CATEGORY:Ljava/lang/String; = "local_clone_combo"
.field public static final PATH_APP_REMOTE_CLONE_ALL_ITEMS:Ljava/lang/String; = "remote_clone/items"
.field public static final PATH_APP_REMOTE_CLONE_COMBO_CATEGORY:Ljava/lang/String; = "remote_clone_combo"
.field public static final PATH_APP_SDCARD_ALL_ITEMS:Ljava/lang/String; = "sdcard/items"
.field public static final PATH_APP_SDCARD_CATEGORY:Ljava/lang/String; = "sdcard"
.field public static final PATH_APP_SDCARD_COMBO_CATEGORY:Ljava/lang/String; = "sdcard_combo"
.field public static final PATH_APP_SYSTEM_ALL_ITEMS:Ljava/lang/String; = "system/items"
.field public static final PATH_APP_SYSTEM_CATEGORY:Ljava/lang/String; = "system"
.field public static final PATH_APP_SYSTEM_COMBO_CATEGORY:Ljava/lang/String; = "system_combo"
.field public static final PATH_APP_ZIP_ALL_ITEMS:Ljava/lang/String; = "zip/items"
.field public static final PATH_APP_ZIP_CATEGORY:Ljava/lang/String; = "zip"
.field public static final PATH_APP_ZIP_COMBO_CATEGORY:Ljava/lang/String; = "zip_combo"
.field public static final PATH_ROOT:Ljava/lang/String; = "/"
.field public static final PATH_STORE_APP_RECOMMEND_ALL_ITEMS:Ljava/lang/String; = "recommend"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAlbumPathById(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string/jumbo v0, "albums/%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getCategoryPathById(Ljava/lang/String;I)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getCategoryPathById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract createContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.end method
.method public abstract getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.end method
.method public abstract getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.end method
.method public abstract getPathPrefix()Ljava/lang/String;
.end method
.method public abstract getPermits()Ljava/util/List;
.end method
.method public abstract loadContainer(Lcom/lenovo/content/base/ContentContainer;)V
.end method
.method public abstract loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
.end method
.method public loadThumbnail(Lcom/lenovo/content/base/ContentObject;II)Landroid/graphics/Bitmap;
.registers 5
invoke-virtual {p0, p1}, Lcom/lenovo/content/base/ContentSource;->loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method