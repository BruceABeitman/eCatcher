.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.field private static final ANSWERED_BIT:I = 0x1
.field private static final DELETED_BIT:I = 0x2
.field private static final DRAFT_BIT:I = 0x4
.field private static final FLAGGED_BIT:I = 0x8
.field private static final RECENT_BIT:I = 0x10
.field private static final SEEN_BIT:I = 0x20
.field private static final USER_BIT:I = -0x80000000
.field private static final serialVersionUID:J = 0x56a5b06539097bc4L
.field private system_flags:I
.field private user_flags:Ljava/util/Hashtable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Hashtable;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
#getter for: Ljavax/mail/Flags$Flag;->bit:I
invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
return-void
.end method
.method public constructor <init>(Ljavax/mail/Flags;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
iget v0, p1, Ljavax/mail/Flags;->system_flags:I
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v0, :cond_1b
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
:cond_1b
return-void
.end method
.method public add(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v0, :cond_c
new-instance v0, Ljava/util/Hashtable;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
:cond_c
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public add(Ljavax/mail/Flags$Flag;)V
.registers 4
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
#getter for: Ljavax/mail/Flags$Flag;->bit:I
invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
return-void
.end method
.method public add(Ljavax/mail/Flags;)V
.registers 6
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
iget v1, p1, Ljavax/mail/Flags;->system_flags:I
or-int/2addr v0, v1
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v0, :cond_23
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v0, :cond_17
new-instance v0, Ljava/util/Hashtable;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
:cond_17
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_24
:cond_23
return-void
:cond_24
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1d
.end method
.method public clone()Ljava/lang/Object;
.registers 3
const/4 v1, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
:try_end_7
.catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_19
move-object v1, v0
:goto_8
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v0, :cond_18
if-eqz v1, :cond_18
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
iput-object v0, v1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
:cond_18
return-object v1
:catch_19
move-exception v0
goto :goto_8
.end method
.method public contains(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public contains(Ljavax/mail/Flags$Flag;)Z
.registers 4
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
#getter for: Ljavax/mail/Flags$Flag;->bit:I
invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public contains(Ljavax/mail/Flags;)Z
.registers 6
const/4 v0, 0x0
iget v1, p1, Ljavax/mail/Flags;->system_flags:I
iget v2, p0, Ljavax/mail/Flags;->system_flags:I
and-int/2addr v1, v2
iget v2, p1, Ljavax/mail/Flags;->system_flags:I
if-eq v1, v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
iget-object v1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v1, :cond_1f
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v1, :cond_a
iget-object v1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:cond_19
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v2
if-nez v2, :cond_21
:cond_1f
const/4 v0, 0x1
goto :goto_a
:cond_21
iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_19
goto :goto_a
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Ljavax/mail/Flags;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
check-cast p1, Ljavax/mail/Flags;
iget v2, p1, Ljavax/mail/Flags;->system_flags:I
iget v3, p0, Ljavax/mail/Flags;->system_flags:I
if-ne v2, v3, :cond_6
iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v2, :cond_19
iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v2, :cond_19
move v0, v1
goto :goto_6
:cond_19
iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v2, :cond_6
iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v2, :cond_6
iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v2}, Ljava/util/Hashtable;->size()I
move-result v2
iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v3}, Ljava/util/Hashtable;->size()I
move-result v3
if-ne v2, v3, :cond_6
iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
:cond_35
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v3
if-nez v3, :cond_3d
move v0, v1
goto :goto_6
:cond_3d
iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_35
goto :goto_6
.end method
.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
.registers 4
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_10
sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_10
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x2
if-eqz v1, :cond_1b
sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_1b
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x4
if-eqz v1, :cond_26
sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_26
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_31
sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_31
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x10
if-eqz v1, :cond_3c
sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_3c
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
and-int/lit8 v1, v1, 0x20
if-eqz v1, :cond_47
sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_47
iget v1, p0, Ljavax/mail/Flags;->system_flags:I
const/high16 v2, -0x8000
and-int/2addr v1, v2
if-eqz v1, :cond_53
sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_53
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
new-array v1, v1, [Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v1
.end method
.method public getUserFlags()[Ljava/lang/String;
.registers 4
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v1, :cond_15
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v2
if-nez v2, :cond_1f
:cond_15
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v1
:cond_1f
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_f
.end method
.method public hashCode()I
.registers 4
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v1, :cond_21
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
move v1, v0
:goto_d
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_14
:goto_13
return v1
:cond_14
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_d
:cond_21
move v1, v0
goto :goto_13
.end method
.method public remove(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v0, :cond_f
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_f
return-void
.end method
.method public remove(Ljavax/mail/Flags$Flag;)V
.registers 4
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
#getter for: Ljavax/mail/Flags$Flag;->bit:I
invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
return-void
.end method
.method public remove(Ljavax/mail/Flags;)V
.registers 5
iget v0, p0, Ljavax/mail/Flags;->system_flags:I
iget v1, p1, Ljavax/mail/Flags;->system_flags:I
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Ljavax/mail/Flags;->system_flags:I
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-eqz v0, :cond_11
iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
if-nez v0, :cond_12
:cond_11
return-void
:cond_12
iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v0
:goto_18
invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;
invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_18
.end method