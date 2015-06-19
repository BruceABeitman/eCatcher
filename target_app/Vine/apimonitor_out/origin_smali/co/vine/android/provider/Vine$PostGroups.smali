.class public final Lco/vine/android/provider/Vine$PostGroups;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$PostGroupColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostGroups"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.posts.groups"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.posts.groups"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SORT_ORDER_BY_SORT:Ljava/lang/String; = "sort_id DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "post_groups"

.field public static final TYPE_ARBITRARY_TIMELINE:I = 0xb

.field public static final TYPE_CHANNELS_POPULAR:I = 0x8

.field public static final TYPE_CHANNELS_RECENT:I = 0x9

.field public static final TYPE_ON_THE_RISE:I = 0x4

.field public static final TYPE_POPULAR_NOW:I = 0x5

.field public static final TYPE_POSTS:I = 0x7

.field public static final TYPE_TAG:I = 0x6

.field public static final TYPE_TIMELINE:I = 0x1

.field public static final TYPE_UNDEFINED:I = -0x1

.field public static final TYPE_USER_LIKES:I = 0x3

.field public static final TYPE_USER_TIMELINE:I = 0x2

.field public static final TYPE_USER_TIMELINE_NO_REPOSTS:I = 0xa

.field public static final TYPE_VM:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "post_groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostGroups;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
