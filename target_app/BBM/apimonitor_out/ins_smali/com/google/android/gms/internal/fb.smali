.class public abstract Lcom/google/android/gms/internal/fb;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->el()I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_1a
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->ev()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_19
return-void
:cond_1a
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->el()I
move-result v0
const/4 v1, 0x7
if-ne v0, v1, :cond_35
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
check-cast p3, Ljava/lang/String;
invoke-static {p3}, Lcom/google/android/gms/internal/fp;->ap(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_19
:cond_35
invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_19
.end method
.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/util/ArrayList;)V
.registers 7
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_a
if-ge v0, v1, :cond_1f
if-lez v0, :cond_13
const-string v2, ","
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_1c
invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/fb;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
:cond_1c
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1f
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/fb$a;->c(Lcom/google/android/gms/internal/fb$a;)Lcom/google/android/gms/internal/fb$b;
move-result-object v0
if-eqz v0, :cond_a
invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/fb$a;->g(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p2
:cond_a
return-object p2
.end method
.method protected a(Lcom/google/android/gms/internal/fb$a;)Z
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->em()I
move-result v0
const/16 v1, 0xb
if-ne v0, v1, :cond_20
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->es()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fb;->an(Ljava/lang/String;)Z
move-result v0
:goto_16
return v0
:cond_17
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fb;->am(Ljava/lang/String;)Z
move-result v0
goto :goto_16
:cond_20
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fb;->al(Ljava/lang/String;)Z
move-result v0
goto :goto_16
.end method
.method protected abstract ak(Ljava/lang/String;)Ljava/lang/Object;
.end method
.method protected abstract al(Ljava/lang/String;)Z
.end method
.method protected am(Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Concrete types not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected an(Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Concrete type arrays not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->ev()Ljava/lang/Class;
move-result-object v3
if-eqz v3, :cond_7f
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/fb;->ak(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_3d
:goto_16
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Concrete field shouldn\'t be value object: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->es()Z
move-result v0
if-eqz v0, :cond_3f
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb;->ep()Ljava/util/HashMap;
move-result-object v0
:goto_36
if-eqz v0, :cond_44
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_3c
return-object v0
:cond_3d
move v0, v1
goto :goto_16
:cond_3f
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb;->eo()Ljava/util/HashMap;
move-result-object v0
goto :goto_36
:cond_44
:try_start_44
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "get"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
:try_end_76
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_76} :catch_78
move-result-object v0
goto :goto_3c
:catch_78
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_7f
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->et()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fb;->ak(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
goto :goto_3c
.end method
.method public abstract en()Ljava/util/HashMap;
.end method
.method public eo()Ljava/util/HashMap;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public ep()Ljava/util/HashMap;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 8
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb;->en()Ljava/util/HashMap;
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
if-eqz v0, :cond_ac
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/fb$a;
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v2
if-eqz v2, :cond_13
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fb;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
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
invoke-virtual {v1}, Lcom/google/android/gms/internal/fb$a;->em()I
move-result v0
packed-switch v0, :pswitch_data_c2
invoke-virtual {v1}, Lcom/google/android/gms/internal/fb$a;->er()Z
move-result v0
if-eqz v0, :cond_a7
check-cast v2, Ljava/util/ArrayList;
invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/fb;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/util/ArrayList;)V
goto :goto_13
:pswitch_6e
const-string v0, "\""
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
move-object v0, v2
check-cast v0, [B
check-cast v0, [B
invoke-static {v0}, Lcom/google/android/gms/internal/fk;->d([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:pswitch_87
const-string v0, "\""
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast v2, [B
check-cast v2, [B
invoke-static {v2}, Lcom/google/android/gms/internal/fk;->e([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_13
:pswitch_a0
check-cast v2, Ljava/util/HashMap;
invoke-static {v4, v2}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
goto/16 :goto_13
:cond_a7
invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/fb;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto/16 :goto_13
:cond_ac
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_bc
const-string v0, "}"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_b7
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_bc
const-string v0, "{}"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b7
:pswitch_data_c2
.packed-switch 0x8
:pswitch_6e
:pswitch_87
:pswitch_a0
.end packed-switch
.end method