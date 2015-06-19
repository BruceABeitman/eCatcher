.class public Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Ljava/lang/Comparable;
.field public account:Lcom/fsck/k9/Account;
.field public answered:Z
.field public compareCounterparty:Ljava/lang/String;
.field public compareDate:Ljava/util/Date;
.field public compareSubject:Ljava/lang/String;
.field public date:Ljava/lang/String;
.field public downloaded:Z
.field public flagged:Z
.field public folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
.field public hasAttachments:Z
.field public message:Lcom/fsck/k9/mail/Message;
.field public partially_downloaded:Z
.field  pattern:Ljava/util/regex/Pattern;
.field  patternString:Ljava/lang/String;
.field public preview:Ljava/lang/String;
.field public read:Z
.field public recipients:[Ljava/lang/String;
.field public selected:Z
.field public sender:Ljava/lang/String;
.field public subject:Ljava/lang/String;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.field public uid:Ljava/lang/String;
.method public constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->pattern:Ljava/util/regex/Pattern;
const-string v0, "^ *(re|aw|fw|fwd): *"
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->patternString:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V
.registers 6
invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;)V
new-instance v0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;
move-result-object v1
invoke-direct {v0, p1, v1, p3}, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
invoke-virtual {p0, p2, v0, p3}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;Lcom/fsck/k9/Account;)V
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;Lcom/fsck/k9/Account;)V
.registers 5
invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;)V
invoke-virtual {p0, p2, p3, p4}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;Lcom/fsck/k9/Account;)V
return-void
.end method
.method private stripPrefixes(Ljava/lang/String;)Ljava/lang/String;
.registers 7
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->patternString:Ljava/lang/String;
monitor-enter v2
:try_start_3
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->pattern:Ljava/util/regex/Pattern;
if-nez v3, :cond_10
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->patternString:Ljava/lang/String;
const/4 v4, 0x2
invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v3
iput-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->pattern:Ljava/util/regex/Pattern;
:cond_10
monitor-exit v2
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_23
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->pattern:Ljava/util/regex/Pattern;
invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const/4 v0, -0x1
:goto_18
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_26
invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I
move-result v0
goto :goto_18
:catchall_23
move-exception v3
:try_start_24
monitor-exit v2
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_23
throw v3
:cond_26
const/4 v2, -0x1
if-le v0, v2, :cond_36
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
const/4 v3, 0x1
sub-int/2addr v2, v3
if-ge v0, v2, :cond_36
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:goto_35
return-object v2
:cond_36
move-object v2, p1
goto :goto_35
.end method
.method public compareTo(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)I
.registers 10
const/4 v7, -0x1
const/4 v6, 0x0
const/4 v5, 0x1
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortAscending:Z
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2600(Lcom/fsck/k9/activity/MessageList;)Z
move-result v3
if-eqz v3, :cond_44
move v0, v5
:goto_c
const/4 v1, 0x0
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
move-result-object v3
sget-object v4, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
if-ne v3, v4, :cond_46
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
if-nez v3, :cond_27
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->subject:Ljava/lang/String;
invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->stripPrefixes(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
:cond_27
iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
if-nez v3, :cond_37
iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->subject:Ljava/lang/String;
invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->stripPrefixes(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
iput-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
:cond_37
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareSubject:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
:goto_3f
:cond_3f
if-eqz v1, :cond_b2
mul-int v3, v1, v0
:goto_43
return v3
:cond_44
move v0, v7
goto :goto_c
:cond_46
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
move-result-object v3
sget-object v4, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/MessagingController$SORT_TYPE;
if-ne v3, v4, :cond_61
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
goto :goto_3f
:cond_61
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
move-result-object v3
sget-object v4, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/MessagingController$SORT_TYPE;
if-ne v3, v4, :cond_7c
iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z
if-eqz v3, :cond_78
move v3, v6
:goto_70
iget-boolean v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z
if-eqz v4, :cond_7a
move v4, v6
:goto_75
sub-int v1, v3, v4
goto :goto_3f
:cond_78
move v3, v5
goto :goto_70
:cond_7a
move v4, v5
goto :goto_75
:cond_7c
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
move-result-object v3
sget-object v4, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/MessagingController$SORT_TYPE;
if-ne v3, v4, :cond_97
iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
if-eqz v3, :cond_93
move v3, v5
:goto_8b
iget-boolean v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
if-eqz v4, :cond_95
move v4, v5
:goto_90
sub-int v1, v3, v4
goto :goto_3f
:cond_93
move v3, v6
goto :goto_8b
:cond_95
move v4, v6
goto :goto_90
:cond_97
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
move-result-object v3
sget-object v4, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
if-ne v3, v4, :cond_3f
iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->hasAttachments:Z
if-eqz v3, :cond_ae
move v3, v6
:goto_a6
iget-boolean v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->hasAttachments:Z
if-eqz v4, :cond_b0
move v4, v6
:goto_ab
sub-int v1, v3, v4
goto :goto_3f
:cond_ae
move v3, v5
goto :goto_a6
:cond_b0
move v4, v5
goto :goto_ab
:cond_b2
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$2800(Lcom/fsck/k9/activity/MessageList;)Z
move-result v3
if-eqz v3, :cond_c6
move v2, v5
:goto_bb
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareDate:Ljava/util/Date;
iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareDate:Ljava/util/Date;
invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
move-result v3
mul-int/2addr v3, v2
goto/16 :goto_43
:cond_c6
move v2, v7
goto :goto_bb
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareTo(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;
check-cast p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;Lcom/fsck/k9/Account;)V
.registers 12
const/4 v6, 0x1
const/4 v5, 0x0
:try_start_2
move-object v0, p1
check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
move-object v3, v0
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareDate:Ljava/util/Date;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v2}, Lcom/fsck/k9/Utility;->isDateToday(Ljava/util/Date;)Z
move-result v4
if-eqz v4, :cond_9b
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageList;->getTimeFormat()Ljava/text/DateFormat;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->date:Ljava/lang/String;
:goto_20
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getAttachmentCount()I
move-result v4
if-lez v4, :cond_ab
move v4, v6
:goto_27
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->hasAttachments:Z
sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
sget-object v4, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->answered:Z
sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z
sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->downloaded:Z
sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->partially_downloaded:Z
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;
move-result-object v1
array-length v4, v1
if-lez v4, :cond_ae
const/4 v4, 0x0
aget-object v4, v1, v4
invoke-virtual {p3, v4}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z
move-result v4
if-eqz v4, :cond_ae
sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
move-result-object v4
invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v5, 0x7f08008d
invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
:goto_84
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->subject:Ljava/lang/String;
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;
iput-object p3, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getPreview()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->preview:Ljava/lang/String;
:goto_9a
return-void
:cond_9b
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageList;->getDateFormat()Ljava/text/DateFormat;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->date:Ljava/lang/String;
goto/16 :goto_20
:catch_a9
move-exception v4
goto :goto_9a
:cond_ab
move v4, v5
goto/16 :goto_27
:cond_ae
invoke-static {v1}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
iput-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
:try_end_b8
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_b8} :catch_a9
goto :goto_84
.end method