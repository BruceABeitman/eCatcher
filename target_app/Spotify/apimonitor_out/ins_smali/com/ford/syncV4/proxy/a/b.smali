.class public final Lcom/ford/syncV4/proxy/a/b;
.super Lcom/ford/syncV4/proxy/a/a;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/Exception;
.method public constructor <init>()V
.registers 2
const-string v0, "OnProxyError"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/a/a;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
const-string v0, "OnProxyError"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/a/a;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/ford/syncV4/proxy/a/b;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/ford/syncV4/proxy/a/b;->b:Ljava/lang/Exception;
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/proxy/a/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/proxy/a/b;->b:Ljava/lang/Exception;
return-object v0
.end method