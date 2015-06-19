.class public final Lco/vine/android/provider/VineUploads$Uploads;
.super Ljava/lang/Object;
.source "VineUploads.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/VineUploads$UploadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineUploads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uploads"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PATH_DELETE_UPLOAD:Ljava/lang/String; = "uploads/delete_upload"

.field public static final PATH_PUT_HASH:Ljava/lang/String; = "uploads/put_hash"

.field public static final PATH_PUT_MESSAGE_ROW_ID:Ljava/lang/String; = "uploads/put_message_row_id"

.field public static final PATH_PUT_NEW_UPLOAD:Ljava/lang/String; = "uploads/put_new_upload"

.field public static final PATH_PUT_POST_INFO:Ljava/lang/String; = "uploads/put_post_info"

.field public static final PATH_PUT_STATUS:Ljava/lang/String; = "uploads/put_status"

.field public static final PATH_PUT_UPLOAD_TIME:Ljava/lang/String; = "uploads/put_upload_time"

.field public static final PATH_PUT_URIS:Ljava/lang/String; = "uploads/put_uris"

.field public static final PATH_PUT_VALUES:Ljava/lang/String; = "uploads/put_values"

.field public static final PATH_REFERENCE:Ljava/lang/String; = "uploads/reference"

.field public static final PATH_UPLOAD:Ljava/lang/String; = "uploads/upload"

.field public static final QUERY_CAPTCHA_URL:Ljava/lang/String; = "captcha_url"

.field public static final QUERY_HASH:Ljava/lang/String; = "hash"

.field public static final QUERY_MESSAGE_ROW_ID:Ljava/lang/String; = "message_row_id"

.field public static final QUERY_PATH:Ljava/lang/String; = "path"

.field public static final QUERY_POST_INFO:Ljava/lang/String; = "post_info"

.field public static final QUERY_REFERENCE:Ljava/lang/String; = "reference"

.field public static final QUERY_STATUS:Ljava/lang/String; = "status"

.field public static final QUERY_THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final QUERY_UPLOAD_TIME:Ljava/lang/String; = "upload_time"

.field public static final QUERY_VIDEO_URL:Ljava/lang/String; = "video_url"

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "uploads"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/provider/VineUploadProvider;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
