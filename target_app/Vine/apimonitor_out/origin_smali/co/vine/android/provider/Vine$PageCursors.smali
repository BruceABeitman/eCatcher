.class public final Lco/vine/android/provider/Vine$PageCursors;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageCursors"
.end annotation


# static fields
.field public static final ANCHOR:Ljava/lang/String; = "anchor"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.page_cursor"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURSOR_UNDEFINED:I = -0x1

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final KIND_ACTIVITY:I = 0x3

.field public static final KIND_COMMENTS:I = 0x5

.field public static final KIND_CONVERSATIONS:I = 0x6

.field public static final KIND_FRIENDS:I = 0x8

.field public static final KIND_MESSAGES:I = 0x7

.field public static final KIND_POSTS_TIMELINE:I = 0x2

.field public static final KIND_TAGS:I = 0x4

.field public static final KIND_USERS:I = 0x1

.field public static final NEXT_PAGE:Ljava/lang/String; = "next_page"

.field public static final PAGE_NEW:I = 0x1

.field public static final PAGE_TYPE_NEWER:I = 0x2

.field public static final PAGE_TYPE_OLDER:I = 0x3

.field public static final PREVIOUS_PAGE:Ljava/lang/String; = "previous_page"

.field public static final REVERSED:Ljava/lang/String; = "reversed"

.field public static final TABLE_NAME:Ljava/lang/String; = "page_cursors"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "page_cursors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PageCursors;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
