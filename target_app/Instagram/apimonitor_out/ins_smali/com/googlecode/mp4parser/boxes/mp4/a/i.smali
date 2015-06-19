.class public Lcom/googlecode/mp4parser/boxes/mp4/a/i;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "ExtensionDescriptor.java"
.field private static b:Ljava/util/logging/Logger;
.field  a:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->b:Ljava/util/logging/Logger;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->a()I
move-result v0
if-lez v0, :cond_11
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->U:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->a:[B
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->a:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
:cond_11
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "ExtensionDescriptor"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "{bytes="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->a:[B
if-nez v0, :cond_23
const-string v0, "null"
:goto_16
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v0, 0x7d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_23
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/i;->a:[B
invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method