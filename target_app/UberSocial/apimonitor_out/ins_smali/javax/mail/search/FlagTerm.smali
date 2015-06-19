.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x1fc02030d671737L
.field protected flags:Ljavax/mail/Flags;
.field protected set:Z
.method public constructor <init>(Ljavax/mail/Flags;Z)V
.registers 3
invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V
iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljavax/mail/search/FlagTerm;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Ljavax/mail/search/FlagTerm;
iget-boolean v1, p1, Ljavax/mail/search/FlagTerm;->set:Z
iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z
if-ne v1, v2, :cond_5
iget-object v1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v1, v2}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public getFlags()Ljavax/mail/Flags;
.registers 2
iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
return-object v0
.end method
.method public getTestSet()Z
.registers 2
iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z
return v0
.end method
.method public hashCode()I
.registers 2
iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I
move-result v0
xor-int/lit8 v0, v0, -0x1
goto :goto_a
.end method
.method public match(Ljavax/mail/Message;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
:try_start_2
invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;
move-result-object v3
iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z
if-eqz v2, :cond_15
iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v3, v2}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z
move-result v2
if-eqz v2, :cond_13
:cond_12
:goto_12
return v0
:cond_13
move v0, v1
goto :goto_12
:cond_15
iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v2}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;
move-result-object v4
move v2, v1
:goto_1c
array-length v5, v4
if-lt v2, v5, :cond_33
iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;
invoke-virtual {v2}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;
move-result-object v4
move v2, v1
:goto_26
array-length v5, v4
if-ge v2, v5, :cond_12
aget-object v5, v4, v2
invoke-virtual {v3, v5}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_40
move v0, v1
goto :goto_12
:cond_33
aget-object v5, v4, v2
invoke-virtual {v3, v5}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
:try_end_38
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_43
move-result v5
if-eqz v5, :cond_3d
move v0, v1
goto :goto_12
:cond_3d
add-int/lit8 v2, v2, 0x1
goto :goto_1c
:cond_40
add-int/lit8 v2, v2, 0x1
goto :goto_26
:catch_43
move-exception v0
move v0, v1
goto :goto_12
.end method