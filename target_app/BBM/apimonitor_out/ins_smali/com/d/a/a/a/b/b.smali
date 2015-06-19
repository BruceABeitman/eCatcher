.class public final Lcom/d/a/a/a/b/b;
.super Ljava/lang/Object;
.source "HashCodeFileNameGenerator.java"
.implements Lcom/d/a/a/a/b/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method