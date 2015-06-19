.class public Lcom/bbm/util/g/a;
.super Lcom/a/a/d;
.source "BbmVCardEntry.java"
.field public d:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/a/a/d;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/util/g/a;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(ILandroid/accounts/Account;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/a/a/d;-><init>(ILandroid/accounts/Account;)V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/util/g/a;->d:Ljava/lang/String;
return-void
.end method
.method public final a(Lcom/a/a/ae;)V
.registers 4
invoke-super {p0, p1}, Lcom/a/a/d;->a(Lcom/a/a/ae;)V
iget-object v0, p1, Lcom/a/a/ae;->a:Ljava/lang/String;
const-string v1, "X-RIM-PIN"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p1, Lcom/a/a/ae;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/util/g/a;->d:Ljava/lang/String;
:cond_11
return-void
.end method