.class public interface abstract Lcom/ibm/icu/impl/duration/impl/DataRecord$EMilliSupport;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EMilliSupport"
.end annotation


# static fields
.field public static final NO:B = 0x1t

.field public static final WITH_SECONDS:B = 0x2t

.field public static final YES:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "YES"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WITH_SECONDS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    return-void
.end method
