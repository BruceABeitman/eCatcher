.class public final Lcom/facebook/katana/provider/FriendsProvider$SearchResultColumns;
.super Lcom/facebook/katana/provider/FriendsProvider$UserColumns;
.source "FriendsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/FriendsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultColumns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/provider/FriendsProvider$UserColumns;-><init>()V

    return-void
.end method
