.class Lcom/facebook/katana/util/Entities$HashEntityMap;
.super Lcom/facebook/katana/util/Entities$MapIntMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/util/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$MapIntMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$HashEntityMap;->mapNameToValue:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$HashEntityMap;->mapValueToName:Ljava/util/Map;

    return-void
.end method
