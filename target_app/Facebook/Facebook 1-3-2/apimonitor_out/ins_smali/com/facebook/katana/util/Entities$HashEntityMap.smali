.class  Lcom/facebook/katana/util/Entities$HashEntityMap;
.super Lcom/facebook/katana/util/Entities$MapIntMap;
.source "Entities.java"
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