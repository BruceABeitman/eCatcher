.class public Lcom/facebook/katana/provider/FriendsProvider$FriendColumns;
.super Lcom/facebook/katana/provider/FriendsProvider$UserColumns;
.source "FriendsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/FriendsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendColumns"
.end annotation


# static fields
.field public static final BIRTHDAY_DAY:Ljava/lang/String; = "birthday_day"

.field public static final BIRTHDAY_MONTH:Ljava/lang/String; = "birthday_month"

.field public static final BIRTHDAY_YEAR:Ljava/lang/String; = "birthday_year"

.field public static final HASH:Ljava/lang/String; = "hash"

.field public static final LIVE_FOLDER_INTENT:Ljava/lang/String; = "intent"

.field public static final USER_IMAGE:Ljava/lang/String; = "user_image"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/provider/FriendsProvider$UserColumns;-><init>()V

    return-void
.end method