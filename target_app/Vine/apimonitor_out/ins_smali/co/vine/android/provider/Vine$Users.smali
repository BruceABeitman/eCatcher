.class public final Lco/vine/android/provider/Vine$Users;
.super Ljava/lang/Object;
.source "Vine.java"
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$UserColumns;
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.users"
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.users"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final CONTENT_URI_HIDE_PROFILE_REPOSTS:Landroid/net/Uri; = null
.field public static final LIMIT_DEFAULT:I = 0x190
.field public static final QUERY_HIDE_PROFILE_REPOSTS:Ljava/lang/String; = "hide_profile_reposts"
.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "username ASC"
.field public static final SORT_ORDER_LAST_REFRESH:Ljava/lang/String; = "last_refresh DESC"
.field public static final TABLE_NAME:Ljava/lang/String; = "users"
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "users"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine$Users;->CONTENT_URI:Landroid/net/Uri;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "users"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/hide_profile_reposts"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine$Users;->CONTENT_URI_HIDE_PROFILE_REPOSTS:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method