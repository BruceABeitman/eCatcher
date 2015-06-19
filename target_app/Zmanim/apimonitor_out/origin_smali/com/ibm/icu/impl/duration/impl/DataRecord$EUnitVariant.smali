.class public interface abstract Lcom/ibm/icu/impl/duration/impl/DataRecord$EUnitVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EUnitVariant"
.end annotation


# static fields
.field public static final MEDIUM:B = 0x1t

.field public static final PLURALIZED:B = 0x0t

.field public static final SHORT:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PLURALIZED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MEDIUM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHORT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$EUnitVariant;->names:[Ljava/lang/String;

    return-void
.end method
