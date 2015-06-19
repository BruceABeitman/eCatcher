.class public abstract Ljavax/mail/search/AddressStringTerm;
.super Ljavax/mail/search/StringTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x2ad6978ecdebb490L
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;Z)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljavax/mail/search/AddressStringTerm;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method protected match(Ljavax/mail/Address;)Z
.registers 3
instance-of v0, p1, Ljavax/mail/internet/InternetAddress;
if-eqz v0, :cond_f
check-cast p1, Ljavax/mail/internet/InternetAddress;
invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->toUnicodeString()Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
move-result v0
goto :goto_e
.end method