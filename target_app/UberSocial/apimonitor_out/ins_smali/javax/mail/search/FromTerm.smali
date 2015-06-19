.class public final Ljavax/mail/search/FromTerm;
.super Ljavax/mail/search/AddressTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x485e7192407c3469L
.method public constructor <init>(Ljavax/mail/Address;)V
.registers 2
invoke-direct {p0, p1}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljavax/mail/search/FromTerm;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public match(Ljavax/mail/Message;)Z
.registers 6
const/4 v1, 0x0
:try_start_1
invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;
:try_end_4
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_19
move-result-object v2
if-nez v2, :cond_8
:cond_7
:goto_7
return v1
:cond_8
move v0, v1
:goto_9
array-length v3, v2
if-ge v0, v3, :cond_7
aget-object v3, v2, v0
invoke-super {p0, v3}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z
move-result v3
if-eqz v3, :cond_16
const/4 v1, 0x1
goto :goto_7
:cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_9
:catch_19
move-exception v0
goto :goto_7
.end method