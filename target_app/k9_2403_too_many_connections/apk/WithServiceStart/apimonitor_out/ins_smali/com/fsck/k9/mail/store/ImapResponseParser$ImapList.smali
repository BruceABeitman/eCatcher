.class public Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.super Ljava/util/ArrayList;
.source "ImapResponseParser.java"
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
return-void
.end method
.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
.registers 5
:try_start_0
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
iget-object v1, v1, Lcom/fsck/k9/mail/store/ImapResponseParser;->mDateTimeFormat:Ljava/text/SimpleDateFormat;
monitor-enter v1
:try_start_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_13
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
iget-object v2, v2, Lcom/fsck/k9/mail/store/ImapResponseParser;->mDateTimeFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
monitor-exit v1
move-object v1, v2
:goto_f
return-object v1
:catchall_10
move-exception v2
monitor-exit v1
:try_end_12
.catchall {:try_start_5 .. :try_end_12} :catchall_10
:try_start_12
throw v2
:catch_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_13
move-exception v1
move-object v0, v1
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
iget-object v1, v1, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat:Ljava/text/SimpleDateFormat;
monitor-enter v1
:try_start_1a
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;
iget-object v2, v2, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
monitor-exit v1
move-object v1, v2
goto :goto_f
:catchall_25
move-exception v2
monitor-exit v1
:try_end_27
.catchall {:try_start_1a .. :try_end_27} :catchall_25
throw v2
.end method
.method public getDate(I)Ljava/util/Date;
.registers 5
:try_start_0
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_7
.catch Ljava/text/ParseException; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v1
return-object v1
:catch_9
move-exception v1
move-object v0, v1
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
const-string v2, "Unable to parse IMAP datetime"
invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;
.registers 6
:try_start_0
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_b
.catch Ljava/text/ParseException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v2
goto :goto_7
:catch_d
move-exception v2
move-object v0, v2
new-instance v2, Lcom/fsck/k9/mail/MessagingException;
const-string v3, "Unable to parse IMAP datetime"
invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method public getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
return-object p0
.end method
.method public getKeyedLiteral(Ljava/lang/Object;)Ljava/io/InputStream;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/io/InputStream;
return-object p0
.end method
.method public getKeyedNumber(Ljava/lang/Object;)I
.registers 3
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
return-object p0
.end method
.method public getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v0
:goto_5
if-ge v1, v0, :cond_1b
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
add-int/lit8 v2, v1, 0x1
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v2
:goto_17
return-object v2
:cond_18
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1b
const/4 v2, 0x0
goto :goto_17
.end method
.method public getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
return-object p0
.end method
.method public getLiteral(I)Ljava/io/InputStream;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/io/InputStream;
return-object p0
.end method
.method public getNumber(I)I
.registers 3
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getObject(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getString(I)Ljava/lang/String;
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
return-object p0
.end method