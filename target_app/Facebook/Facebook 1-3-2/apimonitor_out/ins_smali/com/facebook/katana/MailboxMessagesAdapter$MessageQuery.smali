.class public interface abstract Lcom/facebook/katana/MailboxMessagesAdapter$MessageQuery;
.super Ljava/lang/Object;
.source "MailboxMessagesAdapter.java"
.field public static final INDEX_AUTHOR_IMAGE_URL:I = 0x5
.field public static final INDEX_AUTHOR_NAME:I = 0x4
.field public static final INDEX_AUTHOR_USER_ID:I = 0x1
.field public static final INDEX_BODY:I = 0x3
.field public static final INDEX_OBJECT_IMAGE_URL:I = 0x7
.field public static final INDEX_OBJECT_NAME:I = 0x6
.field public static final INDEX_SPECIFIC_ID:I = 0x0
.field public static final INDEX_TIME_SENT:I = 0x2
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "author_uid"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "sent"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "body"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "author_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "author_image_url"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "object_name"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "object_image_url"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/MailboxMessagesAdapter$MessageQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method