.class interface abstract Lcom/facebook/katana/platform/PlatformStorage$UserIdQuery;
.super Ljava/lang/Object;
.source "PlatformStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/platform/PlatformStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "UserIdQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "account_type=\'com.facebook.auth.login\' AND sourceid=?"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/platform/PlatformStorage$UserIdQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method