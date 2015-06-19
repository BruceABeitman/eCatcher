.class final Lch/boye/httpclientandroidlib/impl/cookie/DateUtils$DateFormatHolder$1;
.super Ljava/lang/ThreadLocal;
.source "DateUtils.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils$DateFormatHolder$1;->initialValue()Ljava/lang/ref/SoftReference;
move-result-object v0
return-object v0
.end method
.method protected final initialValue()Ljava/lang/ref/SoftReference;
.registers 3
new-instance v0, Ljava/lang/ref/SoftReference;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
return-object v0
.end method