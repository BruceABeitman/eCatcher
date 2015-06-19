.class  Ljavax/activation/SecuritySupport$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/security/PrivilegedExceptionAction;
.field private final synthetic val$url:Ljava/net/URL;
.method constructor <init>(Ljava/net/URL;)V
.registers 2
iput-object p1, p0, Ljavax/activation/SecuritySupport$5;->val$url:Ljava/net/URL;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Ljavax/activation/SecuritySupport$5;->val$url:Ljava/net/URL;
invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method