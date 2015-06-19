.class public interface abstract Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;
.super Ljava/lang/Object;
.source "PGAlbum.java"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final PHOTO_GROUP_BEGIN_DATE:Ljava/lang/String; = "begin_date"
.field public static final PHOTO_GROUP_BEGIN_TIMESTAMP:Ljava/lang/String; = "begin_timestamp"
.field public static final PHOTO_GROUP_DATA_BAK:Ljava/lang/String; = "group_data_bak"
.field public static final PHOTO_GROUP_DATA_COUNT:Ljava/lang/String; = "group_data_count"
.field public static final PHOTO_GROUP_END_DATE:Ljava/lang/String; = "end_date"
.field public static final PHOTO_GROUP_END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"
.field public static final PHOTO_GROUP_ID:Ljava/lang/String; = "group_id"
.field public static final PHOTO_GROUP_NAME:Ljava/lang/String; = "group_name"
.field public static final PHOTO_GROUP_PHOTO_CRC32S:Ljava/lang/String; = "group_photo_crc32s"
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lcom/pinguo/album/provider/PGAlbum;->AUTHORITY_URI:Landroid/net/Uri;
const-string/jumbo v1, "photo_group"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method