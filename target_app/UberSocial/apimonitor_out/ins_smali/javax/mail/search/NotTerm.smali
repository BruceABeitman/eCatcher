.class public final Ljavax/mail/search/NotTerm;
.super Ljavax/mail/search/SearchTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x63420cc8aadc1008L
.field protected term:Ljavax/mail/search/SearchTerm;
.method public constructor <init>(Ljavax/mail/search/SearchTerm;)V
.registers 2
invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V
iput-object p1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Ljavax/mail/search/NotTerm;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
check-cast p1, Ljavax/mail/search/NotTerm;
iget-object v0, p1, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
iget-object v1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public getTerm()Ljavax/mail/search/SearchTerm;
.registers 2
iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
shl-int/lit8 v0, v0, 0x1
return v0
.end method
.method public match(Ljavax/mail/Message;)Z
.registers 3
iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;
invoke-virtual {v0, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method