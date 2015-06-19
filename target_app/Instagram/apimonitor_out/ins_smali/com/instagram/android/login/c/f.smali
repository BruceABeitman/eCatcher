.class public final Lcom/instagram/android/login/c/f;
.super Ljava/lang/Object;
.source "FacebookVerifyAccessTokenRequest.java"
.field private a:Lcom/instagram/user/c/a;
.field private b:Ljava/lang/String;
.method public constructor <init>(Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/login/c/f;->a:Lcom/instagram/user/c/a;
iput-object p2, p0, Lcom/instagram/android/login/c/f;->b:Ljava/lang/String;
return-void
.end method
.method public final a()Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/c/f;->a:Lcom/instagram/user/c/a;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/c/f;->b:Ljava/lang/String;
return-object v0
.end method