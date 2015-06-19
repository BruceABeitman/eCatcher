.class final Lcom/ibm/icu/impl/ICUService$CacheEntry;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final actualDescriptor:Ljava/lang/String;

.field final service:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    return-void
.end method
