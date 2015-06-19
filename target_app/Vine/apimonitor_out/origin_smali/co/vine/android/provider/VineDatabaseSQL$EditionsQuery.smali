.class public final Lco/vine/android/provider/VineDatabaseSQL$EditionsQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditionsQuery"
.end annotation


# static fields
.field public static final INDEX_EDITION_CODE:I = 0x1

.field public static final INDEX_EDITION_NAME:I = 0x2

.field public static final INDEX_ID:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "edition_code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edition_name"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$EditionsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
