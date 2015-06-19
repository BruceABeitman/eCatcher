.class public final Lcom/facebook/katana/provider/FriendsProvider$BirthdayColumns;
.super Lcom/facebook/katana/provider/FriendsProvider$FriendColumns;
.source "FriendsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/FriendsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BirthdayColumns"
.end annotation


# static fields
.field public static final NORMALIZED_BIRTHDAY_DAY:Ljava/lang/String; = "normalized_birthday_day"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/provider/FriendsProvider$FriendColumns;-><init>()V

    return-void
.end method
