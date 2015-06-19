.class public Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"
.implements Lch/boye/httpclientandroidlib/NameValuePair;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.field private static final serialVersionUID:J = -0x5957a9ac336aca08L
.field private final name:Ljava/lang/String;
.field private final value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
return-void
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
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lch/boye/httpclientandroidlib/NameValuePair;
if-eqz v2, :cond_21
check-cast p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_1f
move v0, v1
goto :goto_4
:cond_21
move v0, v1
goto :goto_4
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 3
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
if-nez v0, :cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/2addr v0, v1
new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v0, "="
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method