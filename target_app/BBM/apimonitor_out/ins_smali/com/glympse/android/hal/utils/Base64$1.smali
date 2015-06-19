.class final Lcom/glympse/android/hal/utils/Base64$1;
.super Ljava/io/ObjectInputStream;
.source "Base64.java"
.field final synthetic gq:Ljava/lang/ClassLoader;
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
.registers 3
iput-object p2, p0, Lcom/glympse/android/hal/utils/Base64$1;->gq:Ljava/lang/ClassLoader;
invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public final resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
.registers 5
invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/glympse/android/hal/utils/Base64$1;->gq:Ljava/lang/ClassLoader;
invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
move-result-object v0
if-nez v0, :cond_11
invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
move-result-object v0
:cond_11
return-object v0
.end method