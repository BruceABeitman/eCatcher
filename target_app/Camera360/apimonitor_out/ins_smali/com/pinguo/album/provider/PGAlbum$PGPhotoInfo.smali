.class public interface abstract Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;
.super Ljava/lang/Object;
.source "PGAlbum.java"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final PHOTO_AVG_COLOR:Ljava/lang/String; = "avgColor"
.field public static final PHOTO_CRC32:Ljava/lang/String; = "photo_crc32"
.field public static final PHOTO_DATA_BAK:Ljava/lang/String; = "photo_data_bak"
.field public static final PHOTO_DATE:Ljava/lang/String; = "date"
.field public static final PHOTO_HAS_AUDIO:Ljava/lang/String; = "hasAudio"
.field public static final PHOTO_HEIGHT:Ljava/lang/String; = "height"
.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"
.field public static final PHOTO_KEY:Ljava/lang/String; = "photo_key"
.field public static final PHOTO_TIMESTAMP:Ljava/lang/String; = "timestamp"
.field public static final PHOTO_WEEK:Ljava/lang/String; = "week"
.field public static final PHOTO_WIDTH:Ljava/lang/String; = "width"
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lcom/pinguo/album/provider/PGAlbum;->AUTHORITY_URI:Landroid/net/Uri;
const-string/jumbo v1, "photo_det"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method