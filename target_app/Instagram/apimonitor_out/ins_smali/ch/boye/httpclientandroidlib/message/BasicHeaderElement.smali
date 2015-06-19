.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"
.implements Lch/boye/httpclientandroidlib/HeaderElement;
.implements Ljava/lang/Cloneable;
.field private final name:Ljava/lang/String;
.field private final parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
.field private final value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
if-eqz p3, :cond_16
iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
:goto_15
return-void
:cond_16
const/4 v0, 0x0
new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;
iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
goto :goto_15
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lch/boye/httpclientandroidlib/HeaderElement;
if-eqz v2, :cond_2b
check-cast p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_29
move v0, v1
goto :goto_4
:cond_2b
move v0, v1
goto :goto_4
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
return-object v0
.end method
.method public getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
aget-object v0, v0, p1
return-object v0
.end method
.method public getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v2, 0x0
const/4 v0, 0x0
:goto_c
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
array-length v1, v1
if-ge v0, v1, :cond_24
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
aget-object v1, v1, v0
invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_21
move-object v0, v1
:goto_20
return-object v0
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_24
move-object v0, v2
goto :goto_20
.end method
.method public getParameterCount()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
array-length v0, v0
return v0
.end method
.method public getParameters()[Lch/boye/httpclientandroidlib/NameValuePair;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/NameValuePair;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;
check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
const/4 v0, 0x0
:goto_f
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
array-length v2, v2
if-ge v0, v2, :cond_1f
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
aget-object v2, v2, v0
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v1
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1f
return v1
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v0, 0x40
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
if-eqz v0, :cond_1a
const-string v0, "="
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_1a
const/4 v0, 0x0
:goto_1b
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
array-length v2, v2
if-ge v0, v2, :cond_2f
const-string v2, "; "
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_2f
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method