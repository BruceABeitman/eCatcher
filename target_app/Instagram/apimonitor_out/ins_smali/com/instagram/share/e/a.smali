.class public abstract Lcom/instagram/share/e/a;
.super Ljava/lang/Object;
.source "OAuthAccount.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/share/e/a;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/share/e/a;->b:Ljava/lang/String;
return-void
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/e/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/e/a;->b:Ljava/lang/String;
return-object v0
.end method