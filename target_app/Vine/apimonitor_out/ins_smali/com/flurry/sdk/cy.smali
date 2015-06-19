.class public final Lcom/flurry/sdk/cy;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:Ljava/lang/String;
.field private c:Ljava/util/Map;
.field private d:J
.field private e:Z
.field private f:Z
.field private g:J
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JZ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/flurry/sdk/cy;->a:I
iput-object p2, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
iput-wide p4, p0, Lcom/flurry/sdk/cy;->d:J
iput-boolean p6, p0, Lcom/flurry/sdk/cy;->e:Z
iget-boolean v0, p0, Lcom/flurry/sdk/cy;->e:Z
if-eqz v0, :cond_15
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z
:goto_14
return-void
:cond_15
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z
goto :goto_14
.end method
.method public a(J)V
.registers 8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z
iget-wide v0, p0, Lcom/flurry/sdk/cy;->d:J
sub-long v0, p1, v0
iput-wide v0, p0, Lcom/flurry/sdk/cy;->g:J
const/4 v0, 0x3
const-string v1, "FlurryAgent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ended event \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/flurry/sdk/cy;->d:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") after "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/flurry/sdk/cy;->g:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ms"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/util/Map;)V
.registers 6
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_f
:cond_c
iput-object p1, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
:cond_e
return-void
:cond_f
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_17
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v2, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_46
iget-object v2, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_17
:cond_46
iget-object v2, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_17
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/cy;->e:Z
return v0
.end method
.method public a(Ljava/lang/String;)Z
.registers 6
iget-boolean v0, p0, Lcom/flurry/sdk/cy;->e:Z
if-eqz v0, :cond_16
iget-wide v0, p0, Lcom/flurry/sdk/cy;->g:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_16
iget-object v0, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public b(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z
return v0
.end method
.method public c()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
return-object v0
.end method
.method public d()I
.registers 2
invoke-virtual {p0}, Lcom/flurry/sdk/cy;->e()[B
move-result-object v0
array-length v0, v0
return v0
.end method
.method public e()[B
.registers 6
const/4 v0, 0x0
:try_start_1
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/io/DataOutputStream;
invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_75
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_81
iget v0, p0, Lcom/flurry/sdk/cy;->a:I
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v0, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
if-nez v0, :cond_32
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
:cond_1d
iget-wide v0, p0, Lcom/flurry/sdk/cy;->d:J
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
iget-wide v0, p0, Lcom/flurry/sdk/cy;->g:J
invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_2d
.catchall {:try_start_b .. :try_end_2d} :catchall_7c
.catch Ljava/io/IOException; {:try_start_b .. :try_end_2d} :catch_6c
move-result-object v0
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
:goto_31
return-object v0
:cond_32
:try_start_32
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_45
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
:try_end_6b
.catchall {:try_start_32 .. :try_end_6b} :catchall_7c
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_6b} :catch_6c
goto :goto_45
:catch_6c
move-exception v0
move-object v1, v2
:goto_6e
const/4 v0, 0x0
:try_start_6f
new-array v0, v0, [B
:try_end_71
.catchall {:try_start_6f .. :try_end_71} :catchall_7e
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
goto :goto_31
:catchall_75
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_78
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:catchall_7c
move-exception v0
goto :goto_78
:catchall_7e
move-exception v0
move-object v2, v1
goto :goto_78
:catch_81
move-exception v1
move-object v1, v0
goto :goto_6e
.end method