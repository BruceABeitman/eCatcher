.class  Lcom/github/kevinsawicki/HttpRequest$4;
.super Ljava/lang/Object;
.source "HttpRequest.java"
.implements Ljava/security/PrivilegedAction;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$4;->val$name:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic run()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$4;->run()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public run()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$4;->val$name:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method