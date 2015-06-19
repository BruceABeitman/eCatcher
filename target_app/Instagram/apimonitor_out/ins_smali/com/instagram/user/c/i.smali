.class public final Lcom/instagram/user/c/i;
.super Ljava/lang/Object;
.source "UserStore.java"
.field private static a:Lcom/instagram/user/c/h;
.method public static a()Lcom/instagram/user/c/h;
.registers 1
sget-object v0, Lcom/instagram/user/c/i;->a:Lcom/instagram/user/c/h;
return-object v0
.end method
.method public static a(Lcom/instagram/user/c/h;)V
.registers 3
sget-object v0, Lcom/instagram/user/c/i;->a:Lcom/instagram/user/c/h;
if-eqz v0, :cond_10
sget-object v0, Lcom/instagram/user/c/i;->a:Lcom/instagram/user/c/h;
if-eq v0, p0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "UserStore no longer a singleton"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
sput-object p0, Lcom/instagram/user/c/i;->a:Lcom/instagram/user/c/h;
return-void
.end method