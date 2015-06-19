.class public interface abstract Lcom/ibm/icu/impl/ICUService$Factory;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.end method

.method public abstract getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract updateVisibleIDs(Ljava/util/Map;)V
.end method
