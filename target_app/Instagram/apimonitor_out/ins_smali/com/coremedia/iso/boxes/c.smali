.class public final Lcom/coremedia/iso/boxes/c;
.super Ljava/lang/Object;
.source "EditListBox.java"
.field  a:Lcom/coremedia/iso/boxes/EditListBox;
.field private b:J
.field private c:J
.field private d:D
.method public constructor <init>(Lcom/coremedia/iso/boxes/EditListBox;Ljava/nio/ByteBuffer;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/EditListBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_1f
invoke-static {p2}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->b:J
invoke-static {p2}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->c:J
invoke-static {p2}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->d:D
:goto_1c
iput-object p1, p0, Lcom/coremedia/iso/boxes/c;->a:Lcom/coremedia/iso/boxes/EditListBox;
return-void
:cond_1f
invoke-static {p2}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->b:J
invoke-static {p2}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->c:J
invoke-static {p2}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/c;->d:D
goto :goto_1c
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/c;->a:Lcom/coremedia/iso/boxes/EditListBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/EditListBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_19
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->b:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->c:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_13
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->d:D
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V
return-void
:cond_19
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->b:J
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->c:J
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
goto :goto_13
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/coremedia/iso/boxes/c;
iget-wide v2, p0, Lcom/coremedia/iso/boxes/c;->c:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/c;->c:J
cmp-long v2, v2, v4
if-eqz v2, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-wide v2, p0, Lcom/coremedia/iso/boxes/c;->b:J
iget-wide v4, p1, Lcom/coremedia/iso/boxes/c;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 7
const/16 v5, 0x20
iget-wide v0, p0, Lcom/coremedia/iso/boxes/c;->b:J
iget-wide v2, p0, Lcom/coremedia/iso/boxes/c;->b:J
ushr-long/2addr v2, v5
xor-long/2addr v0, v2
long-to-int v0, v0
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/coremedia/iso/boxes/c;->c:J
iget-wide v3, p0, Lcom/coremedia/iso/boxes/c;->c:J
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Entry{segmentDuration="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/c;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mediaTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/c;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mediaRate="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/coremedia/iso/boxes/c;->d:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method