.class final Lcom/google/android/gms/tagmanager/ao;
.super Ljava/lang/Object;
.field private static final a:Ljava/lang/Object;
.field private static b:Ljava/lang/Long;
.field private static c:Ljava/lang/Double;
.field private static d:Lcom/google/android/gms/tagmanager/dg;
.field private static e:Ljava/lang/String;
.field private static f:Ljava/lang/Boolean;
.field private static g:Ljava/util/List;
.field private static h:Ljava/util/Map;
.field private static i:Lcom/google/android/gms/internal/dn;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const/4 v0, 0x0
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
new-instance v0, Ljava/lang/Long;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->b:Ljava/lang/Long;
new-instance v0, Ljava/lang/Double;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->c:Ljava/lang/Double;
invoke-static {}, Lcom/google/android/gms/tagmanager/dg;->a()Lcom/google/android/gms/tagmanager/dg;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->d:Lcom/google/android/gms/tagmanager/dg;
new-instance v0, Ljava/lang/String;
const-string v1, ""
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->e:Ljava/lang/String;
new-instance v0, Ljava/lang/Boolean;
invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->f:Ljava/lang/Boolean;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->g:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->h:Ljava/util/Map;
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
return-void
.end method
.method public static a()Lcom/google/android/gms/internal/dn;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
return-object v0
.end method
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
.registers 11
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v4, Lcom/google/android/gms/internal/dn;
invoke-direct {v4}, Lcom/google/android/gms/internal/dn;-><init>()V
instance-of v0, p0, Lcom/google/android/gms/internal/dn;
if-eqz v0, :cond_e
check-cast p0, Lcom/google/android/gms/internal/dn;
:goto_d
return-object p0
:cond_e
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_1c
iput v3, v4, Lcom/google/android/gms/internal/dn;->a:I
check-cast p0, Ljava/lang/String;
iput-object p0, v4, Lcom/google/android/gms/internal/dn;->b:Ljava/lang/String;
:goto_18
iput-boolean v2, v4, Lcom/google/android/gms/internal/dn;->l:Z
move-object p0, v4
goto :goto_d
:cond_1c
instance-of v0, p0, Ljava/util/List;
if-eqz v0, :cond_62
const/4 v0, 0x2
iput v0, v4, Lcom/google/android/gms/internal/dn;->a:I
check-cast p0, Ljava/util/List;
new-instance v5, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
move v1, v2
:goto_33
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
move-result-object v7
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
if-ne v7, v0, :cond_48
sget-object p0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
goto :goto_d
:cond_48
if-nez v1, :cond_4e
iget-boolean v0, v7, Lcom/google/android/gms/internal/dn;->l:Z
if-eqz v0, :cond_54
:cond_4e
move v0, v3
:goto_4f
invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move v1, v0
goto :goto_33
:cond_54
move v0, v2
goto :goto_4f
:cond_56
new-array v0, v2, [Lcom/google/android/gms/internal/dn;
invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/dn;
iput-object v0, v4, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;
move v2, v1
goto :goto_18
:cond_62
instance-of v0, p0, Ljava/util/Map;
if-eqz v0, :cond_da
const/4 v0, 0x3
iput v0, v4, Lcom/google/android/gms/internal/dn;->a:I
check-cast p0, Ljava/util/Map;
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
new-instance v5, Ljava/util/ArrayList;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v1
invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Ljava/util/ArrayList;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v1
invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
move v1, v2
:goto_86
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c3
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v8
invoke-static {v8}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
move-result-object v8
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
move-result-object v9
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
if-eq v8, v0, :cond_aa
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
if-ne v9, v0, :cond_ae
:cond_aa
sget-object p0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
goto/16 :goto_d
:cond_ae
if-nez v1, :cond_b8
iget-boolean v0, v8, Lcom/google/android/gms/internal/dn;->l:Z
if-nez v0, :cond_b8
iget-boolean v0, v9, Lcom/google/android/gms/internal/dn;->l:Z
if-eqz v0, :cond_c1
:cond_b8
move v0, v3
:goto_b9
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move v1, v0
goto :goto_86
:cond_c1
move v0, v2
goto :goto_b9
:cond_c3
new-array v0, v2, [Lcom/google/android/gms/internal/dn;
invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/dn;
iput-object v0, v4, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;
new-array v0, v2, [Lcom/google/android/gms/internal/dn;
invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/dn;
iput-object v0, v4, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;
move v2, v1
goto/16 :goto_18
:cond_da
instance-of v0, p0, Ljava/lang/Double;
if-nez v0, :cond_ef
instance-of v0, p0, Ljava/lang/Float;
if-nez v0, :cond_ef
instance-of v0, p0, Lcom/google/android/gms/tagmanager/dg;
if-eqz v0, :cond_fc
move-object v0, p0
check-cast v0, Lcom/google/android/gms/tagmanager/dg;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->b()Z
move-result v0
if-eqz v0, :cond_fc
:cond_ef
move v0, v3
:goto_f0
if-eqz v0, :cond_fe
iput v3, v4, Lcom/google/android/gms/internal/dn;->a:I
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, v4, Lcom/google/android/gms/internal/dn;->b:Ljava/lang/String;
goto/16 :goto_18
:cond_fc
move v0, v2
goto :goto_f0
:cond_fe
instance-of v0, p0, Ljava/lang/Byte;
if-nez v0, :cond_11b
instance-of v0, p0, Ljava/lang/Short;
if-nez v0, :cond_11b
instance-of v0, p0, Ljava/lang/Integer;
if-nez v0, :cond_11b
instance-of v0, p0, Ljava/lang/Long;
if-nez v0, :cond_11b
instance-of v0, p0, Lcom/google/android/gms/tagmanager/dg;
if-eqz v0, :cond_12e
move-object v0, p0
check-cast v0, Lcom/google/android/gms/tagmanager/dg;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->c()Z
move-result v0
if-eqz v0, :cond_12e
:cond_11b
:goto_11b
if-eqz v3, :cond_138
const/4 v0, 0x6
iput v0, v4, Lcom/google/android/gms/internal/dn;->a:I
instance-of v0, p0, Ljava/lang/Number;
if-eqz v0, :cond_130
check-cast p0, Ljava/lang/Number;
invoke-virtual {p0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
:goto_12a
iput-wide v0, v4, Lcom/google/android/gms/internal/dn;->h:J
goto/16 :goto_18
:cond_12e
move v3, v2
goto :goto_11b
:cond_130
const-string v0, "getInt64 received non-Number"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
const-wide/16 v0, 0x0
goto :goto_12a
:cond_138
instance-of v0, p0, Ljava/lang/Boolean;
if-eqz v0, :cond_14a
const/16 v0, 0x8
iput v0, v4, Lcom/google/android/gms/internal/dn;->a:I
check-cast p0, Ljava/lang/Boolean;
invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, v4, Lcom/google/android/gms/internal/dn;->i:Z
goto/16 :goto_18
:cond_14a
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "Converting to Value from unknown object type: "
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p0, :cond_164
const-string v0, "null"
:goto_155
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
sget-object p0, Lcom/google/android/gms/tagmanager/ao;->i:Lcom/google/android/gms/internal/dn;
goto/16 :goto_d
:cond_164
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_155
.end method
.method public static a(Lcom/google/android/gms/internal/dn;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/google/android/gms/internal/dn;)Ljava/lang/Boolean;
.registers 3
invoke-static {p0}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Boolean;
if-eqz v1, :cond_b
check-cast v0, Ljava/lang/Boolean;
:goto_a
return-object v0
:cond_b
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string v1, "true"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1a
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_a
:cond_1a
const-string v1, "false"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_a
:cond_25
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->f:Ljava/lang/Boolean;
goto :goto_a
.end method
.method private static b(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_5
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->e:Ljava/lang/String;
:goto_4
return-object v0
:cond_5
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public static c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
if-nez p0, :cond_6
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
:goto_5
return-object v0
:cond_6
iget v1, p0, Lcom/google/android/gms/internal/dn;->a:I
packed-switch v1, :pswitch_data_e0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Failed to convert a value of type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/google/android/gms/internal/dn;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto :goto_5
:pswitch_22
iget-object v0, p0, Lcom/google/android/gms/internal/dn;->b:Ljava/lang/String;
goto :goto_5
:pswitch_25
new-instance v1, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;
array-length v2, v2
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;
array-length v3, v2
:goto_30
if-ge v0, v3, :cond_45
aget-object v4, v2, v0
invoke-static {v4}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v4
sget-object v5, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
if-ne v4, v5, :cond_3f
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto :goto_5
:cond_3f
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_30
:cond_45
move-object v0, v1
goto :goto_5
:pswitch_47
iget-object v1, p0, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;
array-length v1, v1
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;
array-length v2, v2
if-eq v1, v2, :cond_68
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Converting an invalid value to object: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto :goto_5
:cond_68
new-instance v1, Ljava/util/HashMap;
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;
array-length v2, v2
invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
:goto_70
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;
array-length v2, v2
if-ge v0, v2, :cond_97
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;
aget-object v2, v2, v0
invoke-static {v2}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;
aget-object v3, v3, v0
invoke-static {v3}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v3
sget-object v4, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
if-eq v2, v4, :cond_8d
sget-object v4, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
if-ne v3, v4, :cond_91
:cond_8d
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto/16 :goto_5
:cond_91
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_70
:cond_97
move-object v0, v1
goto/16 :goto_5
:pswitch_9a
const-string v0, "Trying to convert a macro reference to object"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto/16 :goto_5
:pswitch_a3
const-string v0, "Trying to convert a function id to object"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto/16 :goto_5
:pswitch_ac
iget-wide v0, p0, Lcom/google/android/gms/internal/dn;->h:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto/16 :goto_5
:pswitch_b4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;
array-length v3, v2
:goto_bc
if-ge v0, v3, :cond_d2
aget-object v4, v2, v0
invoke-static {v4}, Lcom/google/android/gms/tagmanager/ao;->a(Lcom/google/android/gms/internal/dn;)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/google/android/gms/tagmanager/ao;->e:Ljava/lang/String;
if-ne v4, v5, :cond_cc
sget-object v0, Lcom/google/android/gms/tagmanager/ao;->a:Ljava/lang/Object;
goto/16 :goto_5
:cond_cc
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_bc
:cond_d2
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_5
:pswitch_d8
iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->i:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_5
:pswitch_data_e0
.packed-switch 0x1
:pswitch_22
:pswitch_25
:pswitch_47
:pswitch_9a
:pswitch_a3
:pswitch_ac
:pswitch_b4
:pswitch_d8
.end packed-switch
.end method