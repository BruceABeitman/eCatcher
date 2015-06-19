.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private matchPart(Ljavax/mail/Part;)Z
.registers 7
const/4 v1, 0x0
:try_start_1
const-string v0, "text/*"
invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_13
move v0, v1
:goto_12
return v0
:cond_13
invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
move-result v0
goto :goto_12
:cond_18
const-string v0, "multipart/*"
invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Multipart;
invoke-virtual {v0}, Ljavax/mail/Multipart;->getCount()I
move-result v3
move v2, v1
:goto_2b
if-lt v2, v3, :cond_2f
:goto_2d
:cond_2d
move v0, v1
goto :goto_12
:cond_2f
invoke-virtual {v0, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
move-result-object v4
invoke-direct {p0, v4}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z
move-result v4
if-eqz v4, :cond_3b
const/4 v0, 0x1
goto :goto_12
:cond_3b
add-int/lit8 v2, v2, 0x1
goto :goto_2b
:cond_3e
const-string v0, "message/rfc822"
invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Part;
invoke-direct {p0, v0}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_51
move-result v0
goto :goto_12
:catch_51
move-exception v0
goto :goto_2d
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljavax/mail/search/BodyTerm;
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
.registers 3
invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z
move-result v0
return v0
.end method