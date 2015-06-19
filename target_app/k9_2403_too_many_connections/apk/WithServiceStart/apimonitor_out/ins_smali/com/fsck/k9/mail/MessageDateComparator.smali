.class public Lcom/fsck/k9/mail/MessageDateComparator;
.super Ljava/lang/Object;
.source "MessageDateComparator.java"
.implements Ljava/util/Comparator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I
.registers 6
:try_start_0
invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v1
if-nez v1, :cond_8
const/4 v1, 0x1
:goto_7
return v1
:cond_8
invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v1
if-nez v1, :cond_10
const/4 v1, -0x1
goto :goto_7
:cond_10
invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v1
invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d
move-result v1
goto :goto_7
:catch_1d
move-exception v1
move-object v0, v1
const/4 v1, 0x0
goto :goto_7
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/fsck/k9/mail/Message;
check-cast p2, Lcom/fsck/k9/mail/Message;
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/MessageDateComparator;->compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I
move-result v0
return v0
.end method