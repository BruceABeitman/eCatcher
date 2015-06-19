.class final Lcom/bbm/iceberg/e;
.super Ljava/lang/Object;
.source "IcebergFetcher.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/blackberry/a/c;
.field final synthetic c:Lcom/bbm/util/dc;
.field final synthetic d:Lcom/bbm/iceberg/a;
.method constructor <init>(Lcom/bbm/iceberg/a;Ljava/util/List;Lcom/blackberry/a/c;Lcom/bbm/util/dc;)V
.registers 5
iput-object p1, p0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iput-object p2, p0, Lcom/bbm/iceberg/e;->a:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/iceberg/e;->b:Lcom/blackberry/a/c;
iput-object p4, p0, Lcom/bbm/iceberg/e;->c:Lcom/bbm/util/dc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v1, 0x0
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/bbm/iceberg/e;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v4
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
:cond_20
move v0, v1
:goto_21
iget-object v2, p0, Lcom/bbm/iceberg/e;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-ge v0, v2, :cond_70
:try_start_29
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
:goto_2e
iget-object v2, p0, Lcom/bbm/iceberg/e;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-ge v0, v2, :cond_4b
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v2
const/16 v5, 0x64
if-ge v2, v5, :cond_4b
iget-object v5, p0, Lcom/bbm/iceberg/e;->a:Ljava/util/List;
:try_end_40
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_67
add-int/lit8 v2, v0, 0x1
:try_start_42
invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_49
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_a4
move v0, v2
goto :goto_2e
:cond_4b
:try_start_4b
iget-object v2, p0, Lcom/bbm/iceberg/e;->b:Lcom/blackberry/a/c;
invoke-virtual {v2, v4}, Lcom/blackberry/a/c;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v2
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
iget-object v5, p0, Lcom/bbm/iceberg/e;->c:Lcom/bbm/util/dc;
new-instance v6, Lcom/bbm/iceberg/f;
invoke-direct {v6, p0, v4}, Lcom/bbm/iceberg/f;-><init>(Lcom/bbm/iceberg/e;I)V
invoke-interface {v5, v6}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
invoke-static {v2}, Lcom/bbm/iceberg/a;->a(Ljava/lang/String;)Ljava/util/Map;
move-result-object v2
invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:try_end_66
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_66} :catch_67
goto :goto_21
:catch_67
move-exception v2
:goto_68
const-string v2, "Iceberg enhancement request failed. We ignore this and will retry in a couple weeks."
new-array v4, v1, [Ljava/lang/Object;
invoke-static {v2, v4}, Lcom/blackberry/a/i;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_21
:cond_70
invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_78
:goto_78
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_99
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v4, 0x1
if-le v1, v4, :cond_78
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_78
:cond_99
iget-object v0, p0, Lcom/bbm/iceberg/e;->c:Lcom/bbm/util/dc;
new-instance v1, Lcom/bbm/iceberg/g;
invoke-direct {v1, p0, v3}, Lcom/bbm/iceberg/g;-><init>(Lcom/bbm/iceberg/e;Ljava/util/Map;)V
invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
return-void
:catch_a4
move-exception v0
move v0, v2
goto :goto_68
.end method