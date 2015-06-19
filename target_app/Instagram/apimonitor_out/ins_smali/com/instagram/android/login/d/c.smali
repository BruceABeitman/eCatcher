.class final Lcom/instagram/android/login/d/c;
.super Lcom/instagram/api/k/a/c;
.source "LogoutTask.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/d/c;-><init>()V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 2
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "accounts/logout/"
return-object v0
.end method