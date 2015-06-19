.class  Ljavax/mail/internet/InternetHeaders$matchEnum;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Enumeration;
.field private e:Ljava/util/Iterator;
.field private match:Z
.field private names:[Ljava/lang/String;
.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
.field private want_line:Z
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;
iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;
iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z
iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
return-void
.end method
.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
.registers 6
const/4 v1, 0x0
:cond_1
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_b
move-object v0, v1
:cond_a
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;
iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
if-eqz v2, :cond_1
iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;
if-nez v2, :cond_21
iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z
if-eqz v2, :cond_a
move-object v0, v1
goto :goto_a
:cond_21
const/4 v2, 0x0
:goto_22
iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;
array-length v3, v3
if-lt v2, v3, :cond_2c
iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z
if-nez v2, :cond_1
goto :goto_a
:cond_2c
iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;
aget-object v3, v3, v2
invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3f
iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z
if-eqz v2, :cond_1
goto :goto_a
:cond_3f
add-int/lit8 v2, v2, 0x1
goto :goto_22
.end method
.method public hasMoreElements()Z
.registers 2
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
if-nez v0, :cond_a
invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
:cond_a
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public nextElement()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
if-nez v0, :cond_a
invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
:cond_a
iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
if-nez v0, :cond_16
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "No more headers"
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;
iget-boolean v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z
if-eqz v0, :cond_22
iget-object v0, v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
:goto_21
return-object v0
:cond_22
new-instance v0, Ljavax/mail/Header;
invoke-virtual {v1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v2, v1}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
.end method