.class public final Lcom/facebook/i/h;
.super Ljava/lang/Object;
.source "Phonemetadata.java"
.implements Ljava/io/Externalizable;
.field private a:Z
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Ljava/lang/String;
.field private e:Ljava/util/List;
.field private f:Z
.field private g:Ljava/lang/String;
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/h;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/h;->d:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/i/h;->e:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/h;->g:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/i/h;->i:Z
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/h;->k:Ljava/lang/String;
return-void
.end method
.method private a()I
.registers 2
iget-object v0, p0, Lcom/facebook/i/h;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method private a(Ljava/lang/String;)Lcom/facebook/i/h;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/h;->a:Z
iput-object p1, p0, Lcom/facebook/i/h;->b:Ljava/lang/String;
return-object p0
.end method
.method private a(Z)Lcom/facebook/i/h;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/h;->h:Z
iput-boolean p1, p0, Lcom/facebook/i/h;->i:Z
return-object p0
.end method
.method private b(Ljava/lang/String;)Lcom/facebook/i/h;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/h;->c:Z
iput-object p1, p0, Lcom/facebook/i/h;->d:Ljava/lang/String;
return-object p0
.end method
.method private c(Ljava/lang/String;)Lcom/facebook/i/h;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/h;->f:Z
iput-object p1, p0, Lcom/facebook/i/h;->g:Ljava/lang/String;
return-object p0
.end method
.method private d(Ljava/lang/String;)Lcom/facebook/i/h;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/h;->j:Z
iput-object p1, p0, Lcom/facebook/i/h;->k:Ljava/lang/String;
return-object p0
.end method
.method public final readExternal(Ljava/io/ObjectInput;)V
.registers 6
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/h;->a(Ljava/lang/String;)Lcom/facebook/i/h;
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/h;->b(Ljava/lang/String;)Lcom/facebook/i/h;
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v1
const/4 v0, 0x0
:goto_13
if-ge v0, v1, :cond_21
iget-object v2, p0, Lcom/facebook/i/h;->e:Ljava/util/List;
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_21
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/h;->c(Ljava/lang/String;)Lcom/facebook/i/h;
:cond_2e
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
if-eqz v0, :cond_3b
invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/i/h;->d(Ljava/lang/String;)Lcom/facebook/i/h;
:cond_3b
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
invoke-direct {p0, v0}, Lcom/facebook/i/h;->a(Z)Lcom/facebook/i/h;
return-void
.end method
.method public final writeExternal(Ljava/io/ObjectOutput;)V
.registers 5
iget-object v0, p0, Lcom/facebook/i/h;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/i/h;->d:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/i/h;->a()I
move-result v2
invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V
const/4 v0, 0x0
move v1, v0
:goto_13
if-ge v1, v2, :cond_24
iget-object v0, p0, Lcom/facebook/i/h;->e:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_24
iget-boolean v0, p0, Lcom/facebook/i/h;->f:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v0, p0, Lcom/facebook/i/h;->f:Z
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/facebook/i/h;->g:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
:cond_32
iget-boolean v0, p0, Lcom/facebook/i/h;->j:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
iget-boolean v0, p0, Lcom/facebook/i/h;->j:Z
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/facebook/i/h;->k:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V
:cond_40
iget-boolean v0, p0, Lcom/facebook/i/h;->i:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
return-void
.end method