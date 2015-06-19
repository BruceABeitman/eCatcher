.class public Lco/vine/android/provider/VineUploadsDatabaseSQL;
.super Ljava/lang/Object;
.source "VineUploadsDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;
    }
.end annotation


# static fields
.field public static final ADD_COLUMN:Ljava/lang/String; = " ADD COLUMN "

.field public static final ALTER_TABLE:Ljava/lang/String; = "ALTER TABLE "

.field public static final AS:Ljava/lang/String; = " AS "

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE "

.field public static final CREATE_VIEW:Ljava/lang/String; = "CREATE VIEW "

.field public static final UPLOADS_ADD_CAPTCHA_URL_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN captcha_url TEXT;"

.field public static final UPLOADS_ADD_CONVERSATION_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN conversation_row_id INT;"

.field public static final UPLOADS_ADD_MAX_LOOPS_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN max_loops INT;"

.field public static final UPLOADS_ADD_MESSAGE_ROW_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN message_row INT;"

.field public static final UPLOADS_ADD_OWNER_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN owner_id INT;"

.field public static final UPLOADS_ADD_PRIVATE_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN is_private INT;"

.field public static final UPLOADS_ADD_REFERENCE_COLUMN:Ljava/lang/String; = "ALTER TABLE uploads ADD COLUMN reference TEXT;"

.field public static final UPLOADS_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE  IF NOT EXISTS uploads (_id INTEGER PRIMARY KEY,path TEXT,hash TEXT,status INT,post_info TEXT,video_url TEXT,thumbnail_path TEXT,thumbnail_url TEXT,upload_time TEXT,is_private INT,conversation_row_id INT,reference TEXT,owner_id INT,captcha_url TEXT, max_loops INT, message_row INT);"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
