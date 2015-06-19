.class public Lcom/instagram/common/a/e/e;
.super Ljava/lang/Object;
.source "ResponseLogger.java"
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
.field private static final a:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/common/a/e/e;
sput-object v0, Lcom/instagram/common/a/e/e;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
if-eqz v0, :cond_13
sget-object v0, Lcom/instagram/common/a/e/e;->a:Ljava/lang/Class;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
:cond_13
return-void
.end method