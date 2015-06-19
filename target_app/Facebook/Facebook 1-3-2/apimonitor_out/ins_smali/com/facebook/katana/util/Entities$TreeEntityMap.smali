.class  Lcom/facebook/katana/util/Entities$TreeEntityMap;
.super Lcom/facebook/katana/util/Entities$MapIntMap;
.source "Entities.java"
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/util/Entities$MapIntMap;-><init>()V
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/util/Entities$TreeEntityMap;->mapNameToValue:Ljava/util/Map;
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/util/Entities$TreeEntityMap;->mapValueToName:Ljava/util/Map;
return-void
.end method