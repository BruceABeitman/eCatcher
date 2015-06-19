.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "SourceFile"
.field private headers:Ljava/util/Vector;
.field private specials:Ljava/util/Vector;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
return-void
.end method
.method public add(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
if-nez v0, :cond_b
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
:cond_b
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public add(Ljavax/mail/FetchProfile$Item;)V
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
if-nez v0, :cond_b
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
:cond_b
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public contains(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
if-eqz v0, :cond_e
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public contains(Ljavax/mail/FetchProfile$Item;)Z
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
if-eqz v0, :cond_e
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getHeaderNames()[Ljava/lang/String;
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
if-nez v0, :cond_8
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;
invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
goto :goto_7
.end method
.method public getItems()[Ljavax/mail/FetchProfile$Item;
.registers 3
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
if-nez v0, :cond_8
const/4 v0, 0x0
new-array v0, v0, [Ljavax/mail/FetchProfile$Item;
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljavax/mail/FetchProfile$Item;
iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;
invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
goto :goto_7
.end method