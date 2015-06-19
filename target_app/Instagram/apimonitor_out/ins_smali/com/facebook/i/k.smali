.class public final Lcom/facebook/i/k;
.super Ljava/lang/Object;
.source "Phonemetadata.java"
.implements Ljava/io/Externalizable;
.field private a:Z
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/k;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/k;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/k;->f:Ljava/lang/String;
return-void
.end method
.method private a(Ljava/lang/String;)Lcom/facebook/i/k;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/k;->a:Z
iput-object p1, p0, Lcom/facebook/i/k;->b:Ljava/lang/String;
return-object p0
.end method
.method private b(Ljava/lang/String;)Lcom/facebook/i/k;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/k;->c:Z
iput-object p1, p0, Lcom/facebook/i/k;->d:Ljava/lang/String;
return-object p0
.end method
.method private c(Ljava/lang/String;)Lcom/facebook/i/k;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/k;->e:Z
iput-object p1, p0, Lcom/facebook/i/k;->f:Ljava/lang/String;
return-object p0
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/k;->a:Z
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/i/k;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/i/k;->d:Ljava/lang/String;
return-object v0
.end method
.method public final readExternal(Ljava/io/ObjectInput;)V
.registers 3
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_d
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/k;->a(Ljava/lang/String;)Lcom/facebook/i/k;
:cond_d
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/k;->b(Ljava/lang/String;)Lcom/facebook/i/k;
:cond_1a
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/k;->c(Ljava/lang/String;)Lcom/facebook/i/k;
:cond_27
return-void
.end method
.method public final writeExternal(Ljava/io/ObjectOutput;)V
.registers 3
iget-boolean v0, p0, Lcom/facebook/i/k;->a:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v0, p0, Lcom/facebook/i/k;->a:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/i/k;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
:cond_e
iget-boolean v0, p0, Lcom/facebook/i/k;->c:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v0, p0, Lcom/facebook/i/k;->c:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/facebook/i/k;->d:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
:cond_1c
iget-boolean v0, p0, Lcom/facebook/i/k;->e:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v0, p0, Lcom/facebook/i/k;->e:Z
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/facebook/i/k;->f:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
:cond_2a
return-void
.end method