.class final Lcom/flurry/android/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Lcom/flurry/android/a;
.field private c:J
.field private d:Lcom/flurry/android/x;
.field private e:Ljava/util/Map;
.field private f:Ljava/util/Map;
.field private g:Ljava/util/Map;
.field private h:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/a;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/flurry/android/x;
const/16 v1, 0x14
invoke-direct {v0, v1}, Lcom/flurry/android/x;-><init>(I)V
iput-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
iput-object p1, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/flurry/android/s;->b:Lcom/flurry/android/a;
return-void
.end method
.method private static a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
.registers 7
if-eqz p2, :cond_2a
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
move-object v1, v0
:goto_8
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_2c
:goto_22
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_10
:cond_2a
move-object v1, p0
goto :goto_8
:cond_2c
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
goto :goto_22
:cond_35
return-object v1
.end method
.method private a(Ljava/io/DataInputStream;)V
.registers 10
const/4 v7, 0x0
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
const/4 v1, 0x1
if-eq v0, v1, :cond_9
:cond_8
return-void
:cond_9
invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/s;->c:J
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
new-instance v1, Lcom/flurry/android/x;
const/16 v2, 0x14
invoke-direct {v1, v2}, Lcom/flurry/android/x;-><init>(I)V
iput-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
move v1, v7
:goto_1d
if-ge v1, v0, :cond_37
invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J
move-result-wide v2
new-instance v4, Lcom/flurry/android/AdImage;
invoke-direct {v4}, Lcom/flurry/android/AdImage;-><init>()V
invoke-virtual {v4, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V
iget-object v5, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v5, v2, v4}, Lcom/flurry/android/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_1d
:cond_37
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
iput-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
move v1, v7
:goto_43
if-ge v1, v0, :cond_56
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/flurry/android/e;
invoke-direct {v3, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V
iget-object v4, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_43
:cond_56
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
iput-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
move v1, v7
:goto_62
if-ge v1, v0, :cond_86
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v3
new-array v4, v3, [Lcom/flurry/android/o;
move v5, v7
:goto_6f
if-ge v5, v3, :cond_7e
new-instance v6, Lcom/flurry/android/o;
invoke-direct {v6}, Lcom/flurry/android/o;-><init>()V
invoke-virtual {v6, p1}, Lcom/flurry/android/o;->a(Ljava/io/DataInput;)V
aput-object v6, v4, v5
add-int/lit8 v5, v5, 0x1
goto :goto_6f
:cond_7e
iget-object v3, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_62
:cond_86
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
move v1, v7
:goto_92
if-ge v1, v0, :cond_ac
invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B
move-result v2
new-instance v3, Lcom/flurry/android/c;
invoke-direct {v3}, Lcom/flurry/android/c;-><init>()V
invoke-virtual {v3, p1}, Lcom/flurry/android/c;->b(Ljava/io/DataInput;)V
iget-object v4, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v2
invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_92
:cond_ac
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
iput-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
move v1, v7
:goto_b8
if-ge v1, v0, :cond_8
invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S
move-result v2
invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J
move-result-wide v3
iget-object v5, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v2
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_b8
.end method
.method private a(Ljava/io/DataOutputStream;)V
.registers 12
const/4 v9, 0x1
const/4 v8, 0x0
invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-wide v1, p0, Lcom/flurry/android/s;->c:J
invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V
iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-virtual {v1}, Lcom/flurry/android/x;->a()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->size()I
move-result v2
invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/flurry/android/AdImage;
invoke-virtual {v1, p1}, Lcom/flurry/android/AdImage;->persist(Ljava/io/DataOutput;)V
goto :goto_1b
:cond_3e
iget-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_51
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_7e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v2, v0
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/flurry/android/e;
iget-object v2, v1, Lcom/flurry/android/e;->a:Ljava/lang/String;
invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
iget-byte v2, v1, Lcom/flurry/android/e;->b:B
invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V
iget-byte v1, v1, Lcom/flurry/android/e;->c:B
invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V
goto :goto_51
:cond_7e
iget-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_91
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_fa
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/flurry/android/o;
if-nez v1, :cond_f6
move v2, v8
:goto_af
invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
move v4, v8
:goto_b3
if-ge v4, v2, :cond_91
aget-object v5, v1, v4
iget-wide v6, v5, Lcom/flurry/android/o;->a:J
invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V
iget-wide v6, v5, Lcom/flurry/android/o;->b:J
invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V
iget-object v6, v5, Lcom/flurry/android/o;->d:Ljava/lang/String;
invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
iget-object v6, v5, Lcom/flurry/android/o;->c:Ljava/lang/String;
invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
iget-wide v6, v5, Lcom/flurry/android/o;->e:J
invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V
iget-object v6, v5, Lcom/flurry/android/o;->f:Ljava/lang/Long;
invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
move-result-wide v6
invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V
iget-object v6, v5, Lcom/flurry/android/o;->g:[B
array-length v6, v6
invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeByte(I)V
iget-object v6, v5, Lcom/flurry/android/o;->g:[B
invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V
iget-object v6, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;
if-eqz v6, :cond_f8
move v6, v9
:goto_e9
invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeBoolean(Z)V
if-eqz v6, :cond_f3
iget-object v5, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;
invoke-virtual {v5, p1}, Lcom/flurry/android/AdImage;->persist(Ljava/io/DataOutput;)V
:cond_f3
add-int/lit8 v4, v4, 0x1
goto :goto_b3
:cond_f6
array-length v2, v1
goto :goto_af
:cond_f8
move v6, v8
goto :goto_e9
:cond_fa
iget-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_10d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_130
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Byte;
invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B
move-result v2
invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/flurry/android/c;
invoke-virtual {v1, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataOutput;)V
goto :goto_10d
:cond_130
iget-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_143
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_16c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
move-object v0, p0
check-cast v0, Ljava/util/Map$Entry;
move-object v1, v0
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Short;
invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S
move-result v3
invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Long;
invoke-virtual {p0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
goto :goto_143
:cond_16c
return-void
.end method
.method private f()V
.registers 9
iget-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_14
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
goto :goto_a
:cond_14
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/flurry/android/o;
if-eqz v0, :cond_1e
array-length v3, v0
const/4 v1, 0x0
move v4, v1
:goto_2f
if-ge v4, v3, :cond_1e
aget-object v5, v0, v4
iget-object v1, v5, Lcom/flurry/android/o;->f:Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v6
iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v1, v6}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/flurry/android/AdImage;
iput-object v1, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_2f
:cond_4b
iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_55
:cond_55
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_94
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/android/e;
iget-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;
if-nez v1, :cond_75
iget-byte v1, v0, Lcom/flurry/android/e;->c:B
iget-object v3, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v1
invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/flurry/android/c;
iput-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;
:cond_75
iget-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;
if-nez v1, :cond_55
const-string v1, "FlurryAgent"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "No ad theme found for "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-byte v0, v0, Lcom/flurry/android/e;->c:B
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_55
:cond_94
return-void
.end method
.method private g()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, ".flurryappcircle."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/flurry/android/s;->b:Lcom/flurry/android/a;
iget-object v1, v1, Lcom/flurry/android/a;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
const/16 v2, 0x10
invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final a(J)Lcom/flurry/android/AdImage;
.registers 5
iget-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/flurry/android/AdImage;
return-object p0
.end method
.method final a(S)Lcom/flurry/android/AdImage;
.registers 4
iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_11
const/4 v0, 0x0
:goto_10
return-object v0
:cond_11
iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-virtual {v1, v0}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/flurry/android/AdImage;
move-object v0, p0
goto :goto_10
.end method
.method final a()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-virtual {v0}, Lcom/flurry/android/x;->b()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method final a(Ljava/util/Map;)V
.registers 6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/android/s;->c:J
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_e
iget-object v2, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v2, v3, v0}, Lcom/flurry/android/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_e
:cond_2e
return-void
.end method
.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.registers 7
const/4 v1, 0x1
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-static {v0, p1, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
:cond_b
if-eqz p2, :cond_15
iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-static {v0, p2, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
:cond_15
if-eqz p3, :cond_1f
iget-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
invoke-static {v0, p3, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;
:cond_1f
iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
const/4 v1, 0x0
invoke-static {v0, p4, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;
:cond_2c
return-void
.end method
.method final a(Ljava/lang/String;)[Lcom/flurry/android/o;
.registers 4
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/flurry/android/o;
if-nez v0, :cond_15
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
const-string v1, ""
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/flurry/android/o;
move-object v0, p0
:cond_15
return-object v0
.end method
.method final b(Ljava/lang/String;)Lcom/flurry/android/e;
.registers 4
iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/android/e;
if-nez v0, :cond_15
iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;
const-string v1, ""
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/flurry/android/e;
move-object v0, p0
:cond_15
return-object v0
.end method
.method final b()Z
.registers 2
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method final c()J
.registers 3
iget-wide v0, p0, Lcom/flurry/android/s;->c:J
return-wide v0
.end method
.method final d()V
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;
invoke-direct {p0}, Lcom/flurry/android/s;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_31
const/4 v2, 0x0
:try_start_12
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v4, Ljava/io/DataInputStream;
invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_1c
:try_end_1c
.catchall {:try_start_12 .. :try_end_1c} :catchall_4e
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1c} :catch_32
invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v2
const v3, 0xb5fb
if-ne v2, v3, :cond_29
invoke-direct {p0, v4}, Lcom/flurry/android/s;->a(Ljava/io/DataInputStream;)V
:try_end_28
.catchall {:try_start_1c .. :try_end_28} :catchall_54
.catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_28} :catch_5a
const/4 v0, 0x1
:cond_29
invoke-static {v4}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
:goto_2c
if-eqz v0, :cond_31
invoke-direct {p0}, Lcom/flurry/android/s;->f()V
:cond_31
return-void
:catch_32
move-exception v3
move-object v6, v3
move-object v3, v2
move-object v2, v6
:goto_36
:try_start_36
const-string v4, "FlurryAgent"
const-string v5, "Discarding cache"
invoke-static {v4, v5, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_4a
const-string v1, "FlurryAgent"
const-string v2, "Cannot delete cached ads"
invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
:try_end_4a
.catchall {:try_start_36 .. :try_end_4a} :catchall_57
:cond_4a
invoke-static {v3}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
goto :goto_2c
:catchall_4e
move-exception v0
move-object v1, v2
:goto_50
invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
throw v0
:catchall_54
move-exception v0
move-object v1, v4
goto :goto_50
:catchall_57
move-exception v0
move-object v1, v3
goto :goto_50
:catch_5a
move-exception v2
move-object v3, v4
goto :goto_36
.end method
.method final e()V
.registers 7
const/4 v4, 0x0
:try_start_1
iget-object v0, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;
invoke-direct {p0}, Lcom/flurry/android/s;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v2
if-nez v2, :cond_37
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_37
const-string v0, "FlurryAgent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unable to create persistent dir: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
:try_end_33
.catchall {:try_start_1 .. :try_end_33} :catchall_5b
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_4e
invoke-static {v4}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
:goto_36
return-void
:cond_37
:try_start_37
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v0, Ljava/io/DataOutputStream;
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_41
.catchall {:try_start_37 .. :try_end_41} :catchall_5b
.catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_41} :catch_4e
const v1, 0xb5fb
:try_start_44
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-direct {p0, v0}, Lcom/flurry/android/s;->a(Ljava/io/DataOutputStream;)V
:try_end_4a
.catchall {:try_start_44 .. :try_end_4a} :catchall_61
.catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4a} :catch_68
invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
goto :goto_36
:catch_4e
move-exception v0
move-object v1, v4
:try_start_50
:goto_50
const-string v2, "FlurryAgent"
const-string v3, ""
invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_57
.catchall {:try_start_50 .. :try_end_57} :catchall_66
invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
goto :goto_36
:catchall_5b
move-exception v0
move-object v1, v4
:goto_5d
invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
throw v0
:catchall_61
move-exception v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_5d
:catchall_66
move-exception v0
goto :goto_5d
:catch_68
move-exception v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_50
.end method