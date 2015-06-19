.class public Lcom/flurry/sdk/de;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:Ljava/lang/String;
.field  a:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/de;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/de;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/flurry/sdk/df;)V
.registers 10
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
:try_start_5
new-instance v6, Ljava/io/ByteArrayOutputStream;
invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/io/DataOutputStream;
invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_f
.catchall {:try_start_5 .. :try_end_f} :catchall_1d5
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1d9
const/4 v0, 0x3
:try_start_10
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->b()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->c()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->d()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->e()Ljava/util/Map;
move-result-object v0
if-nez v0, :cond_e0
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
:cond_39
invoke-virtual {p1}, Lcom/flurry/sdk/df;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->h()I
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->i()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;
move-result-object v0
if-nez v0, :cond_123
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
:goto_5f
invoke-virtual {p1}, Lcom/flurry/sdk/df;->k()I
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
const/4 v0, -0x1
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
const/4 v0, -0x1
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->l()B
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->m()Ljava/lang/Long;
move-result-object v0
if-nez v0, :cond_154
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
:goto_7f
invoke-virtual {p1}, Lcom/flurry/sdk/df;->n()Ljava/util/Map;
move-result-object v0
if-nez v0, :cond_165
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
:cond_89
invoke-virtual {p1}, Lcom/flurry/sdk/df;->o()Ljava/util/List;
move-result-object v0
if-nez v0, :cond_195
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
:cond_93
invoke-virtual {p1}, Lcom/flurry/sdk/df;->p()Z
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->r()Ljava/util/List;
move-result-object v7
if-eqz v7, :cond_1df
move v4, v3
move v5, v3
move v1, v3
:goto_a3
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v0
if-ge v4, v0, :cond_1dc
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cx;
invoke-virtual {v0}, Lcom/flurry/sdk/cx;->a()I
move-result v0
add-int/2addr v5, v0
const v0, 0x27100
if-le v5, v0, :cond_1b4
const/4 v0, 0x5
sget-object v4, Lcom/flurry/sdk/de;->b:Ljava/lang/String;
const-string v5, "Error Log size exceeded. No more event details logged."
invoke-static {v0, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
move v4, v1
:goto_c2
invoke-virtual {p1}, Lcom/flurry/sdk/df;->q()I
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
move v1, v3
:goto_cd
if-ge v1, v4, :cond_1bb
invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cx;
invoke-virtual {v0}, Lcom/flurry/sdk/cx;->b()[B
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_cd
:cond_e0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_ef
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
:try_end_111
.catchall {:try_start_10 .. :try_end_111} :catchall_152
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_111} :catch_112
goto :goto_ef
:catch_112
move-exception v0
move-object v1, v2
:goto_114
const/4 v2, 0x6
:try_start_115
sget-object v3, Lcom/flurry/sdk/de;->b:Ljava/lang/String;
const-string v4, ""
invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
throw v0
:catchall_11d
:try_end_11d
.catchall {:try_start_115 .. :try_end_11d} :catchall_11d
move-exception v0
move-object v2, v1
:goto_11f
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:cond_123
const/4 v0, 0x1
:try_start_124
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;
move-result-object v0
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/de;->a(D)D
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;
move-result-object v0
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/de;->a(D)D
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;
move-result-object v0
invoke-static {v0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
goto/16 :goto_5f
:catchall_152
move-exception v0
goto :goto_11f
:cond_154
const/4 v0, 0x1
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
invoke-virtual {p1}, Lcom/flurry/sdk/df;->m()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
goto/16 :goto_7f
:cond_165
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_174
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_89
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cu$a;
iget v0, v0, Lcom/flurry/sdk/cu$a;->a:I
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
goto :goto_174
:cond_195
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a0
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_93
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cy;
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->e()[B
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
goto :goto_1a0
:cond_1b4
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v4, 0x1
move v4, v0
goto/16 :goto_a3
:cond_1bb
const/4 v0, -0x1
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/de;->a:[B
:try_end_1d1
.catchall {:try_start_124 .. :try_end_1d1} :catchall_152
.catch Ljava/io/IOException; {:try_start_124 .. :try_end_1d1} :catch_112
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
return-void
:catchall_1d5
move-exception v0
move-object v2, v1
goto/16 :goto_11f
:catch_1d9
move-exception v0
goto/16 :goto_114
:cond_1dc
move v4, v1
goto/16 :goto_c2
:cond_1df
move v4, v3
goto/16 :goto_c2
.end method
.method public constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/flurry/sdk/de;->a:[B
return-void
.end method
.method  a(D)D
.registers 7
const-wide v2, 0x408f400000000000L
mul-double v0, p1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-double v0, v0
div-double/2addr v0, v2
return-wide v0
.end method
.method public a()[B
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/de;->a:[B
return-object v0
.end method