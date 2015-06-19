.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackDatabaseField;
.super Ljava/lang/Object;
.source "Camera360FeedbackDatabaseField.java"
.implements Landroid/provider/BaseColumns;
.field public static final AUTHORITY:Ljava/lang/String; = "com.pinguo.camera360.crab.feedback"
.field public static final AUTHORITY_URI:Landroid/net/Uri; = null
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final MESSAGE:Ljava/lang/String; = "message"
.field public static final NAME:Ljava/lang/String; = "name"
.field public static final STATUS:Ljava/lang/String; = "status"
.field public static final TABLE_PATH:Ljava/lang/String; = "c360_feedback"
.field public static final TIME:Ljava/lang/String; = "time"
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "content://com.pinguo.camera360.crab.feedback"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackDatabaseField;->AUTHORITY_URI:Landroid/net/Uri;
sget-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackDatabaseField;->AUTHORITY_URI:Landroid/net/Uri;
const-string/jumbo v1, "c360_feedback"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackDatabaseField;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method