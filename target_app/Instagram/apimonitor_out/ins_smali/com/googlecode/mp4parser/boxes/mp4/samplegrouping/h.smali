.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "UnknownEntry.java"
.field private a:Ljava/nio/ByteBuffer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V
return-void
.end method
.method public final a()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
move-result-object v0
check-cast v0, Ljava/nio/ByteBuffer;
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
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
check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
if-eqz v2, :cond_4
goto :goto_23
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final toString()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
new-array v1, v1, [B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "UnknownEntry{content="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method