.class public final Lcom/instagram/common/q/b/b;
.super Ljava/lang/Object;
.source "C2DMConstants.java"
.implements Lcom/instagram/common/q/b/e;
.field private static a:Lcom/instagram/common/q/b/e;
.field private final b:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/q/b/b;->b:Ljava/lang/String;
return-void
.end method
.method public static a()Lcom/instagram/common/q/b/e;
.registers 1
sget-object v0, Lcom/instagram/common/q/b/b;->a:Lcom/instagram/common/q/b/e;
return-object v0
.end method
.method public static a(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/instagram/common/q/b/b;->a:Lcom/instagram/common/q/b/e;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "C2DMConstants has already been initialized."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
new-instance v0, Lcom/instagram/common/q/b/b;
invoke-direct {v0, p0}, Lcom/instagram/common/q/b/b;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/common/q/b/b;->a:Lcom/instagram/common/q/b/e;
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.c2dm.intent.REGISTER"
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gsf"
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.c2dm.intent.RETRY"
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.c2dm.intent.RECEIVE"
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.c2dm.intent.REGISTRATION"
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/q/b/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public final h()Lcom/instagram/common/q/b/g;
.registers 2
sget-object v0, Lcom/instagram/common/q/b/g;->b:Lcom/instagram/common/q/b/g;
return-object v0
.end method