.class public Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.super Ljava/util/LinkedList;
.source "Generator.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V
return-void
.end method
.method public register(Ljava/lang/Object;)I
.registers 4
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->indexOf(Ljava/lang/Object;)I
move-result v0
if-gez v0, :cond_f
invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:cond_f
return v0
.end method