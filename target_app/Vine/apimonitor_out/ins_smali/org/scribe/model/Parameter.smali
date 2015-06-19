.class public Lorg/scribe/model/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"
.implements Ljava/lang/Comparable;
.field private static final UTF:Ljava/lang/String; = "UTF8"
.field private final key:Ljava/lang/String;
.field private final value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
iput-object p2, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
return-void
.end method
.method public asUrlEncodedPair()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
invoke-static {v0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
invoke-static {v1}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lorg/scribe/model/Parameter;
invoke-virtual {p0, p1}, Lorg/scribe/model/Parameter;->compareTo(Lorg/scribe/model/Parameter;)I
move-result v0
return v0
.end method
.method public compareTo(Lorg/scribe/model/Parameter;)I
.registers 5
iget-object v1, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
iget-object v2, p1, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_b
:goto_a
return v0
:cond_b
iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
iget-object v2, p1, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_a
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v2
:cond_5
if-ne p1, p0, :cond_9
move v2, v1
goto :goto_4
:cond_9
instance-of v3, p1, Lorg/scribe/model/Parameter;
if-eqz v3, :cond_4
move-object v0, p1
check-cast v0, Lorg/scribe/model/Parameter;
iget-object v3, v0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
iget-object v4, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_26
iget-object v3, v0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
iget-object v4, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_26
:goto_24
move v2, v1
goto :goto_4
:cond_26
move v1, v2
goto :goto_24
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method