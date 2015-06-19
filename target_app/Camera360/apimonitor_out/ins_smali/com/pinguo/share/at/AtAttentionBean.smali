.class public Lcom/pinguo/share/at/AtAttentionBean;
.super Ljava/lang/Object;
.source "AtAttentionBean.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x7cL
.field private at:Ljava/lang/String;
.field private defHead:I
.field private groupType:Ljava/lang/String;
.field private head:Ljava/lang/String;
.field private isSelected:Z
.field private isTag:Z
.field private name:Ljava/lang/String;
.field private site:Ljava/lang/String;
.field private uid:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->isTag:Z
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v3, p1, Lcom/pinguo/share/at/AtAttentionBean;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Lcom/pinguo/share/at/AtAttentionBean;
iget-object v3, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
if-eqz v3, :cond_1e
iget-object v3, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_1c
move v1, v2
goto :goto_4
:cond_1e
iget-object v3, v0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_1c
.end method
.method public getAt()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->at:Ljava/lang/String;
return-object v0
.end method
.method public getDefHead()I
.registers 2
iget v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->defHead:I
return v0
.end method
.method public getGroupType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->groupType:Ljava/lang/String;
return-object v0
.end method
.method public getHead()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->head:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->name:Ljava/lang/String;
return-object v0
.end method
.method public getSite()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->site:Ljava/lang/String;
return-object v0
.end method
.method public getUid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isSelected()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->isSelected:Z
return v0
.end method
.method public isTag()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/at/AtAttentionBean;->isTag:Z
return v0
.end method
.method public setAt(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->at:Ljava/lang/String;
return-void
.end method
.method public setDefHead(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->defHead:I
return-void
.end method
.method public setGroupType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->groupType:Ljava/lang/String;
return-void
.end method
.method public setHead(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->head:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->name:Ljava/lang/String;
return-void
.end method
.method public setSelected(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->isSelected:Z
return-void
.end method
.method public setSite(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->site:Ljava/lang/String;
return-void
.end method
.method public setTag(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->isTag:Z
return-void
.end method
.method public setUid(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtAttentionBean;->uid:Ljava/lang/String;
return-void
.end method