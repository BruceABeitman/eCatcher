.class public final Lcom/bbm/ui/v;
.super Ljava/lang/Object;
.source "CellRecycler.java"
.field  a:Ljava/util/ArrayList;
.field  b:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/v;->a:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/v;->b:Ljava/util/Map;
return-void
.end method