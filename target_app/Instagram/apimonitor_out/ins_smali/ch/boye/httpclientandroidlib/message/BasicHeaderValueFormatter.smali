.class public Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"
.implements Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter; = null
.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"
.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final formatElements([Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
.registers 4
if-nez p2, :cond_4
sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatHeaderElement(Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
.registers 4
if-nez p2, :cond_4
sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatNameValuePair(Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
.registers 4
if-nez p2, :cond_4
sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatParameters([Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
.registers 4
if-nez p2, :cond_4
sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V
.registers 8
const/16 v3, 0x22
const/4 v1, 0x0
if-nez p3, :cond_19
move v0, v1
:goto_6
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_19
if-nez p3, :cond_19
invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isSeparator(C)Z
move-result p3
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_19
if-eqz p3, :cond_1e
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
:goto_1e
:cond_1e
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-ge v1, v0, :cond_39
invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isUnsafe(C)Z
move-result v2
if-eqz v2, :cond_33
const/16 v2, 0x5c
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
:cond_33
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_39
if-eqz p3, :cond_3e
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
:cond_3e
return-void
.end method
.method protected estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_6
array-length v1, p1
if-gtz v1, :cond_8
:cond_6
move v1, v0
:cond_7
return v1
:cond_8
array-length v1, p1
add-int/lit8 v1, v1, -0x1
mul-int/lit8 v1, v1, 0x2
:goto_d
array-length v2, p1
if-ge v0, v2, :cond_7
aget-object v2, p1, v0
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method
.method protected estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_5
move v0, v1
:cond_4
return v0
:cond_5
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1a
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x3
add-int/2addr v0, v2
:cond_1a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I
move-result v2
if-lez v2, :cond_4
:goto_20
if-ge v1, v2, :cond_4
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v3
invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
move-result v3
add-int/lit8 v3, v3, 0x2
add-int/2addr v0, v3
add-int/lit8 v1, v1, 0x1
goto :goto_20
.end method
.method protected estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:cond_3
:goto_3
return v0
:cond_4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, 0x3
add-int/2addr v0, v1
goto :goto_3
.end method
.method protected estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_6
array-length v1, p1
if-gtz v1, :cond_8
:cond_6
move v1, v0
:cond_7
return v1
:cond_8
array-length v1, p1
add-int/lit8 v1, v1, -0x1
mul-int/lit8 v1, v1, 0x2
:goto_d
array-length v2, p1
if-ge v0, v2, :cond_7
aget-object v2, p1, v0
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method
.method public formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 6
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header element array must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I
move-result v0
if-nez p1, :cond_28
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_15
const/4 v0, 0x0
:goto_16
array-length v1, p2
if-ge v0, v1, :cond_2c
if-lez v0, :cond_20
const-string v1, ", "
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_20
aget-object v1, p2, v0
invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_28
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
goto :goto_15
:cond_2c
return-object p1
.end method
.method public formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 7
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header element must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I
move-result v0
if-nez p1, :cond_42
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_15
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
const/16 v1, 0x3d
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V
:cond_2a
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I
move-result v1
if-lez v1, :cond_46
const/4 v0, 0x0
:goto_31
if-ge v0, v1, :cond_46
const-string v2, "; "
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v2
invoke-virtual {p0, p1, v2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_31
:cond_42
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
goto :goto_15
:cond_46
return-object p1
.end method
.method public formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 6
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "NameValuePair must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
move-result v0
if-nez p1, :cond_2b
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_15
invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
const/16 v1, 0x3d
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V
:cond_2a
return-object p1
:cond_2b
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
goto :goto_15
.end method
.method public formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 6
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameters must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I
move-result v0
if-nez p1, :cond_28
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_15
const/4 v0, 0x0
:goto_16
array-length v1, p2
if-ge v0, v1, :cond_2c
if-lez v0, :cond_20
const-string v1, "; "
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_20
aget-object v1, p2, v0
invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_28
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
goto :goto_15
:cond_2c
return-object p1
.end method
.method protected isSeparator(C)Z
.registers 3
const-string v0, " ;,:@()<>\\\"/[]?={}\t"
invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected isUnsafe(C)Z
.registers 3
const-string v0, "\"\\"
invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method