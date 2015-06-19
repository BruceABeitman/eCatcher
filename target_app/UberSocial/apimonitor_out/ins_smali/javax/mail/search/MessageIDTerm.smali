.class public final Ljavax/mail/search/MessageIDTerm;
.super Ljavax/mail/search/StringTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x1d6fa5d7f4941c7bL
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public match(Ljavax/mail/Message;)Z
.registers 6
const/4 v1, 0x0
:try_start_1
const-string v0, "Message-ID"
invoke-virtual {p1, v0}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1b
move-result-object v2
if-nez v2, :cond_a
:goto_9
:cond_9
return v1
:cond_a
move v0, v1
:goto_b
array-length v3, v2
if-ge v0, v3, :cond_9
aget-object v3, v2, v0
invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_18
const/4 v1, 0x1
goto :goto_9
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_b
:catch_1b
move-exception v0
goto :goto_9
.end method