.class  Lcom/github/kevinsawicki/HttpRequest$3;
.super Ljava/lang/Object;
.source "HttpRequest.java"
.implements Ljava/security/PrivilegedAction;
.field private final synthetic val$name:Ljava/lang/String;
.field private final synthetic val$value:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$3;->val$name:Ljava/lang/String;
iput-object p2, p0, Lcom/github/kevinsawicki/HttpRequest$3;->val$value:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic run()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$3;->run()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public run()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$3;->val$name:Ljava/lang/String;
iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest$3;->val$value:Ljava/lang/String;
invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method