.class public Lcom/pinguo/Camera360Lib/cache/disc/naming/HashCodeFileNameGenerator;
.super Ljava/lang/Object;
.source "HashCodeFileNameGenerator.java"
.implements Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public generate(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/cache/disc/naming/HashCodeFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public generate(Ljava/lang/String;Z)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_b
:goto_a
return-object v0
:cond_b
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string/jumbo v2, "s_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method