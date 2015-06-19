.class public final Lcom/instagram/share/b/g;
.super Ljava/lang/Object;
.source "FacebookPostingAccount.java"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/share/b/g;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/share/b/g;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/share/b/g;->a:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/b/g;->c:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/b/g;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/b/g;->a:Ljava/lang/String;
return-object v0
.end method