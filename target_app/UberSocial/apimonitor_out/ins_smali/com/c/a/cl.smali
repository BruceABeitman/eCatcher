.class final Lcom/c/a/cl;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private static final f:[Ljava/lang/String;
.field private final b:J
.field private c:Lcom/c/a/cz;
.field private d:Ljava/util/Map;
.field private e:I
.method static constructor <clinit>()V
.registers 14
const/16 v8, 0x41
const/16 v10, 0x3f
const/16 v9, 0xa
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x2
new-array v11, v2, [Ljava/lang/String;
const-string v2, "Qa"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_94
move v4, v1
:cond_15
move-object v5, v2
move v6, v4
move v13, v3
move-object v3, v2
move v2, v13
:goto_1a
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_96
move v7, v10
:goto_22
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_2e
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_1a
:cond_2e
move v3, v2
move-object v2, v5
:goto_30
if-gt v3, v4, :cond_15
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v1
const-string v2, " K"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_92
move v4, v1
:cond_47
move-object v5, v2
move v6, v4
move v13, v3
move-object v3, v2
move v2, v13
:goto_4c
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_a2
move v7, v10
:goto_54
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_60
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_4c
:cond_60
move v3, v2
move-object v2, v5
:goto_62
if-gt v3, v4, :cond_47
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v0
sput-object v11, Lcom/c/a/cl;->f:[Ljava/lang/String;
const-class v2, Lcom/c/a/cl;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_7c
:goto_79
sput-boolean v0, Lcom/c/a/cl;->a:Z
return-void
:cond_7c
move v0, v1
goto :goto_79
:pswitch_7e
const/16 v7, 0x7d
goto :goto_22
:pswitch_81
move v7, v8
goto :goto_22
:pswitch_83
move v7, v9
goto :goto_22
:pswitch_85
const/16 v7, 0x75
goto :goto_22
:pswitch_88
const/16 v7, 0x7d
goto :goto_54
:pswitch_8b
move v7, v8
goto :goto_54
:pswitch_8d
move v7, v9
goto :goto_54
:pswitch_8f
const/16 v7, 0x75
goto :goto_54
:cond_92
move v4, v1
goto :goto_62
:cond_94
move v4, v1
goto :goto_30
:pswitch_data_96
.packed-switch 0x0
:pswitch_7e
:pswitch_81
:pswitch_83
:pswitch_85
.end packed-switch
:pswitch_data_a2
.packed-switch 0x0
:pswitch_88
:pswitch_8b
:pswitch_8d
:pswitch_8f
.end packed-switch
.end method
.method constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/c/a/cl;->b:J
invoke-virtual {p0}, Lcom/c/a/cl;->a()V
return-void
.end method
.method private a(Lcom/c/bq;JLcom/c/ba;)Ljava/util/List;
.registers 10
sget-boolean v2, Lcom/c/a/d;->h_:Z
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cz;
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p4, p2, p3}, Lcom/c/a/cz;->c(Lcom/c/ba;J)Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_1b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
new-instance v4, Ljava/lang/Integer;
invoke-virtual {v0}, Lcom/c/bu;->c()I
move-result v0
invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz v2, :cond_1b
:cond_35
move-object v0, v1
goto :goto_d
.end method
.method private a(Lcom/c/ba;)V
.registers 7
sget-boolean v1, Lcom/c/a/d;->h_:Z
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cz;
iget v3, p0, Lcom/c/a/cl;->e:I
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ba;)I
move-result v4
sub-int/2addr v3, v4
iput v3, p0, Lcom/c/a/cl;->e:I
invoke-virtual {v0}, Lcom/c/a/cz;->a()I
move-result v0
if-nez v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
:cond_30
if-eqz v1, :cond_c
:cond_32
iget-object v0, p0, Lcom/c/a/cl;->c:Lcom/c/a/cz;
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ba;)I
return-void
.end method
.method private a(Lcom/c/bu;)Z
.registers 5
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-virtual {p1}, Lcom/c/bu;->b()Lcom/c/bq;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cz;
if-eqz v0, :cond_33
sget-boolean v1, Lcom/c/a/cl;->a:Z
if-nez v1, :cond_1e
invoke-virtual {v0}, Lcom/c/a/cz;->a()I
move-result v1
if-gtz v1, :cond_1e
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_1e
invoke-virtual {v0}, Lcom/c/a/cz;->c()Lcom/c/ap;
move-result-object v1
check-cast v1, Lcom/c/bu;
invoke-virtual {v1, p1}, Lcom/c/bu;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
const/4 v0, 0x0
:goto_2b
return v0
:cond_2c
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ap;)V
sget-boolean v0, Lcom/c/a/d;->h_:Z
if-eqz v0, :cond_46
:cond_33
new-instance v0, Lcom/c/a/cz;
iget-wide v1, p0, Lcom/c/a/cl;->b:J
invoke-direct {v0, v1, v2}, Lcom/c/a/cz;-><init>(J)V
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ap;)V
iget-object v1, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-virtual {p1}, Lcom/c/bu;->b()Lcom/c/bq;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_46
iget v0, p0, Lcom/c/a/cl;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/c/a/cl;->e:I
const/4 v0, 0x1
goto :goto_2b
.end method
.method  a(Ljava/util/List;Lcom/c/ba;Ljava/util/List;)I
.registers 9
sget-boolean v1, Lcom/c/a/d;->h_:Z
invoke-virtual {p0}, Lcom/c/a/cl;->b()I
move-result v2
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
invoke-direct {p0, v0}, Lcom/c/a/cl;->a(Lcom/c/bu;)Z
move-result v4
if-eqz v4, :cond_21
if-eqz p3, :cond_21
invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_21
if-eqz v1, :cond_a
:cond_23
invoke-virtual {p0}, Lcom/c/a/cl;->b()I
move-result v0
sub-int/2addr v0, v2
iget-object v1, p0, Lcom/c/a/cl;->c:Lcom/c/a/cz;
new-instance v2, Lcom/c/a/cp;
invoke-direct {v2, p0, p2}, Lcom/c/a/cp;-><init>(Lcom/c/a/cl;Lcom/c/ba;)V
invoke-virtual {v1, v2}, Lcom/c/a/cz;->a(Lcom/c/ap;)V
invoke-direct {p0, p2}, Lcom/c/a/cl;->a(Lcom/c/ba;)V
return v0
.end method
.method  a(JLcom/c/ba;)Ljava/util/List;
.registers 8
sget-boolean v1, Lcom/c/a/d;->h_:Z
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bq;
invoke-direct {p0, v0, p1, p2, p3}, Lcom/c/a/cl;->a(Lcom/c/bq;JLcom/c/ba;)Ljava/util/List;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz v1, :cond_11
:cond_26
return-object v2
.end method
.method  a()V
.registers 4
new-instance v0, Lcom/c/a/cz;
iget-wide v1, p0, Lcom/c/a/cl;->b:J
invoke-direct {v0, v1, v2}, Lcom/c/a/cz;-><init>(J)V
iput-object v0, p0, Lcom/c/a/cl;->c:Lcom/c/a/cz;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
const/4 v0, 0x0
iput v0, p0, Lcom/c/a/cl;->e:I
return-void
.end method
.method  b()I
.registers 2
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method
.method  c()I
.registers 2
iget v0, p0, Lcom/c/a/cl;->e:I
return v0
.end method
.method  d()I
.registers 2
iget-object v0, p0, Lcom/c/a/cl;->c:Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->a()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 9
const/4 v3, 0x0
const/4 v2, 0x1
sget-boolean v4, Lcom/c/a/d;->h_:Z
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/c/a/cl;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_13
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
const-string v1, "["
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->iterator()Ljava/util/Iterator;
move-result-object v7
move v1, v2
:goto_2f
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4d
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
if-nez v1, :cond_44
sget-object v1, Lcom/c/a/cl;->f:[Ljava/lang/String;
aget-object v1, v1, v3
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_44
invoke-virtual {v0}, Lcom/c/bu;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v4, :cond_6a
:cond_4d
sget-object v0, Lcom/c/a/cl;->f:[Ljava/lang/String;
aget-object v0, v0, v2
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v4, :cond_13
:cond_56
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-le v0, v2, :cond_65
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
:cond_65
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_6a
move v1, v3
goto :goto_2f
.end method