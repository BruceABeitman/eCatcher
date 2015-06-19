.class public final Lcom/facebook/katana/provider/FriendsProvider$ContactInfoColumns;
.super Ljava/lang/Object;
.source "FriendsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/FriendsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfoColumns"
.end annotation


# static fields
.field public static final CELL:Ljava/lang/String; = "cell"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "user_id DESC"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final OTHER_PHONE:Ljava/lang/String; = "other"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
