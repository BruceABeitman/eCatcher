.class  Lorg/apache/log4j/k;
.super Ljava/io/OutputStream;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
return-void
.end method
.method public close()V
.registers 1
return-void
.end method
.method public flush()V
.registers 2
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
return-void
.end method
.method public write(I)V
.registers 3
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write(I)V
return-void
.end method
.method public write([B)V
.registers 3
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write([B)V
return-void
.end method
.method public write([BII)V
.registers 5
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintStream;->write([BII)V
return-void
.end method