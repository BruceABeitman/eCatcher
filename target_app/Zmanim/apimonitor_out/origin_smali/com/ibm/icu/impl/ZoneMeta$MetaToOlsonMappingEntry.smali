.class Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetaToOlsonMappingEntry"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field territory:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;-><init>()V

    return-void
.end method
