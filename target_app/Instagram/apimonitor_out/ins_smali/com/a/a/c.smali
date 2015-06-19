.class public final Lcom/a/a/c;
.super Ljava/io/DataInputStream;
.source "HybiParser.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public final a(I)[B
.registers 3
new-array v0, p1, [B
invoke-virtual {p0, v0}, Lcom/a/a/c;->readFully([B)V
return-object v0
.end method