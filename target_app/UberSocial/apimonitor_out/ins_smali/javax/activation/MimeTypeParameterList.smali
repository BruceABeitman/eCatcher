.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""
.field private parameters:Ljava/util/Hashtable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V
return-void
.end method
.method private static isTokenChar(C)Z
.registers 2
const/16 v0, 0x20
if-le p0, v0, :cond_12
const/16 v0, 0x7f
if-ge p0, v0, :cond_12
const-string v0, "()<>@,;:/[]?=\\\""
invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private static quote(Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/16 v9, 0x5c
const/16 v8, 0x22
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
move v2, v1
move v0, v1
:goto_b
if-ge v2, v3, :cond_f
if-eqz v0, :cond_2b
:cond_f
if-eqz v0, :cond_2a
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
int-to-double v4, v3
const-wide/high16 v6, 0x3ff8
mul-double/2addr v4, v6
double-to-int v2, v4
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V
invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_21
if-lt v1, v3, :cond_3b
invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
:cond_2a
return-object p0
:cond_2b
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z
move-result v0
if-eqz v0, :cond_39
move v0, v1
:goto_36
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_39
const/4 v0, 0x1
goto :goto_36
:cond_3b
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v9, :cond_43
if-ne v2, v8, :cond_46
:cond_43
invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_46
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_21
.end method
.method private static skipWhiteSpace(Ljava/lang/String;I)I
.registers 4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:goto_4
if-ge p1, v0, :cond_10
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v1
if-nez v1, :cond_11
:cond_10
return p1
:cond_11
add-int/lit8 p1, p1, 0x1
goto :goto_4
.end method
.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V
move v2, v1
move v0, v1
:goto_f
if-lt v2, v3, :cond_16
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_16
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v5
if-nez v0, :cond_26
const/16 v6, 0x5c
if-eq v5, v6, :cond_26
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_23
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_26
if-eqz v0, :cond_2d
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
goto :goto_23
:cond_2d
const/4 v0, 0x1
goto :goto_23
.end method
.method public get(Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getNames()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z
move-result v0
return v0
.end method
.method protected parse(Ljava/lang/String;)V
.registers 10
const/16 v6, 0x22
if-nez p1, :cond_5
:cond_4
return-void
:cond_5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_4
const/4 v0, 0x0
invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I
move-result v0
:goto_10
if-ge v0, v3, :cond_1a
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v2, 0x3b
if-eq v1, v2, :cond_24
:cond_1a
if-ge v0, v3, :cond_4
new-instance v0, Ljavax/activation/MimeTypeParseException;
const-string v1, "More characters encountered in input than expected."
invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
add-int/lit8 v0, v0, 0x1
invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I
move-result v1
if-ge v1, v3, :cond_4
move v0, v1
:goto_2d
if-ge v0, v3, :cond_39
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z
move-result v2
if-nez v2, :cond_59
:cond_39
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I
move-result v0
if-ge v0, v3, :cond_51
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v2, 0x3d
if-eq v1, v2, :cond_5c
:cond_51
new-instance v0, Ljavax/activation/MimeTypeParseException;
const-string v1, "Couldn\'t find the \'=\' that separates a parameter name from its value."
invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_59
add-int/lit8 v0, v0, 0x1
goto :goto_2d
:cond_5c
add-int/lit8 v0, v0, 0x1
invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I
move-result v0
if-lt v0, v3, :cond_79
new-instance v0, Ljavax/activation/MimeTypeParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t find a value for parameter named "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_79
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-ne v1, v6, :cond_bf
add-int/lit8 v2, v0, 0x1
if-lt v2, v3, :cond_8b
new-instance v0, Ljavax/activation/MimeTypeParseException;
const-string v1, "Encountered unterminated quoted parameter value."
invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8b
move v0, v2
:goto_8c
if-lt v0, v3, :cond_98
:cond_8e
if-eq v1, v6, :cond_a7
new-instance v0, Ljavax/activation/MimeTypeParseException;
const-string v1, "Encountered unterminated quoted parameter value."
invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_98
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-eq v1, v6, :cond_8e
const/16 v5, 0x5c
if-ne v1, v5, :cond_a4
add-int/lit8 v0, v0, 0x1
:cond_a4
add-int/lit8 v0, v0, 0x1
goto :goto_8c
:cond_a7
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v0, 0x1
move-object v7, v1
move v1, v0
move-object v0, v7
:goto_b4
iget-object v2, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I
move-result v0
goto/16 :goto_10
:cond_bf
invoke-static {v1}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z
move-result v1
if-eqz v1, :cond_da
move v1, v0
:goto_c6
if-ge v1, v3, :cond_d2
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z
move-result v2
if-nez v2, :cond_d7
:cond_d2
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_b4
:cond_d7
add-int/lit8 v1, v1, 0x1
goto :goto_c6
:cond_da
new-instance v1, Ljavax/activation/MimeTypeParseException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected character encountered at index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public remove(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public set(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
mul-int/lit8 v0, v0, 0x10
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V
iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_21
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_21
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v3, "; "
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/16 v3, 0x3d
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;
invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_16
.end method