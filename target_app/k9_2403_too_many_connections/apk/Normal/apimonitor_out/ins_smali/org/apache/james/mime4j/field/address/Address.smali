.class public abstract Lorg/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final addMailboxesTo(Ljava/util/ArrayList;)V
.registers 2
invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/ArrayList;)V
return-void
.end method
.method protected abstract doAddMailboxesTo(Ljava/util/ArrayList;)V
.end method