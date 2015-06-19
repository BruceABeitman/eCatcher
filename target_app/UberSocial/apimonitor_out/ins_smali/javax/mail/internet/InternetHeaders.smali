.class public Ljavax/mail/internet/InternetHeaders;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected headers:Ljava/util/List;
.method public constructor <init>()V
.registers 5
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
const/16 v1, 0x28
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Return-Path"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Received"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-Date"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-From"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-Sender"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-To"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-Cc"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-Bcc"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Resent-Message-Id"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Date"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "From"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Sender"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Reply-To"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "To"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Cc"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Bcc"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Message-Id"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "In-Reply-To"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "References"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Subject"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Comments"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Keywords"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Errors-To"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "MIME-Version"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Content-Type"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Content-Transfer-Encoding"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Content-MD5"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, ":"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Content-Length"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
const-string v2, "Status"
invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
const/16 v1, 0x28
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V
return-void
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const-string v2, "Received"
invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_30
const-string v2, "Return-Path"
invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_30
move v3, v0
:goto_18
if-eqz v3, :cond_65
:goto_1a
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v2, v1, -0x1
move v1, v0
:goto_23
if-gez v2, :cond_33
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-direct {v2, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:goto_2f
return-void
:cond_30
const/4 v2, 0x1
move v3, v2
goto :goto_18
:cond_33
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_48
if-eqz v3, :cond_58
move v1, v2
:cond_48
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v0
const-string v4, ":"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
move v1, v2
:cond_55
add-int/lit8 v2, v2, -0x1
goto :goto_23
:cond_58
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
add-int/lit8 v1, v2, 0x1
new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-direct {v2, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_2f
:cond_65
move v0, v1
goto :goto_1a
.end method
.method public addHeaderLine(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x20
if-eq v0, v1, :cond_d
const/16 v1, 0x9
if-ne v0, v1, :cond_39
:cond_d
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
iget-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "\r\n"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
:goto_38
return-void
:cond_39
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_43
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_43} :catch_44
.catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_43} :catch_46
goto :goto_38
:catch_44
move-exception v0
goto :goto_38
:catch_46
move-exception v0
goto :goto_38
.end method
.method public getAllHeaderLines()Ljava/util/Enumeration;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getAllHeaders()Ljava/util/Enumeration;
.registers 5
const/4 v3, 0x0
new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
const/4 v2, 0x0
invoke-direct {v0, v1, v2, v3, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
return-object v0
.end method
.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x1
const/4 v3, 0x0
invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
array-length v2, v1
if-eq v2, v0, :cond_f
if-nez p2, :cond_12
:cond_f
aget-object v0, v1, v3
goto :goto_9
:cond_12
new-instance v2, Ljava/lang/StringBuffer;
aget-object v3, v1, v3
invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
:goto_19
array-length v3, v1
if-lt v0, v3, :cond_21
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_9
:cond_21
invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aget-object v3, v1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_19
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 6
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_19
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_35
const/4 v0, 0x0
:goto_18
return-object v0
:cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_b
iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
if-eqz v3, :cond_b
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_35
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
goto :goto_18
.end method
.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 5
const/4 v2, 0x1
new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-direct {v0, v1, p1, v2, v2}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
return-object v0
.end method
.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 6
new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v0, v1, p1, v2, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
return-object v0
.end method
.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 6
new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {v0, v1, p1, v2, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
return-object v0
.end method
.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
.registers 5
const/4 v2, 0x0
new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-direct {v0, v1, p1, v2, v2}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
return-object v0
.end method
.method public load(Ljava/io/InputStream;)V
.registers 8
const/4 v1, 0x0
new-instance v3, Lcom/sun/mail/util/LineInputStream;
invoke-direct {v3, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
move-object v0, v1
:cond_c
:try_start_c
invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_39
const-string v5, " "
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_22
const-string v5, "\t"
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_39
:cond_22
if-eqz v0, :cond_28
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object v0, v1
:cond_28
const-string v5, "\r\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_30
if-eqz v2, :cond_38
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-gtz v2, :cond_c
:cond_38
return-void
:cond_39
if-eqz v0, :cond_40
invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V
:goto_3e
:cond_3e
move-object v0, v2
goto :goto_30
:cond_40
invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_3e
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V
:try_end_51
.catch Ljava/io/IOException; {:try_start_c .. :try_end_51} :catch_52
goto :goto_3e
:catch_52
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "Error in input stream"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt v1, v0, :cond_b
return-void
:cond_b
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_20
const/4 v2, 0x0
iput-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
:cond_20
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v2, 0x0
move v1, v2
move v3, v2
:goto_3
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt v1, v0, :cond_11
if-nez v3, :cond_10
invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_10
return-void
:cond_11
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_80
if-nez v3, :cond_76
iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
if-eqz v3, :cond_5c
iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
const/16 v4, 0x3a
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I
move-result v3
if-ltz v3, :cond_5c
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
add-int/lit8 v3, v3, 0x1
invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, " "
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
:goto_54
const/4 v3, 0x1
move v0, v1
move v1, v3
:goto_57
add-int/lit8 v0, v0, 0x1
move v3, v1
move v1, v0
goto :goto_3
:cond_5c
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
goto :goto_54
:cond_76
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
add-int/lit8 v1, v1, -0x1
move v0, v1
move v1, v3
goto :goto_57
:cond_80
move v0, v1
move v1, v3
goto :goto_57
.end method