.class final Lcom/instagram/common/a/c/c;
.super Ljava/lang/Object;
.source "RequestParams.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/instagram/common/a/c/b;
.method constructor <init>(Lcom/instagram/common/a/c/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/a/c/c;->a:Lcom/instagram/common/a/c/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lch/boye/httpclientandroidlib/NameValuePair;Lch/boye/httpclientandroidlib/NameValuePair;)I
.registers 4
invoke-interface {p0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lch/boye/httpclientandroidlib/NameValuePair;
check-cast p2, Lch/boye/httpclientandroidlib/NameValuePair;
invoke-static {p1, p2}, Lcom/instagram/common/a/c/c;->a(Lch/boye/httpclientandroidlib/NameValuePair;Lch/boye/httpclientandroidlib/NameValuePair;)I
move-result v0
return v0
.end method