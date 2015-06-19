.class public abstract Lcom/flurry/sdk/fc;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private static final a:Ljava/lang/String;
.field  g:Ljava/io/PrintStream;
.field  h:Ljava/io/PrintWriter;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/fc;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/fc;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract a()V
.end method
.method public final run()V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/flurry/sdk/fc;->a()V
:goto_3
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
iget-object v1, p0, Lcom/flurry/sdk/fc;->g:Ljava/io/PrintStream;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/flurry/sdk/fc;->g:Ljava/io/PrintStream;
invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
:goto_e
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/fc;->a:Ljava/lang/String;
const-string v3, ""
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3
:cond_17
iget-object v1, p0, Lcom/flurry/sdk/fc;->h:Ljava/io/PrintWriter;
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/flurry/sdk/fc;->h:Ljava/io/PrintWriter;
invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
goto :goto_e
:cond_21
invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_e
.end method