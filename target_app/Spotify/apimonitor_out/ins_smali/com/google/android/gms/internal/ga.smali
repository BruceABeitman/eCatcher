.class public abstract Lcom/google/android/gms/internal/ga;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/google/android/gms/internal/ga$a;->a(Lcom/google/android/gms/internal/ga$a;)Lcom/google/android/gms/internal/hu;
move-result-object v0
if-eqz v0, :cond_a
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
:cond_a
return-object p1
.end method
.method private static a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->b()I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_1a
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->h()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ga;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_19
return-void
:cond_1a
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->b()I
move-result v0
const/4 v1, 0x7
if-ne v0, v1, :cond_35
const-string v0, "\""
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
check-cast p2, Ljava/lang/String;
invoke-static {p2}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "\""
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_19
:cond_35
invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_19
.end method
.method private static a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/util/ArrayList;)V
.registers 6
const-string v0, "["
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_a
if-ge v0, v1, :cond_1f
if-lez v0, :cond_13
const-string v2, ","
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_1c
invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ga;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V
:cond_1c
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1f
const-string v0, "]"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ga$a;)Z
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->d()I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_24
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->e()Z
move-result v0
if-eqz v0, :cond_19
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Concrete type arrays not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Concrete types not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->d()Z
move-result v0
return v0
.end method
.method protected b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
.registers 6
const/4 v3, 0x1
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->h()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_65
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->c()Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Concrete field shouldn\'t be value object: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->e()Z
:try_start_2a
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "get"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5c} :catch_5e
move-result-object v0
:goto_5d
return-object v0
:catch_5e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_65
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->f()Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->c()Ljava/lang/Object;
move-result-object v0
goto :goto_5d
.end method
.method public abstract b()Ljava/util/HashMap;
.end method
.method protected abstract c()Ljava/lang/Object;
.end method
.method protected abstract d()Z
.end method
.method public toString()Ljava/lang/String;
.registers 8
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->b()Ljava/util/HashMap;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
const/16 v0, 0x64
invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_13
:goto_13
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v2
if-eqz v2, :cond_13
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ga;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v6
if-nez v6, :cond_55
const-string v6, "{"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_3e
const-string v6, "\""
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, "\":"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez v2, :cond_5b
const-string v0, "null"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_55
const-string v6, ","
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_3e
:cond_5b
invoke-virtual {v1}, Lcom/google/android/gms/internal/ga$a;->d()I
move-result v0
packed-switch v0, :pswitch_data_be
invoke-virtual {v1}, Lcom/google/android/gms/internal/ga$a;->c()Z
move-result v0
if-eqz v0, :cond_a3
check-cast v2, Ljava/util/ArrayList;
invoke-static {v4, v1, v2}, Lcom/google/android/gms/internal/ga;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/util/ArrayList;)V
goto :goto_13
:pswitch_6e
const-string v0, "\""
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
move-object v0, v2
check-cast v0, [B
invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:pswitch_85
const-string v0, "\""
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast v2, [B
invoke-static {v2}, Lcom/google/android/gms/internal/ib;->b([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_13
:pswitch_9c
check-cast v2, Ljava/util/HashMap;
invoke-static {v4, v2}, Lcom/google/android/gms/internal/ii;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
goto/16 :goto_13
:cond_a3
invoke-static {v4, v1, v2}, Lcom/google/android/gms/internal/ga;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V
goto/16 :goto_13
:cond_a8
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_b8
const-string v0, "}"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_b3
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_b8
const-string v0, "{}"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b3
:pswitch_data_be
.packed-switch 0x8
:pswitch_6e
:pswitch_85
:pswitch_9c
.end packed-switch
.end method