.class public Lcom/googlecode/mp4parser/boxes/mp4/a/e;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "DecoderConfigDescriptor.java"
.field private static k:Ljava/util/logging/Logger;
.field  a:I
.field  b:I
.field  c:I
.field  d:I
.field  e:J
.field  f:J
.field  g:Lcom/googlecode/mp4parser/boxes/mp4/a/f;
.field  h:Lcom/googlecode/mp4parser/boxes/mp4/a/a;
.field  i:Ljava/util/List;
.field  j:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->k:Ljava/util/logging/Logger;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i:Ljava/util/List;
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 10
const/4 v2, 0x0
const/4 v7, 0x2
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->a:I
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
ushr-int/lit8 v1, v0, 0x2
iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->b:I
shr-int/lit8 v0, v0, 0x1
and-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->c:I
invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d:I
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->e:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->f:J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-le v0, v7, :cond_90
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->a:I
invoke-static {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;
move-result-object v1
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v3
sub-int/2addr v3, v0
sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->k:Ljava/util/logging/Logger;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " - DecoderConfigDescr1 read: "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ", size: "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
if-eqz v1, :cond_e4
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_62
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
if-eqz v1, :cond_7f
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I
move-result v0
if-ge v3, v0, :cond_7f
sub-int/2addr v0, v3
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j:[B
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
:cond_7f
instance-of v0, v1, Lcom/googlecode/mp4parser/boxes/mp4/a/f;
if-eqz v0, :cond_88
move-object v0, v1
check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->g:Lcom/googlecode/mp4parser/boxes/mp4/a/f;
:cond_88
instance-of v0, v1, Lcom/googlecode/mp4parser/boxes/mp4/a/a;
if-eqz v0, :cond_90
check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/a/a;
iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->h:Lcom/googlecode/mp4parser/boxes/mp4/a/a;
:cond_90
:goto_90
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-le v0, v7, :cond_e9
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
int-to-long v3, v0
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->a:I
invoke-static {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;
move-result-object v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v1
int-to-long v5, v1
sub-long v3, v5, v3
sget-object v5, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->k:Ljava/util/logging/Logger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v6, " - DecoderConfigDescr2 read: "
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ", size: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-eqz v0, :cond_e7
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
:goto_cd
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
instance-of v1, v0, Lcom/googlecode/mp4parser/boxes/mp4/a/m;
if-eqz v1, :cond_90
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i:Ljava/util/List;
check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/a/m;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_90
:cond_e4
move-object v0, v2
goto/16 :goto_62
:cond_e7
move-object v1, v2
goto :goto_cd
:cond_e9
return-void
.end method
.method public final d()Lcom/googlecode/mp4parser/boxes/mp4/a/f;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->g:Lcom/googlecode/mp4parser/boxes/mp4/a/f;
return-object v0
.end method
.method public final e()Lcom/googlecode/mp4parser/boxes/mp4/a/a;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->h:Lcom/googlecode/mp4parser/boxes/mp4/a/a;
return-object v0
.end method
.method public final f()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i:Ljava/util/List;
return-object v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->a:I
return v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->b:I
return v0
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->c:I
return v0
.end method
.method public final j()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d:I
return v0
.end method
.method public final k()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->e:J
return-wide v0
.end method
.method public final l()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->f:J
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
const/4 v4, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "DecoderConfigDescriptor"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "{objectTypeIndication="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->a:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", streamType="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->b:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", upStream="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->c:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", bufferSizeDB="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, ", maxBitRate="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->e:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ", avgBitRate="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->f:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ", decoderSpecificInfo="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->g:Lcom/googlecode/mp4parser/boxes/mp4/a/f;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, ", audioSpecificInfo="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->h:Lcom/googlecode/mp4parser/boxes/mp4/a/a;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, ", configDescriptorDeadBytes="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j:[B
if-eqz v0, :cond_8f
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j:[B
:goto_6f
invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ", profileLevelIndicationDescriptors="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i:Ljava/util/List;
if-nez v0, :cond_92
const-string v0, "null"
:goto_82
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v0, 0x7d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_8f
new-array v0, v4, [B
goto :goto_6f
:cond_92
const/4 v0, 0x1
new-array v0, v0, [Ljava/util/List;
iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i:Ljava/util/List;
aput-object v3, v0, v4
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_82
.end method