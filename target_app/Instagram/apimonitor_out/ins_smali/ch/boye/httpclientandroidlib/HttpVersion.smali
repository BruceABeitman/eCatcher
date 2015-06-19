.class public final Lch/boye/httpclientandroidlib/HttpVersion;
.super Lch/boye/httpclientandroidlib/ProtocolVersion;
.source "HttpVersion.java"
.implements Ljava/io/Serializable;
.field public static final HTTP:Ljava/lang/String; = "HTTP"
.field public static final HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion; = null
.field public static final HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion; = null
.field public static final HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion; = null
.field private static final serialVersionUID:J = -0x514703574c384bf0L
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const/4 v2, 0x1
new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v1, 0x9
invoke-direct {v0, v3, v1}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V
sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;
new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;
invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V
sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;
invoke-direct {v0, v2, v2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V
sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
return-void
.end method
.method public constructor <init>(II)V
.registers 4
const-string v0, "HTTP"
invoke-direct {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;-><init>(Ljava/lang/String;II)V
return-void
.end method
.method public final forVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 5
const/4 v1, 0x1
iget v0, p0, Lch/boye/httpclientandroidlib/HttpVersion;->major:I
if-ne p1, v0, :cond_a
iget v0, p0, Lch/boye/httpclientandroidlib/HttpVersion;->minor:I
if-ne p2, v0, :cond_a
:goto_9
return-object p0
:cond_a
if-ne p1, v1, :cond_16
if-nez p2, :cond_11
sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
goto :goto_9
:cond_11
if-ne p2, v1, :cond_16
sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
goto :goto_9
:cond_16
if-nez p1, :cond_1f
const/16 v0, 0x9
if-ne p2, v0, :cond_1f
sget-object p0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;
goto :goto_9
:cond_1f
new-instance p0, Lch/boye/httpclientandroidlib/HttpVersion;
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V
goto :goto_9
.end method