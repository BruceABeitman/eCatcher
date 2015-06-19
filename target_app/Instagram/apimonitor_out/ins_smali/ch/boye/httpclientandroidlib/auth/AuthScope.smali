.class public Lch/boye/httpclientandroidlib/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"
.field public static final ANY:Lch/boye/httpclientandroidlib/auth/AuthScope; = null
.field public static final ANY_HOST:Ljava/lang/String; = null
.field public static final ANY_PORT:I = -0x1
.field public static final ANY_REALM:Ljava/lang/String;
.field public static final ANY_SCHEME:Ljava/lang/String;
.field private final host:Ljava/lang/String;
.field private final port:I
.field private final realm:Ljava/lang/String;
.field private final scheme:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v0, 0x0
sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;
sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthScope;
sget-object v1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;
const/4 v2, -0x1
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
sget-object v4, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY:Lch/boye/httpclientandroidlib/auth/AuthScope;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/auth/AuthScope;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Scope may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getHost()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getPort()I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getRealm()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getScheme()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 5
sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
sget-object v1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
invoke-direct {p0, p1, p2, v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 5
sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
invoke-direct {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_1b
sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;
:goto_7
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
if-gez p2, :cond_c
const/4 p2, -0x1
:cond_c
iput p2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-nez p3, :cond_12
sget-object p3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
:cond_12
iput-object p3, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
if-nez p4, :cond_22
sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
:goto_18
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
return-void
:cond_1b
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_22
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
goto :goto_18
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-ne p1, p0, :cond_9
move v0, v1
goto :goto_4
:cond_9
instance-of v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;
if-nez v2, :cond_12
invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
:cond_12
check-cast p1, Lch/boye/httpclientandroidlib/auth/AuthScope;
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
iget v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
iget v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-ne v2, v3, :cond_4
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getHost()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
return-object v0
.end method
.method public getPort()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
return v0
.end method
.method public getRealm()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
return-object v0
.end method
.method public getScheme()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 3
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public match(Lch/boye/httpclientandroidlib/auth/AuthScope;)I
.registers 6
const/4 v1, -0x1
const/4 v0, 0x0
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2e
const/4 v0, 0x1
:cond_d
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
add-int/lit8 v0, v0, 0x2
:cond_19
iget v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
iget v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-ne v2, v3, :cond_4a
add-int/lit8 v0, v0, 0x4
:cond_21
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_54
add-int/lit8 v0, v0, 0x8
:goto_2d
:cond_2d
return v0
:cond_2e
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
if-eq v2, v3, :cond_d
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;
if-eq v2, v3, :cond_d
move v0, v1
goto :goto_2d
:cond_3c
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
if-eq v2, v3, :cond_19
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
if-eq v2, v3, :cond_19
move v0, v1
goto :goto_2d
:cond_4a
iget v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-eq v2, v1, :cond_21
iget v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-eq v2, v1, :cond_21
move v0, v1
goto :goto_2d
:cond_54
iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;
if-eq v2, v3, :cond_2d
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_2d
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
if-eqz v1, :cond_1b
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1b
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
if-eqz v1, :cond_4b
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2a
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
if-eqz v1, :cond_46
const/16 v1, 0x40
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
if-ltz v1, :cond_46
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_46
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_4b
const-string v1, "<any realm>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2a
.end method