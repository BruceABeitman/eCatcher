.class  Lcom/glympse/android/hal/bg;
.super Ljava/lang/Object;
.source "Reflection.java"
.implements Ljava/lang/reflect/InvocationHandler;
.field private dP:Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;
.method public constructor <init>(Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/bg;->dP:Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;
return-void
.end method
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v2, 0x0
:try_start_1
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->N()Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/hal/bg;->dP:Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;
const/4 v1, 0x0
aget-object v1, p3, v1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;->createNdefMessage(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_14
return-object v0
:cond_15
iget-object v0, p0, Lcom/glympse/android/hal/bg;->dP:Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;
invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1a
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1c
move-result-object v0
goto :goto_14
:catch_1c
move-exception v0
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
const/4 v0, 0x0
goto :goto_14
.end method