.class public final Lco/vine/android/provider/Vine$Settings;
.super Ljava/lang/Object;
.source "Vine.java"
.implements Landroid/provider/BaseColumns;
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.settings"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final PROP_NAME:Ljava/lang/String; = "name"
.field public static final PROP_VALUE:Ljava/lang/String; = "value"
.field public static final TABLE_NAME:Ljava/lang/String; = "settings"
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "settings"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method