.class public interface abstract Lcom/ibm/icu/impl/duration/impl/DataRecord$EPluralization;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EPluralization"
.end annotation


# static fields
.field public static final ARABIC:B = 0x5t

.field public static final DUAL:B = 0x2t

.field public static final HEBREW:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final PAUCAL:B = 0x3t

.field public static final PLURAL:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PLURAL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DUAL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PAUCAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HEBREW"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ARABIC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    return-void
.end method
