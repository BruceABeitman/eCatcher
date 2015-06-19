.class final Lcom/instagram/api/g/k;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "NetworkTraceCollector.java"
.field final synthetic a:Lcom/instagram/api/g/j;
.field private final b:Lcom/instagram/api/g/i;
.field private c:Z
.field private d:Ljava/io/InputStream;
.method public constructor <init>(Lcom/instagram/api/g/j;Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/api/g/i;)V
.registers 5
iput-object p1, p0, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
iput-object p3, p0, Lcom/instagram/api/g/k;->b:Lcom/instagram/api/g/i;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z
return-void
.end method
.method static synthetic a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/k;->b:Lcom/instagram/api/g/i;
return-object v0
.end method
.method public final getContent()Ljava/io/InputStream;
.registers 3
iget-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z
if-nez v0, :cond_14
invoke-super {p0}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;
move-result-object v0
if-eqz v0, :cond_11
new-instance v1, Lcom/instagram/api/g/l;
invoke-direct {v1, p0, v0}, Lcom/instagram/api/g/l;-><init>(Lcom/instagram/api/g/k;Ljava/io/InputStream;)V
iput-object v1, p0, Lcom/instagram/api/g/k;->d:Ljava/io/InputStream;
:cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z
:cond_14
iget-object v0, p0, Lcom/instagram/api/g/k;->d:Ljava/io/InputStream;
return-object v0
.end method