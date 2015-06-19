.class public Lcom/ibm/icu/impl/ICUService$Key;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentID()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fallback()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isFallbackOf(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
