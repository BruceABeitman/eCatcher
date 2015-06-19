.class  Ljavax/mail/Session$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/security/PrivilegedExceptionAction;
.field private final synthetic val$c:Ljava/lang/Class;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Ljavax/mail/Session$4;->val$c:Ljava/lang/Class;
iput-object p2, p0, Ljavax/mail/Session$4;->val$name:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Ljavax/mail/Session$4;->val$c:Ljava/lang/Class;
iget-object v1, p0, Ljavax/mail/Session$4;->val$name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method