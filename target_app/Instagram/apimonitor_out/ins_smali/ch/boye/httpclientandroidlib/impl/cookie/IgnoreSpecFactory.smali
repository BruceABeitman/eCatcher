.class public Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/cookie/CookieSpec;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpec;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpec;-><init>()V
return-object v0
.end method