.class  Ljavax/mail/Session$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/mail/StreamLoader;
.field final synthetic this$0:Ljavax/mail/Session;
.method constructor <init>(Ljavax/mail/Session;)V
.registers 2
iput-object p1, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public load(Ljava/io/InputStream;)V
.registers 3
iget-object v0, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;
#calls: Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V
invoke-static {v0, p1}, Ljavax/mail/Session;->access$0(Ljavax/mail/Session;Ljava/io/InputStream;)V
return-void
.end method