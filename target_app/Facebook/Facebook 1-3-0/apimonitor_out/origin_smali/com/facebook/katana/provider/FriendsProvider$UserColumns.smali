.class public Lcom/facebook/katana/provider/FriendsProvider$UserColumns;
.super Ljava/lang/Object;
.source "FriendsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/FriendsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserColumns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "display_name ASC"

.field public static final USER_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final USER_FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_IMAGE_URL:Ljava/lang/String; = "user_image_url"

.field public static final USER_LAST_NAME:Ljava/lang/String; = "last_name"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
