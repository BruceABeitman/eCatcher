.class public Lcom/googlecode/mp4parser/boxes/mp4/a/o;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "UnknownDescriptor.java"
.field private static b:Ljava/util/logging/Logger;
.field private a:Ljava/nio/ByteBuffer;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->b:Ljava/util/logging/Logger;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->b()I
move-result v1
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
move-result-object v0
check-cast v0, Ljava/nio/ByteBuffer;
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->a:Ljava/nio/ByteBuffer;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "UnknownDescriptor"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{tag="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->T:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", sizeOfInstance="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->U:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", data="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/o;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method