.class public Lcom/fsck/k9/Utility;
.super Ljava/lang/Object;
.source "Utility.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
const/4 v1, 0x0
array-length v0, p0
:goto_2
if-ge v1, v0, :cond_11
aget-object v2, p0, v1
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e
const/4 v2, 0x1
:goto_d
return v2
:cond_e
add-int/lit8 v1, v1, 0x1
goto :goto_2
:cond_11
const/4 v2, 0x0
goto :goto_d
.end method
.method public static base64Decode(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
new-instance v1, Lcom/fsck/k9/codec/binary/Base64;
invoke-direct {v1}, Lcom/fsck/k9/codec/binary/Base64;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/codec/binary/Base64;->decode([B)[B
move-result-object v0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
goto :goto_3
.end method
.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_4
move-object v1, p0
:goto_3
return-object v1
:cond_4
new-instance v1, Lcom/fsck/k9/codec/binary/Base64;
invoke-direct {v1}, Lcom/fsck/k9/codec/binary/Base64;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/codec/binary/Base64;->encode([B)[B
move-result-object v0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
goto :goto_3
.end method
.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
.registers 6
if-nez p0, :cond_4
const/4 v2, 0x0
:goto_3
return-object v2
:cond_4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_a
array-length v2, p0
if-ge v0, v2, :cond_21
aget-object v2, p0, v0
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
array-length v2, p0
const/4 v3, 0x1
sub-int/2addr v2, v3
if-ge v0, v2, :cond_1e
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_1e
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_21
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_3
.end method
.method public static domainFieldValid(Landroid/widget/EditText;)Z
.registers 4
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
if-eqz v1, :cond_35
invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}$"
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19
move v1, v2
:goto_18
return v1
:cond_19
const-string v1, "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_23
move v1, v2
goto :goto_18
:cond_23
const-string v1, "localhost"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_33
const-string v1, "localhost.localdomain"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
:cond_33
move v1, v2
goto :goto_18
:cond_35
const/4 v1, 0x0
goto :goto_18
.end method
.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/16 v10, 0x30
const/16 v9, 0x9
const-string v8, "UTF-8"
:try_start_6
const-string v8, "UTF-8"
invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
const/4 v6, 0x0
const/4 v4, 0x0
array-length v2, v0
:goto_f
if-ge v4, v2, :cond_4a
aget-byte v1, v0, v4
const/16 v8, 0x25
if-ne v1, v8, :cond_38
add-int/lit8 v8, v4, 0x1
aget-byte v8, v0, v8
sub-int v3, v8, v10
add-int/lit8 v8, v4, 0x2
aget-byte v8, v0, v8
sub-int v5, v8, v10
if-le v3, v9, :cond_27
add-int/lit8 v3, v3, -0x7
:cond_27
if-le v5, v9, :cond_2b
add-int/lit8 v5, v5, -0x7
:cond_2b
shl-int/lit8 v8, v3, 0x4
or-int/2addr v8, v5
int-to-byte v8, v8
aput-byte v8, v0, v6
add-int/lit8 v4, v4, 0x2
:goto_33
add-int/lit8 v6, v6, 0x1
add-int/lit8 v4, v4, 0x1
goto :goto_f
:cond_38
const/16 v8, 0x2b
if-ne v1, v8, :cond_45
const/16 v8, 0x20
aput-byte v8, v0, v6
goto :goto_33
:catch_41
move-exception v8
move-object v7, v8
const/4 v8, 0x0
:goto_44
return-object v8
:cond_45
aget-byte v8, v0, v4
aput-byte v8, v0, v6
goto :goto_33
:cond_4a
new-instance v8, Ljava/lang/String;
const/4 v9, 0x0
const-string v10, "UTF-8"
invoke-direct {v8, v0, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_52
.catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_52} :catch_41
goto :goto_44
.end method
.method public static isDateToday(Ljava/util/Date;)Z
.registers 8
const-wide/32 v5, 0x3dcc500
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v1
sub-long/2addr v1, v5
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v1, v1, v3
if-gtz v1, :cond_22
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v1
add-long/2addr v1, v5
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v1, v1, v3
if-gez v1, :cond_24
:cond_22
const/4 v1, 0x0
:goto_23
return v1
:cond_24
const/4 v1, 0x1
goto :goto_23
.end method
.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v2, "\""
if-nez p0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
const-string v0, "^\".*\"$"
invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:cond_28
move-object v0, p0
goto :goto_5
.end method
.method public static final readInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const/16 v4, 0x200
new-array v0, v4, [C
:goto_e
invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I
move-result v1
const/4 v4, -0x1
if-eq v1, v4, :cond_1a
const/4 v4, 0x0
invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
goto :goto_e
:cond_1a
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public static requiredFieldValid(Landroid/text/Editable;)Z
.registers 2
if-eqz p0, :cond_a
invoke-interface {p0}, Landroid/text/Editable;->length()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static requiredFieldValid(Landroid/widget/TextView;)Z
.registers 2
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public static setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
.registers 2
return-void
.end method