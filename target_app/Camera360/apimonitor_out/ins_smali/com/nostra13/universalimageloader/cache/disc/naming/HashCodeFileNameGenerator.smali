.class public Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;
.super Ljava/lang/Object;
.source "HashCodeFileNameGenerator.java"
.implements Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public generate(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method