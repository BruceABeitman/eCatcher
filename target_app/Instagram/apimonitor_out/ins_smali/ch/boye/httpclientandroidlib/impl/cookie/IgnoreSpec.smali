.class public Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpec;
.super Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;
.source "IgnoreSpec.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;-><init>()V
return-void
.end method
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
.registers 3
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getVersion()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
.registers 4
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
return-object v0
.end method