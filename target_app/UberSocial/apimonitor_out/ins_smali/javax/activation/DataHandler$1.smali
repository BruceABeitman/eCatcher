.class  Ljavax/activation/DataHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Ljavax/activation/DataHandler;
.field private final synthetic val$fdch:Ljavax/activation/DataContentHandler;
.field private final synthetic val$pos:Ljava/io/PipedOutputStream;
.method constructor <init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V
.registers 4
iput-object p1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;
iput-object p2, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;
iput-object p3, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;
iget-object v1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;
#getter for: Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
invoke-static {v1}, Ljavax/activation/DataHandler;->access$0(Ljavax/activation/DataHandler;)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;
#getter for: Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
invoke-static {v2}, Ljavax/activation/DataHandler;->access$1(Ljavax/activation/DataHandler;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;
invoke-interface {v0, v1, v2, v3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
:try_start_13
:try_end_13
.catchall {:try_start_0 .. :try_end_13} :catchall_22
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_19
iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;
invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_29
return-void
:catch_19
move-exception v0
:try_start_1a
iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;
invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
:try_end_1f
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20
goto :goto_18
:catch_20
move-exception v0
goto :goto_18
:catchall_22
move-exception v0
:try_start_23
iget-object v1, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;
invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
:goto_28
:try_end_28
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_2b
throw v0
:catch_29
move-exception v0
goto :goto_18
:catch_2b
move-exception v1
goto :goto_28
.end method